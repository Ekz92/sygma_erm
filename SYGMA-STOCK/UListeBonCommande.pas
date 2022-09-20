unit UListeBonCommande;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Data.FMTBcd, frxClass, frxDBSet, Data.DB, Data.SqlExpr,
  Vcl.Menus;

type
  TfrmListeBonCommande = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    Button1: TButton;
    ednumbc: TEdit;
    cbVehicule: TComboBox;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Label5: TLabel;
    lbtotal: TLabel;
    PopupMenu1: TPopupMenu;
    Consuter1: TMenuItem;
    Valider1: TMenuItem;
    Annuler1: TMenuItem;
    QBonCom: TSQLQuery;
    frxBonCom: TfrxReport;
    frxDBBonCom: TfrxDBDataset;
    Label6: TLabel;
    cbStatut: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Consuter1Click(Sender: TObject);
    procedure Valider1Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure cbStatutCloseUp(Sender: TObject);
    procedure Annuler1Click(Sender: TObject);
//    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
//      Rect: TRect; State: TGridDrawState);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmListeBonCommande: TfrmListeBonCommande;

implementation

{$R *.dfm}

uses records, UDM, UConnexion;

procedure TfrmListeBonCommande.Annuler1Click(Sender: TObject);
  var
  SqlUpBc, SqlDelEntree ,SqlBc: string;
  Bcs :TBonCom_detailArray;

  code_art, sqlUpdStock : string;
  i,qte_vide,qte_mag,qte_fin : integer;
  stock : TStock;

  date_op,code_mag : string;

  SelectMouv,
//  insertMouv,
  UpdateMouv :TMouvStock;

begin
if MessageDlg('Voulez-vous annumer ce BC ?',mtWarning,[mbYes,mbNo],0) = mryes then
  begin
//si le bc n'a pas �t� encore valid�
  if Trim(StringGrid1.Cells[5,StringGrid1.Row])='' then
    begin
    //  Changement du statut du Bon

      SqlUpBc := ' Update tb_boncom set '
                +' statut_bc = 1 ,'
                +' user_validate = '+QuotedStr('')
                +' where num_bc = '+StringGrid1.Cells[1,StringGrid1.Row];

      dm.UpdateTable(SqlUpBc);
    end else
    begin //si le BC est d�j� valider

    //  Changement du statut du Bon

      SqlUpBc := ' Update tb_boncom set '
                +' statut_bc = 1 ,'
                +' user_validate = '+QuotedStr('')
                +' where num_bc = '+StringGrid1.Cells[1,StringGrid1.Row];

      dm.UpdateTable(SqlUpBc);

    //  Suppression du bon dans la table entree

      SqlDelEntree := ' delete from tb_entree where num_piece = ' +StringGrid1.Cells[1,StringGrid1.Row];
      dm.DeleteFromTable(SqlDelEntree);

      SqlBc := ' where num_bc = '+StringGrid1.Cells[1,StringGrid1.Row]  ;

        Bcs := dm.selectBonCommandeDetail(SqlBc);


        for I := Low(Bcs) to High(Bcs) do
          begin
          //---------------------------Selection de la quantit� en stock----------
            code_art := Bcs[i].Scode_art;
            stock := dm.selectStockByArticle(code_art);

            Qte_vide := stock.NQte_vide + Bcs[i].Nqte;
            Qte_mag := stock.NQte_mag - Bcs[i].Nqte;

          //------------------------ Modification de la quantit� du stock ----------------------
              if stock.Scode_mag = 'PFGB' then
                sqlUpdStock := 'Update tb_stock set '
                            +' qte_vide ='+IntToStr(Qte_vide)+','
                            +' qte_mag = '+IntToStr(Qte_mag)+','
                            +' qte_totale = '+IntToStr(Qte_vide + Qte_mag )
                            +' where code_art = '+QuotedStr(Bcs[i].Scode_art)
              ELSE
                sqlUpdStock := 'Update tb_stock set '
    //                        +' qte_vide ='+IntToStr(Qte_vide)+','
                            +' qte_mag = '+IntToStr(Qte_mag)+','
                            +' qte_totale = '+IntToStr(Qte_mag )
                            +' where code_art = '+QuotedStr(Bcs[i].Scode_art) ;

                  dm.UpdateTable(sqlUpdStock);

    //          Ecriture dans la table des mouvement du stock TmouvemntStock

            date_op := DateToStr(Now);
            code_mag := stock.Scode_mag;

             SelectMouv := dm.selectMouvStock(code_art,date_op,code_mag);

            with UpdateMouv do
              begin
                NidMouvStock := SelectMouv.NidMouvStock;
                Ddate_mouv := SelectMouv.Ddate_mouv;
                Scode_art := SelectMouv.Scode_art;
                Scode_mag := SelectMouv.Scode_mag;
                Nqte_entree := SelectMouv.Nqte_entree-Bcs[i].Nqte;
                Nqte_sortie := SelectMouv.Nqte_sortie ;
              end;
              dm.Update_moovStock(UpdateMouv);
          end; //end for
    end;
  end;
  Button1.Click;
