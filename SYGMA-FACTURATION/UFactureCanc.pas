unit UFactureCanc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmFactureCanc = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    edFActure: TEdit;
    memo: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmFactureCanc: TfrmFactureCanc;

implementation

{$R *.dfm}

uses UListeFacture, records, UDM, UConnexion;

procedure TfrmFactureCanc.Button1Click(Sender: TObject);
var
  Psql, Sql_DelReleveClt : string;
  fc : TFactureCanc;
  facture : TFacturationArray;
  facturesd : TFacturation_detailArray;
  SqlSelect,
  code_art,
  SqlUpdate,
  TypeFact,
  NumFact,
  Vehicule ,
  SqlStockCam: string;

  I: Integer;
  Stock : TStock;
  Stock_cam : TStockCamion;
  Caisse : TCaisseArray;
  PSqlCaisse,
  PsqlPaymt,
  num_compte,SqlUpCaisse,SqlUpPay,SqlUpHisCais,
  SqlUpBeneFact : string;
  Paymt : TPayement_caisse;
  vSolde,mnt_p : real;

begin
if MessageDlg('Attention, cette action supprimera la facture. Voulez-vous Continuer ?',mtWarning,[mbyes,mbNo,mbCancel],0)=mrYes then
begin
  PSql := ' update tb_facturation set statut_canc = 1 '
          +' where num_fact = '+QuotedStr(edFActure.Text);

  Sql_DelReleveClt := ' delete from tb_releve_client where piece = '+QuotedStr(edFActure.Text);

  with fc do
    begin
      Snum_fact:=QuotedStr(edFActure.Text);
      Smotif_canc:=QuotedStr(memo.Text);
      Sdate_canc:=QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
      Suser_canc := QuotedStr(vUsager);
    end;
  if memo.Text<>'' then
    begin
      dm.InsertFactureCanc(fc);
      dm.UpdateTable(PSql);
      dm.Delete(Sql_DelReleveClt);
    end else
    begin
      MessageDlg('Merci de renseigner le motif',mtError,[mbRetry],0);
      exit;
    end;

    {Pour la mise � jour du stock}

    SqlSelect:=' where num_fact = '+QuotedStr(edFActure.Text);
    facturesd:=dm.SelectFacturesDetail(SqlSelect); //Selection des article de la facture � annuler

    facture:=dm.SelectFactures(SqlSelect);

    for I := Low(facture) to High(facture) do
      begin
        NumFact := facture[i].SNum_fact;
        Vehicule := facture[i].Svehicule;
        TypeFact := facture[i].Stype_fact;
      end;

    if TypeFact = 'Comptoir' then //
      begin
        for I := Low(facturesd) to High(facturesd) do //Parcours des article de la facture � annuler
          begin
            code_art := facturesd[i].Scode_art;
            Stock := dm.selectStockByArticle(code_art);

            if Stock.Scode_mag = 'PFBC' then
            SqlUpdate:='update tb_stock set '
            //          +' qte_vide = '+IntToStr(Stock.NQte_vide - facturesd[i].Nqte_art)+','
                      +' qte_mag = '+IntToStr(Stock.NQte_mag + facturesd[i].Nqte_art)+','
                      +' qte_totale ='+IntToStr(Stock.Nqte_total + facturesd[i].Nqte_art)
                      +' Where code_art = '+QuotedStr(facturesd[i].Scode_art)
            else
            SqlUpdate:='update tb_stock set '
                      +' qte_vide = '+IntToStr(Stock.NQte_vide - facturesd[i].Nqte_art)+','
                      +' qte_mag = '+IntToStr(Stock.NQte_mag + facturesd[i].Nqte_art)+','
                      +' qte_totale ='+IntToStr(Stock.Nqte_total {+ facturesd[i].Nqte_art})
                      +' Where code_art = '+QuotedStr(facturesd[i].Scode_art);

            dm.UpdateTable(SqlUpdate);
          end;
      end else
    if TypeFact = 'Camion' then //
      begin
        for I := Low(facturesd) to High(facturesd) do //Parcours des article de la facture � annuler
          begin
            code_art := facturesd[i].Scode_art;

            SqlStockCam := 'Where vehicule = '+QuotedStr(Vehicule)
                            +' and code_art = '+QuotedStr(code_art);

            Stock_cam := dm.selectStockCamion(SqlStockCam);

            if Stock.Scode_mag = 'PFBC' then
            SqlUpdate:='update tb_stock_camion set '
//                      +' qte_vide = '+IntToStr(Stock_cam.NQte_vide - facturesd[i].Nqte_art)+','
                      +' qte_mag = '+IntToStr(Stock_cam.NQte_mag + facturesd[i].Nqte_art)+','
                      +' qte_total ='+IntToStr(Stock_cam.Nqte_total + facturesd[i].Nqte_art)
                      +' Where code_art = '+QuotedStr(facturesd[i].Scode_art)
                      +' and vehicule = '+QuotedStr(Vehicule)
            else
            SqlUpdate:='update tb_stock_camion set '
                      +' qte_vide = '+IntToStr(Stock_cam.NQte_vide - facturesd[i].Nqte_art)+','
                      +' qte_mag = '+IntToStr(Stock_cam.NQte_mag + facturesd[i].Nqte_art)+','
                      +' qte_total ='+IntToStr(Stock_cam.Nqte_total {+ facturesd[i].Nqte_art})
                      +' Where code_art = '+QuotedStr(facturesd[i].Scode_art)
                      +' and vehicule = '+QuotedStr(Vehicule) ;


             dm.UpdateTable(SqlUpdate);
          end;
      end;

    {Mise � jour du solde de la caisse}
    PsqlPaymt:=' where num_fact = '+QuotedStr(edFActure.Text);
    Paymt := dm.selectPayement(PsqlPaymt);

    if not Paymt.Snum_fact.IsEmpty then
      begin
        mnt_p := Paymt.Rmontant_paye;
        num_compte := Paymt.Scompte_caisse;


        PSqlCaisse:= ' where num_compte = '+QuotedStr(num_compte);
        Caisse := dm.SelectCaisses(PSqlCaisse);

        for I := Low(Caisse) to High(Caisse) do vSolde := Caisse[i].RSolde;


        SqlUpCaisse := 'update tb_caisse set'
                      +' solde = '+FloatToStr(vSolde - mnt_p)
                      +' where num_compte = '+QuotedStr(num_compte);

        dm.UpdateTable(SqlUpCaisse);

        SqlUpPay := 'update tb_payement_caisse set'
                    +' statut_canc = 1'
                    +' where num_fact = '+QuotedStr(edFActure.Text);
        dm.UpdateTable(SqlUpPay);

        SqlUpHisCais := 'update tb_historique_caisse set'
                    +' statut_canc = 1'
                    +' where num_piece = '+QuotedStr(edFActure.Text);
        dm.UpdateTable(SqlUpHisCais);

        SqlUpBeneFact := 'update tb_bene_fact set'
                    +' statut_canc = 1'
                    +' where num_fact = '+QuotedStr(edFActure.Text);
        dm.UpdateTable(SqlUpBeneFact);

      end;

      Close;
end;
end;

procedure TfrmFactureCanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListeFacture.SpeedButton1Click(sender);
end;

procedure TfrmFactureCanc.FormShow(Sender: TObject);
begin
Memo.Clear;
memo.SetFocus;

end;

end.
