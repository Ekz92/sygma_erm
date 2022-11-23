unit UClotureDay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.FMTBcd, Data.DB,
  Data.SqlExpr;

type
  TfrmClotureDay = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edlogin: TEdit;
    edpwd: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edpwdKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmClotureDay: TfrmClotureDay;

implementation

{$R *.dfm}

uses records, UDM, UIntegrateur;

procedure TfrmClotureDay.Button1Click(Sender: TObject);
var
  RUser : TSQLQuery;
  Conn : integer;
  Sqlup,SqlCaisses,SqlCaisse,SqlInit :string;
  Caisses : TCaisseArray;
  Caisse : TCaisse;
  Cat_cais : TCatalogueCaisse;
  I: Integer;
  vDate_fin : string;

  stocks : TStockArray;
  sqlSelStk,
  sqlInsertStk : string;
  Cat_stock,Sel_Cat_stock : TCatalogueStock;
  sqlSelCatStock,sqlUpCat : string;

  SysDate : TDateTime;
  dd:TDateSys;
  SqlUpDate,
  SqlDiagram,
  SqlDiagram_mntT,SqlDiagram_mntP,SqlDiagram_mntR ,
  PsqlDiagramDay, PsqlCumulBC,DelDiagramDay,Del,
  PsqlDiagramDayFact: string;

  DiagramDayBC,CumulBC : TDiagramDayBC;
  DiagramDayFact : TDiagramDayFact;

  code_art : string;
  Article : TArticle;

  StkCam : TStockCamionArray;
  StockGene : TStockGene;
  StockDepot : TStockArray;

  SqlstkCam,SqlstkGene,UpdStkGeneDep,UpdStkGeneCam,
  StkDepot ,sqlJrnCaisse,DelJrnCaisse: string;
begin
    RUser:=TSQLQuery.Create(self);
    RUser.SQLConnection := dm.SQLConnection1;

    with RUser.SQL do
      begin
        Add('select * from tb_user where usager = ' + QuotedStr(edlogin.Text) +' and password = '+QuotedStr(edpwd.Text)+' and statut = 1');
      end;

      try
        RUser.Open;
        if not RUser.IsEmpty then
          Conn := 1
        else
          conn := 0
      finally
        RUser.Free;
        dm.SQLConnection1.Close;
      end;

  if Conn = 1 then
    begin

        //Cursor := crHourGlass;
        Label3.Visible := True;
//        sleep(5000);

// **************************Cloture de la caisse
      vDate_fin := QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate)));

      DelJrnCaisse := 'Delete from tb_jounalCaisse where date_jcd = '+vDate_fin;
      dm.DeleteFromTable(DelJrnCaisse);

      sqlJrnCaisse := ' insert into tb_jounalCaisse (date_jcd,debit,credit,solde) '
                  +' select '+vDate_fin+', sum(debit) as debit, sum(credit) as credit, (sum(credit) - sum(debit)) as solde  from tb_etat_journal '
                  +' where date_ej = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate)));
      dm.UpdateTable(sqlJrnCaisse);
//************Cloture stock generale partie camion

    // Initialisation stock general
       Del := ' truncate table tb_stock_gene ';
       dm.DeleteFromTable(Del);

    // selection stock camion
       SqlstkCam := '';
       StkCam := dm.selectAllStockCamion(SqlstkCam);

       for I := Low(StkCam) to High(StkCam) do
         begin
           //V�rification si la ligne existe dans le stk gene

            SqlstkGene := ' where code_art = '+QuotedStr(stkCam[i].Scode_art);
            StockGene := dm.selectStockOnceStockGene(SqlstkGene);

            if StockGene.Scode_art.IsEmpty then //Si l'article n'existe pas
              begin
                with StockGene do
                  begin
                    Scode_art:= stkcam[i].Scode_art;
                    SDesignation_art:= stkcam[i].SDesignation_art;
                    NQte_vide:= stkcam[i].NQte_vide;
                    NQte_mag:= stkcam[i].NQte_mag;
                    Nqte_total:= stkcam[i].Nqte_total;
                  end;
                  dm.InsertStockGeneral(StockGene);
              end else // Si l'article existe dans la table de stock general
              begin
                UpdStkGeneCam := ' Update tb_stock_gene set '
                              +' qte_vide = '+IntToStr(stkCam[i].NQte_vide + StockGene.NQte_vide)+','
                              +' qte_mag = '+IntToStr(stkCam[i].NQte_mag + StockGene.NQte_mag)+','
                              +' qte_totale = '+IntToStr(stkCam[i].Nqte_total + StockGene.Nqte_total)
                              +' where code_art = '+QuotedStr(stkCam[i].Scode_art);
                dm.UpdateTable(UpdStkGeneCam);
              end;
         end;