end;

procedure TfrmListeBonCommande.Button1Click(Sender: TObject);
var
  Psql : string;
  BCs : TBonComArray;
  I: Integer;
  vTot : real;

begin
  vTot := 0;
//  if cbStatut.ItemIndex = 0 then vStatut :=


  Psql:=' where date_bc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                +' and statut_bc = 0';

  if ednumbc.Text<>'' then Psql:= Psql+' and num_bc = '+ednumbc.Text;
  if cbVehicule.Text<>'' then Psql:= Psql+' and vehicule = '+cbVehicule.Text;

  // Filtre sur le statut du bon

  if cbStatut.ItemIndex = 1 then Psql := Psql + ' and user_validate <>'+QuotedStr('')
  else
  if cbStatut.ItemIndex = 2 then Psql := Psql + ' and user_validate = '+QuotedStr('');

  Psql := Psql+' order by num_bc desc';

  BCs := dm.selectBonCommande(Psql);
  StringGrid1.RowCount := Length(BCs)+1;
  for I := Low(BCs) to High(BCs) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := Bcs[i].Sdate_bc;
          Cells[1,i+1] := IntToStr(Bcs[i].Nnum_bc);
          Cells[2,i+1] := Bcs[i].Snom_four;
          Cells[3,i+1] := Bcs[i].SVehicule;
          Cells[4,i+1] := FloatToStrF(Bcs[i].Rmontant_bc,ffNumber,15,2);
          Cells[5,i+1] := Bcs[i].Susager_val;

          vTot := vTot + Bcs[i].Rmontant_bc;
        end;
    end;
    lbtotal.Caption := FloatToStrF(vTot,ffNumber,15,2);
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;

end;

procedure TfrmListeBonCommande.cbStatutCloseUp(Sender: TObject);
begin
cbVehicule.Clear;
ednumbc.Clear;
end;

procedure TfrmListeBonCommande.Consuter1Click(Sender: TObject);
var
  sql : string;
begin
  sql := 'select * from tb_boncom_detail tbd '
          +' inner join tb_boncom tb on tb.num_bc = tbd.num_bc '
          +' where tb.num_bc = '+QuotedStr(StringGrid1.Cells[1,StringGrid1.Row]);

//  QBonCom:=TSQLQuery.Create(self);
//  QBonCom.SQLConnection := dm.SQLConnection1;

  QBonCom.SQL.Clear;
  QBonCom.SQL.Add(sql);
  QBonCom.Open;

  frxBonCom.ShowReport();
  dm.SQLConnection1.Close;

end;

procedure TfrmListeBonCommande.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
cbVehicule.Clear;

end;

procedure TfrmListeBonCommande.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Date';
    Cells[1,0]:='N� BC';
    Cells[2,0]:='Fournisseur';
    Cells[3,0]:='V�hicule';
    Cells[4,0]:='Montant';
    Cells[5,0]:='User Val';
  end;
end;

procedure TfrmListeBonCommande.FormShow(Sender: TObject);
var
  Psql,vPsql : string;
  BCs : TBonComArray;
  I: Integer;
  vehs : TVehiculeArray;
  vTot : real;
begin
d2.Date:= Now;
vTot := 0;
//
// { Liste de vehicules dans cbox}
//  vehs := DM.SelectVehicule(vPsql);
//
//  for I := Low(vehs) to High(vehs) do
//    begin
//      cbVehicule.Items.Add(vehs[i].SNum_mat);
//    end;
  //************************
  Psql:= ' where statut_bc = 0'
        + ' order by num_bc desc';

  BCs := dm.selectBonCommande(Psql);
  StringGrid1.RowCount := Length(BCs)+1;
  for I := Low(BCs) to High(BCs) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := Bcs[i].Sdate_bc;
          Cells[1,i+1] := IntToStr(Bcs[i].Nnum_bc);
          Cells[2,i+1] := Bcs[i].Snom_four;
          Cells[3,i+1] := Bcs[i].SVehicule;
          Cells[4,i+1] := FloatToStrF(Bcs[i].Rmontant_bc,ffNumber,15,2);
          Cells[5,i+1] := Bcs[i].Susager_val;

          vTot := vTot + Bcs[i].Rmontant_bc;
        end;
    end;
        lbtotal.Caption := FloatToStrF(vTot,ffNumber,15,2);
        if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmListeBonCommande.StringGrid1DblClick(Sender: TObject);
begin
Consuter1.Click;
end;

