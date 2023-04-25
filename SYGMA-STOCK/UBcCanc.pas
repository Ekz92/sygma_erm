unit UBcCanc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmBcCanc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    edNumBC: TEdit;
    edVeh: TEdit;
    mComment: TMemo;
    Bevel1: TBevel;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    edUserVal: TEdit;
    edDest: TEdit;
    Label6: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmBcCanc: TfrmBcCanc;

implementation

{$R *.dfm}

uses records, UDM, UListeBonCommande, UConnexion;

procedure TfrmBcCanc.Button1Click(Sender: TObject);
  var
  SqlUpBc, SqlDelEntree ,SqlBc: string;
  Bcs :TBonCom_detailArray;

  code_art, sqlUpdStock : string;
  i,qte_vide,qte_mag,qte_fin : integer;
  stock : TStock;
  article : TArticle;

  date_op,code_mag : string;

  SelectMouv,
//  insertMouv,
  UpdateMouv :TMouvStock;

  stockCam : TStockCamion;
  PStockCam,sqlUpdStockCam : string;

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

  if uProfil <> 'Admin' then
    begin
      MessageDlg('Vous n''avez pas cette habilitation merci de vous referer � votre administrateur',mtError,[mbOK],0);
//      exit
    end else

if MessageDlg('Voulez-vous annuler ce BC ?',mtWarning,[mbYes,mbNo],0) = mryes then
  begin
//si le bc n'a pas �t� encore valid�
  if edUserVal.Text = '' then
    begin
    //  Changement du statut du Bon

      SqlUpBc := ' Update tb_boncom set '
                +' statut_bc = 1 ,'
                +' user_validate = '+QuotedStr('')
                +' where num_bc = '+edNumBC.Text;

      dm.UpdateTable(SqlUpBc);
    end else
    begin //si le BC est d�j� valider
        //  Changement du statut du Bon

      SqlUpBc := ' Update tb_boncom set '
                +' statut_bc = 1 ,'
                +' user_validate = '+QuotedStr('')
                +' where num_bc = '+edNumBC.Text;

      dm.UpdateTable(SqlUpBc);

    //  Suppression du bon dans la table entree

      SqlDelEntree := ' delete from tb_entree '
                     +' where num_piece = ' +edNumBC.Text;
      dm.DeleteFromTable(SqlDelEntree);

      SqlBc := ' where num_bc = '+edNumBC.Text  ;

      Bcs := dm.selectBonCommandeDetail(SqlBc);

      if edDest.Text = 'D�p�t' then
        begin
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
        end else
      if edDest.Text = 'Camion' then
        begin
          for I := Low(Bcs) to High(Bcs) do
            begin
            //---------------------------Selection de la quantit� en stock----------
              code_art := Bcs[i].Scode_art;
              article := dm.selectArticleByCode(code_art);

              PStockCam := ' where code_art = '+QuotedStr(code_art)
                            +' and vehicule = '+QuotedStr(edVeh.Text);

              stockCam := dm.selectStockCamion(PStockCam);

              Qte_vide := stockCam.NQte_vide + Bcs[i].Nqte;
              Qte_mag := stockCam.NQte_mag - Bcs[i].Nqte;

//              sqlUpdStockCam := 'Update tb_stock_camion set '
//                                +' qte_vide = ';

              if article.Scode_mag = 'PFGB' then
                sqlUpdStockCam := 'Update tb_stock_camion set '
                            +' qte_vide ='+IntToStr(Qte_vide)+','
                            +' qte_mag = '+IntToStr(Qte_mag)+','
                            +' qte_total = '+IntToStr(stockCam.Nqte_total - Bcs[i].Nqte)
                            + PStockCam
              ELSE
                sqlUpdStockCam := 'Update tb_stock_camion set '
    //                        +' qte_vide ='+IntToStr(Qte_vide)+','
                            +' qte_mag = '+IntToStr(Qte_mag)+','
                            +' qte_total = '+IntToStr(stockCam.Nqte_total - Bcs[i].Nqte )
                            + PStockCam  ;

              dm.UpdateTable(sqlUpdStockCam);
            end;
        end;
    end;
  end;
  Button2.Click;
end;

procedure TfrmBcCanc.Button2Click(Sender: TObject);
begin
  edNumBC.Clear;
  edUserVal.Clear;
  edVeh.Clear;
  mComment.Clear;
  close;
end;

procedure TfrmBcCanc.FormActivate(Sender: TObject);
begin
mComment.Clear;
end;

procedure TfrmBcCanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListeBonCommande.btSearch.click;
end;

end.