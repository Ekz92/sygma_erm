unit UValidBC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmValideBc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edNumBC: TEdit;
    edDateBC: TEdit;
    edVehicule: TEdit;
    Label4: TLabel;
    cbDestination: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { D�clarations priv�es }
    procedure videChamps();
  public
    { D�clarations publiques }
  end;

var
  frmValideBc: TfrmValideBc;

implementation

{$R *.dfm}

uses records, UDM, UConnexion, UIntegrateur, UListeBonCommande;

procedure TfrmValideBc.Button2Click(Sender: TObject);
begin
videChamps;
Close;
end;

procedure TfrmValideBc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListeBonCommande.OnShow(sender);
end;

procedure TfrmValideBc.videChamps();
begin
  edNumBC.Clear;
  edDateBC.Clear;
  edVehicule.Clear;
  cbDestination.ItemIndex := -1;
end;

procedure TfrmValideBc.Button1Click(Sender: TObject);
var
  Bcs : TBonCom_detailArray;
  SqlBc, code_art, sqlUpdStock : string;
  i,qte_vide,qte_mag,qte_fin,Qte_totale : integer;
  stock : TStock;
  entree : TEntree;
  date_op,code_mag,SqlVal : string;

  SelectMouv,
  insertMouv,
  UpdateMouv :TMouvStock;


// Camion
  numCharg : integer;
  vteCharg : TvteChargVeh;
  vteChargd : TvteChargVehd;
  PSqlCam,SqlUpCam,
  SqlUpLiv,SqlUpStock,PsqlArt : string;
  stockCam : TStockCamion;

  article : TArticle;

  sortie :TSortie;

  LivraisonCamion : TLivraisonCamion;
  lot , PSqlBc, PSqlBcd: string;

  Bc : TBonCom;

  Users : TUserArray;
  uProfil,PsqlUsr :string;
  U: Integer;