procedure TfrmListeBonCommande.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
    with Sender As TStringGrid do with canvas do
    begin
      { selection de la couleur de fond}
      if gdFixed in State then
        Brush.Color:=clBtnFace
      else
        if gdSelected in State then
          Brush.Color:=clNavy//$00000046
        else
          if Odd(ARow) then
            Brush.Color :=$006A9BFF//$FFE0FF clgreen
          else
            Brush.Color:=$00FBDA97;//$FFFFE0  clBlue
      {Design du fond}
      FillRect(Rect);
      {Selection de la couleur d'ecriture}
      if gdSelected in State then
        font.Color:=clwhite
        else
        font.Color:=clblack;
      {Design du texte}
      TextOut(Rect.Left,Rect.Top,Cells[ACol,ARow]);
    end;

end;

procedure TfrmListeBonCommande.Valider1Click(Sender: TObject);
var
  Bcs : TBonCom_detailArray;
  SqlBc, code_art, sqlUpdStock : string;
  i,qte_vide,qte_mag,qte_fin : integer;
  stock : TStock;
  entree : TEntree;
  date_op,code_mag,SqlVal : string;

  SelectMouv,
  insertMouv,
  UpdateMouv :TMouvStock;

begin
//  Control si le bon a �t� deja valid�
  if Trim(StringGrid1.Cells[5,StringGrid1.Row]) <> '' then
    begin
      MessageDlg('Ce bon a �t� d�j� valid� et ne peut plus faire objet de validation',mtError,[mbOK],0);
      Exit
    end
  else //sinon faire sa validation
  if MessageDlg('Confirmez-vous la validation de l''ajout en stock?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin

    SqlBc := ' where num_bc = '+StringGrid1.Cells[1,StringGrid1.Row]  ;

    Bcs := dm.selectBonCommandeDetail(SqlBc);


    for I := Low(Bcs) to High(Bcs) do
      begin
      //---------------------------Selection de la quantit� en stock----------
        code_art := Bcs[i].Scode_art;
        stock := dm.selectStockByArticle(code_art);

        Qte_vide := stock.NQte_vide - Bcs[i].Nqte;
        Qte_mag := stock.NQte_mag + Bcs[i].Nqte;


      //-------------------------- Insertion dans la table des entr�e----------
        with entree do
          begin
            Scode_art_src :=QuotedStr('');
            SCode_art:=QuotedStr(Bcs[i].Scode_art);
            Scode_mag:=QuotedStr(stock.Scode_mag);
            NQte_entree:=Bcs[i].Nqte;
            NType_entree := 1;
            SUsager:=QuotedStr(vUsager);
            Ddate_entree:=QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',StrToDate(StringGrid1.Cells[0,StringGrid1.Row])));
            SPiece:=QuotedStr(IntToStr(Bcs[i].Nnum_bc));
            Nstatut_canc:=0;
          end;
      //------------------------ Modification de la quantit� du stock ----------------------
          if stock.Scode_mag = 'PFGB' then
            sqlUpdStock := 'Update tb_stock set '
                        +' qte_vide ='+IntToStr(Qte_vide)+','
                        +' qte_mag = '+IntToStr(Qte_mag)+','
                        +' qte_totale = '+IntToStr(Qte_vide + Qte_mag )
                        +' where code_art = '+QuotedStr(Bcs[i].Scode_art)
          ELSE
            sqlUpdStock := 'Update tb_stock set '
//                        +' qte_vide ='+IntToStr(Qte_vide)+','
                        +' qte_mag = '+IntToStr(Qte_mag)+','
                        +' qte_totale = '+IntToStr(Qte_mag )
                        +' where code_art = '+QuotedStr(Bcs[i].Scode_art) ;

      //*****************************************************************

          {Ecriture dans la table des mouvement du stock TmouvemntStock}
      //    code_art := edcode_art.Text;
        date_op := DateToStr(Now);
        code_mag := stock.Scode_mag;

         SelectMouv := dm.selectMouvStock(code_art,date_op,code_mag);

         if (SelectMouv.Ddate_mouv.IsEmpty) then
          Begin
              with insertMouv do
                begin
                 // NidMouvStock := SelectMouv.NidMouvStock;
                  Ddate_mouv := date_op;
                  Scode_art := code_art;
                  Scode_mag := stock.Scode_mag;
                  Nqte_entree := Bcs[i].Nqte;
                  Nqte_sortie := 0 ;
                end;
                dm.insertMouvStock(insertMouv);
          End else
          if (StrToDate(SelectMouv.Ddate_mouv) = StrToDate(date_op)) and (code_art = SelectMouv.Scode_art)then
            begin
              with UpdateMouv do
                begin
                  NidMouvStock := SelectMouv.NidMouvStock;
                  Ddate_mouv := SelectMouv.Ddate_mouv;
                  Scode_art := SelectMouv.Scode_art;
                  Scode_mag := SelectMouv.Scode_mag;
                  Nqte_entree := SelectMouv.Nqte_entree+Bcs[i].Nqte;
                  Nqte_sortie := SelectMouv.Nqte_sortie ;
                end;
                dm.Update_moovStock(UpdateMouv);
            end ;
// Modification du statut du bl en statut valider

              SqlVal := 'Update tb_boncom set user_validate = '+QuotedStr(vUsager)
                        +' where num_bc = '+StringGrid1.Cells[1,StringGrid1.Row];

              dm.UpdateTable(SqlVal);

              dm.InsertEntree(entree);
              dm.UpdateTable(sqlUpdStock);

              Button1.Click;
            end;
      end;
end;

end.