//************Cloture stock generale partie d�p�t
    // selection stock depot
       StkDepot := '';
       StockDepot := dm.selectStock(SqlstkCam);

       for I := Low(StockDepot) to High(StockDepot) do
         begin
           //V�rification si la ligne existe dans le stk gene
            code_art :=StockDepot[i].Scode_art;

            SqlstkGene := ' where code_art = '+QuotedStr(StockDepot[i].Scode_art);
            StockGene := dm.selectStockOnceStockGene(SqlstkGene);

            Article := DM.selectArticleByCode(code_art);

            if StockGene.Scode_art.IsEmpty then //Si l'article n'existe pas
              begin
                with StockGene do
                  begin
                    Scode_art:= StockDepot[i].Scode_art;
                    SDesignation_art:= Article.SDesignation_art;
                    NQte_vide:= StockDepot[i].NQte_vide;
                    NQte_mag:= StockDepot[i].NQte_mag;
                    Nqte_total:= StockDepot[i].Nqte_total;
                  end;
                  dm.InsertStockGeneral(StockGene);
              end else // Si l'article existe dans la table de stock general
              begin
                UpdStkGeneDep := ' Update tb_stock_gene set '
                              +' qte_vide = '+IntToStr(StockDepot[i].NQte_vide + StockGene.NQte_vide)+','
                              +' qte_mag = '+IntToStr(StockDepot[i].NQte_mag + StockGene.NQte_mag)+','
                              +' qte_totale = '+IntToStr(StockDepot[i].Nqte_total + StockGene.Nqte_total)
                              +' where code_art = '+QuotedStr(StockDepot[i].Scode_art);
                dm.UpdateTable(UpdStkGeneDep);
              end;
         end;



//Cloture du bon de commande insertion diagram commande
        PsqlDiagramDay := ' Where date_dbc = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate)));
        DiagramDayBC := dm.selectDiagramDay(PsqlDiagramDay);

        if not DiagramDayBC.Sdate_dbc.IsEmpty then //si la ligne du jour existe
          begin
            DelDiagramDay := ' Delete from tb_day_diagram_bc '
                              +' Where date_dbc = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate)));
            dm.DeleteFromTable(DelDiagramDay);
          end ;
                   // Insertion dans la table de diagramme de BC
          SqlDiagram := ' insert into tb_day_diagram_bc (date_dbc,tkg) '
                        +' Select date_val, sum(tkg) as Ttkg from tb_boncom Where date_val ='+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate)));
          dm.InsertDiagramDay(SqlDiagram);

//Cloture de la facturation insertion diagram facturation
        PsqlDiagramDayFact := ' Where date_dbf = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate)));
        DiagramDayFact := dm.selectDiagramDayFact(PsqlDiagramDayFact);

        if not DiagramDayFact.Sdate_dbf.IsEmpty then //si la ligne du jour existe
          begin
            DelDiagramDay := ' Delete from tb_day_diagram_facture '
                            +' Where date_dbf between '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate))+' 00:00:00')
                            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate))+' 23:59:59');
            dm.DeleteFromTable(DelDiagramDay);
          end ;

                   // Insertion montant total facture
          SqlDiagram_mntT := ' insert into tb_day_diagram_facture (date_dbf,tmontant,libelle) '
                        +' Select date_fact, sum(mnt_t) as Tmnt_t, '+QuotedStr('Totale')
                        +' from tb_facturation '
                        +' Where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate))+' 00:00:00')
                        +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate))+' 23:59:59')
                        +' and statut_canc = 0 ';
          dm.InsertDiagramDay(SqlDiagram_mntT);

                   // Insertion montant total payee
          SqlDiagram_mntP := ' insert into tb_day_diagram_facture (date_dbf,tmontant,libelle) '
                        +' Select date_fact,  sum(mnt_p) as Tmnt_p, '+QuotedStr('Pay�e')
                        +'from tb_facturation '
                        +' Where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate))+' 00:00:00')
                        +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate))+' 23:59:59')
                        +' and statut_canc = 0 ';
          dm.InsertDiagramDay(SqlDiagram_mntP);

                   // Insertion montant restant
          SqlDiagram_mntR := ' insert into tb_day_diagram_facture (date_dbf,tmontant,libelle) '
                        +' Select date_fact, sum(mnt_r) as Tmnt_r ,'+QuotedStr('Impay�e')
                        +' from tb_facturation '
                        +' Where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate))+' 00:00:00')
                        +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate))+' 23:59:59')
                        +' and statut_canc = 0 ';

          dm.InsertDiagramDay(SqlDiagram_mntR);