begin
  PsqlUsr := ' where usager = '+QuotedStr(vUsager);
  Users := dm.SelectUsers(PsqlUsr);

  for U := Low(Users) to High(Users) do
    begin
      uProfil := Users[U].Sprofil;
    end;

  if (uProfil <> 'Admin') and (uProfil <> 'Gest. Stock') then
    begin
      MessageDlg('Vous n''avez pas cette habilitation merci de vous referer � votre administrateur',mtError,[mbOK],0);
    end else
  begin
    if cbDestination.ItemIndex = 0 then
      begin
      if MessageDlg('Confirmez-vous la validation de l''ajout en stock ?',mtConfirmation,[mbyes,mbno],0)=mryes then
        begin

        SqlBc := ' where num_bc = '+edNumBC.Text ;

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
                Ddate_entree:=QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',StrToDate(edDateBC.Text)));
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

                  SqlVal := 'Update tb_boncom set user_validate = '+QuotedStr(vUsager)+','
                            +' dest = '+QuotedStr('D�p�t')+','
                            +' date_val = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate)))
                            +' where num_bc = '+edNumBC.Text;

                  dm.UpdateTable(SqlVal);

                  dm.InsertEntree(entree);
                  dm.UpdateTable(sqlUpdStock);

    //              Button1.Click;
                end;
                videChamps;
          end;

      end else
    if cbDestination.itemIndex = 1 then
      begin
      numCharg :=dm.SelectMaxCharg.NnumMax +1 ;
      lot := vUsager+IntToStr(dm.SelectMaxLettrage.numLettrage+1) ;

      PSqlBc := ' where num_bc = '+edNumBC.Text;
      Bc := dm.selectBonCommandeOnce(PSqlBc);

      PSqlBcd := ' where num_bc = '+edNumBC.Text;
      Bcs := dm.selectBonCommandeDetail(PSqlBcd);

      if MessageDlg('Confirmez-vous la validation de l''ajout en camion?',mtConfirmation,[mbyes,mbno],0)=mryes then
        begin
        {Insertion dans la table chargement camion}
        with  vteCharg do
          begin
            Slettrage := QuotedStr(lot);
            NnumCharg := numCharg;
            NSrc_charg:= 0;
            ScodClient := QuotedStr('');
            SnomClient := QuotedStr('');
            SPiece := QuotedStr('');
            SVehicule := QuotedStr(edVehicule.Text);
            NnumMatChauf:=StrToInt('9999');
            SnomChauf:=QuotedStr('');
            SdateCharg := edDateBC.Text;
            NTboutteille := 0;//StrToInt(lbTbout.Caption);
            RTKilo := 0;//StrToFloat(lbTkilo.Caption);
            RMontant :=Bc.Rmontant_bc;
            SUsager := vUsager;
            NStatut_canc := 0;
            NStatut_com := 0;
          end;
          dm.InsertVteChargVeh(vteCharg);
          for I := Low(Bcs) to High(Bcs) do
            begin
              PsqlArt := ' where code_art = '+QuotedStr(Bcs[i].Scode_art);
              article := dm.selectArticleByCode(PsqlArt);
              {Insertion dans la table details chargement camion}
              with vteChargd  do
                begin
                  NnumCharg := numCharg;
                  ScodeArt := QuotedStr(Bcs[i].Scode_art);
                  SdesignationArt := QuotedStr(Bcs[i].Sdesignation_art) ;
                  Nqte := Bcs[i].Nqte ;
                  Rkilo := article.Rkilo ;
                  RTkilo := Bcs[i].Nqte * article.Rkilo;
                end;
                dm.InsertVteChargVehd(vteChargd);

                //selection des quantit� en stoock
                PSqlCam := ' Where vehicule = '+QuotedStr(edVehicule.Text)
                            +' and code_art = '+QuotedStr(Bcs[i].Scode_art);

    //            code_art := Bcs[i].Scode_art;

                stockCam := dm.selectStockCamion(PSqlCam);
                stock := dm.selectStockByArticle(code_art);
    //            article := dm.selectArticleByCode(code_art);

                if stockCam.Scode_art.IsEmpty then {Insertion dans la table stock camion}
                  begin
                    with stockCam do
                      begin
                        Svehicule:=bc.SVehicule;
                        Scode_art:=Bcs[i].Scode_art;
                        SDesignation_art := Bcs[i].Sdesignation_art;
                        NQte_vide := 0 - Bcs[i].Nqte;
                        NQte_mag := Bcs[i].Nqte;
                        Nqte_total := Bcs[i].Nqte;
                      end;
                      dm.InsertStockCamion(stockCam);
                  end
                else {Mise � jour des quantit�s dans le camion}
                begin
                  Qte_vide := stockCam.NQte_vide;
                  Qte_mag := stockCam.NQte_mag;
                  Qte_totale := stockCam.Nqte_total;

                  SqlUpCam :=' Update tb_stock_camion set'
                              +' qte_vide = '+IntToStr(Qte_vide - Bcs[i].Nqte)+','
                              +' qte_mag = '+IntToStr(Qte_mag + Bcs[i].Nqte) +','
                              +' qte_total = '+IntToStr(Qte_totale + Bcs[i].Nqte)
                              +' where code_art = '+QuotedStr(Bcs[i].Scode_art)
                              +' and vehicule = '+QuotedStr(edVehicule.Text);

                  dm.UpdateTable(SqlUpCam);
                end;
            end;

    // Modification du statut du bl en statut valider

        SqlVal := 'Update tb_boncom set user_validate = '+QuotedStr(vUsager)+','
                  +' dest = '+QuotedStr('Camion')+','
                  +' date_val = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(vDate)))
                  +' where num_bc = '+edNumBC.Text;

        dm.UpdateTable(SqlVal);
        end;
      videChamps;
      end // end If
      else
      if cbDestination.ItemIndex = -1 then
        begin
          MessageDlg('Erreur, veillez sp�cifier la destination',mtError,[mbRetry],0);
        end;
  end;
end;



end.