//        R�initialisation des solde de caisse
        SqlCaisses := ' where num_compte <> 0000000001';
        Caisses := dm.SelectCaisses(SqlCaisses);

        SqlCaisse := ' where num_compte = 0000000001';

        for I := Low(Caisses) to High(Caisses) do
          begin
            Caisse := dm.SelectCaisse(SqlCaisse);

            Sqlup := 'update tb_caisse set solde = '+FloatToStr(Caisse.Rsolde + Caisses[i].RSolde)
                    +' where num_compte = '+QuotedStr('0000000001');
            dm.UpdateTable(Sqlup);

            // Insertion dans tb_catalogue_caisse
            with Cat_cais do
              begin
                 Sdate_cat := frmIntegrateur.lbdate.Caption;
                 Scompte := caisses[i].Scompte;
                 RSolde := Caisses[i].RSolde;
              end;
              dm.InsertCatalogueCaisse(Cat_cais);
            // Initialisation du solde des caisses
            SqlInit := 'update tb_caisse set solde = 0 where num_compte = '+QuotedStr(Caisses[i].Scompte);
            dm.UpdateTable(SqlInit);
          end;

  //******************** Cl�ture du stock *************************
      sqlSelStk :='';
      stocks:=dm.selectStock(sqlSelStk);

      for I := Low(stocks) to High(stocks) do
        begin
          with Cat_stock do
            begin
              Sdate_cs := frmIntegrateur.lbdate.Caption;
              Scode_art := stocks[i].Scode_art;
              Nqte_vide:=stocks[i].NQte_vide;
              Nqte_mag:=stocks[i].NQte_mag;
              Nqte_totale:=stocks[i].Nqte_total;
            end;

          sqlSelCatStock := ' where code_art = '+QuotedStr(stocks[i].Scode_art)
                          +' and date_cs = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(frmIntegrateur.lbdate.Caption)));

          Sel_Cat_stock := dm.selectCatalogueStock(sqlSelCatStock);

          sqlUpCat := 'Update tb_catalogue_stock set '
                      +' qte_vide = '+IntToStr(stocks[i].NQte_vide)+','
                      +' qte_mag = '+IntToStr(stocks[i].NQte_mag)+','
                      +' qte_totale = '+IntToStr(stocks[i].Nqte_total)
                      +' where code_art = '+QuotedStr(stocks[i].Scode_art)
                      +' and date_cs = '+QuotedStr(FormatDateTime('yyyy-mm-dd',Now));

          if Sel_Cat_stock.Scode_art.IsEmpty then //si l'article n'existe pas, inserer
              dm.InsertCatalogueStock(Cat_stock)
          else                                   //sinon faire sa maj
              dm.UpdateTable(sqlUpCat);
        end;

      dd := dm.selectCatDate;
      SysDate := StrToDate(dd.Sdate_cd);
      SysDate := SysDate + 1;
     // ReplaceTime(SysDate, EncodeTime(20, 0, 0, 0));

//      ShowMessage(DateToStr( SysDate ));
      SqlUpDate :='update tb_catalogue_date set date_cd = '+QuotedStr(FormatDateTime('yyyy-mm-dd',SysDate));

      if StrToDate(dd.Sdate_cd) < Date then
        dm.UpdateTable(SqlUpDate);

      //ShowMessage(DateToStr(now));
      MessageDlg('Le processus de cl�ture s''est d�roul� avec succ�s',mtInformation,[mbOK],0);
      Button2.Click;
    end else
    begin
      MessageDlg('Acc�s refus�',mtError,[mbRetry],0);
//      Button2.Click;
    end;
end;

procedure TfrmClotureDay.Button2Click(Sender: TObject);
begin
  edlogin.Clear;
  edpwd.Clear;
  Close;
  frmIntegrateur.Close;
end;

procedure TfrmClotureDay.edpwdKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then Button1.Click;

end;

procedure TfrmClotureDay.FormShow(Sender: TObject);
begin
Label3.Visible:=False;
end;

end.
