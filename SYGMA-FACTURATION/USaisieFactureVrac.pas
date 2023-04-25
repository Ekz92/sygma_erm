unit USaisieFactureVrac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmSaisieFactureVrac = class(TForm)
    GbClient: TGroupBox;
    Label7: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    ednomClient: TEdit;
    edCodeClient: TEdit;
    edTarif: TEdit;
    GbMagasin: TGroupBox;
    Label2: TLabel;
    Label8: TLabel;
    edCodeMag: TEdit;
    eddesignation_mag: TEdit;
    cbFiger_mag: TCheckBox;
    Gb_Article: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ed_article: TEdit;
    eddesignation_art: TEdit;
    edqte: TEdit;
    cbpdvcdp: TComboBox;
    Label15: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    gbEtete: TGroupBox;
    Label9: TLabel;
    eddate: TDateTimePicker;
    Label3: TLabel;
    lbMontant: TLabel;
    Label11: TLabel;
    cbTypeFact: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure edqteKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure edqteChange(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmSaisieFactureVrac: TfrmSaisieFactureVrac;
  vPrixVente,gMontant:Real;

implementation

{$R *.dfm}

uses records, UDM, UConnexion;

procedure TfrmSaisieFactureVrac.Button1Click(Sender: TObject);
var
  {num fact}
  ParamNumFact : TParametreNumFactureArray;
  Psql :string;
  MaxIdFact : TMaxIdFacture;
  MaxID : integer;
  NumFact ,
  PrefixFact,
  code_art,
  date_op,code_mag,
  sqlUpStk: string;

  facture : TFacturation;
  facture_detail : TFacturation_detail;
  i : integer;

  BeneFact : TBeneFact;
  stock : TStock;

  sortie : TSortie;
  SelectMouv,
  insertMouv,
  UpdateMouv :TMouvStock;



begin
{G�n�ration du num�ro de facture}

  Psql := ' Where code_mag = '+QuotedStr(edCodeMag.Text);

  ParamNumFact := DM.SelectParamNumFact(Psql);

  for I := Low(ParamNumFact) to High(ParamNumFact) do
    begin
      PrefixFact :=  ParamNumFact[i].Sprefix_fact;
    end;

  MaxIdFact := DM.SelectMaxIdFacture;
  MaxID:=MaxIdFact.NMaxId;
  NumFact:=PrefixFact+IntToStr(MaxID + 1);
{ Insertion dans la table facturation }

  with facture do
    begin
      Sdate_fact:=DateToStr(edDate.Date)+''+TimeToStr(now);
      SNum_fact:=NumFact;
      SCode_mag:=edCodeMag.Text;
      Scode_clt:=edCodeClient.Text;
      Snom_clt := ednomClient.Text;
      Spdv_cdp := cbpdvcdp.Text;
      NQte_total:=StrToFloat(edqte.Text);
      Rmnt_t:=gMontant;
      Rmnt_p:=0;
      Rmnt_r:=gMontant;
      Sstatut := 'AT';
      Stype_fact:=cbTypeFact.Text;
      Svehicule:='';
      Snum_comc:='';
      NStatut_canc := 0;
      SUsager := vUsager
    end;

    with facture_detail do
      begin
        Sdate_fact:=DateToStr(edDate.DateTime);
        Snum_fact:=NumFact;
        Scode_mag:=edCodeMag.Text;
        Sdesignation_mag:=eddesignation_mag.Text;
        Scode_tarif := edTarif.Text;
        Sdesignation_tarif := edTarif.Text;
        Scode_clt := edCodeClient.Text;
        Snom_clt := ednomClient.Text;
        Scode_art := ed_article.Text;
        Sdesignation_art:=eddesignation_art.Text;
        Nqte_art := StrTofloat(edqte.Text);
        RPrixU := vPrixVente;
        RPrixT := gMontant;
      end;

    code_art := ed_article.Text;
//    designation_art :=  st_saisie.Cells[1,i];

    stock := dm.selectStockByArticle(code_art);

    {Insertion dans la table benefice facture tb_bene_fact}
    with BeneFact do
      begin
        SdateFAct:=QuotedStr(FormatDateTime('yyyy-mm-dd',edDate.DateTime));
        Snum_fact:=QuotedStr(NumFact);
        Scode_art:=QuotedStr(ed_article.Text);
        Sdesignation_art:=QuotedStr(eddesignation_art.Text);
        Nqte := StrTofloat(edqte.Text);
        Rpu := vPrixVente;
        Rcout := stock.Rcoutachat;
        Rmarge := (Rpu - Rcout)*Nqte;
        Nstatut_canc:=0;
      end;

    date_op := DateToStr(eddate.Date);
    code_mag := edCodeMag.Text;

    sqlUpStk := 'Update tb_stock set '
                +' qte_mag = '+FloatToStr(stock.Nqte_mag - StrToFloat(edqte.Text))+','
                +' qte_totale = '+FloatToStr(stock.Nqte_total - StrToFloat(edqte.Text))
                +' where code_art = '+QuotedStr(code_art);

      {Ecriture dans la table de sortie tb_sortie}

        With sortie do
          Begin
            SCode_art := code_art;
            Scode_mag := edCodeMag.Text;
            NQte_sortie := StrToFloat(edqte.Text);
            SUsager := vUsager;
            Ddate_sortie := DateTimeToStr(edDate.DateTime);
          End;
          dm.InsertSortie(sortie);
        {Ecriture dans la table des mouvement du stock TmouvemntStock}

        SelectMouv := dm.selectMouvStock(code_art,date_op,code_mag);

       if (SelectMouv.Ddate_mouv.IsEmpty) then
        Begin
            with insertMouv do
              begin
               // NidMouvStock := SelectMouv.NidMouvStock;
                Ddate_mouv := DateTimeToStr(edDate.DateTime);
                Scode_art := code_art;
                Scode_mag := code_mag;
                Nqte_entree := 0;
                Nqte_sortie := StrTofloat(edqte.Text) ;
              end;
              dm.insertMouvStock(insertMouv);
        End else
  //    if (StrToDate(SelectMouv.Ddate_mouv) = StrToDateTime(edDate.Text)) and (code_art = SelectMouv.Scode_art) then
        begin
          with UpdateMouv do
            begin
              NidMouvStock := SelectMouv.NidMouvStock;
              Ddate_mouv := SelectMouv.Ddate_mouv;
              Scode_art := SelectMouv.Scode_art;
              Scode_mag := SelectMouv.Scode_mag;
              Nqte_entree := SelectMouv.Nqte_entree;
              Nqte_sortie := SelectMouv.Nqte_sortie+StrToFloat(edqte.Text) ;
            end;
            dm.Update_moovStock(UpdateMouv);
        end ;


    if MessageDlg('Voulez-vous enregistrer cette facture',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        DM.InsertFacturation(facture);
        DM.InsertFacturetion_detail(facture_detail);
        dm.InsertBeneFact(BeneFact);
        dm.UpdateTable(sqlUpStk);

        edqte.Clear;
        edqte.SetFocus;
        lbMontant.Caption := '0.00';
        Button1.Enabled := false;

      end;


end;

procedure TfrmSaisieFactureVrac.edqteChange(Sender: TObject);
begin
Button1.Enabled:=False;
end;

procedure TfrmSaisieFactureVrac.edqteKeyPress(Sender: TObject; var Key: Char);
var
  i : integer;
  PsqlPrix:string;


  TarifPrix : TTarif_defPrixArray;
begin
 if NOT (key IN ['0'..'9','.', #13,#8]) then
  key := #0;

 if Key = #13 then
  begin
  //selection du prix de vente selon le typeclt
    PsqlPrix:=' where code_tarif = '+QuotedStr(edTarif.Text)
              + ' and code_art = '+QuotedStr(ed_article.Text);

    vPrixVente := 0;

    TarifPrix := DM.SelectParametragePrixclt(PsqlPrix);

    for I := Low(TarifPrix) to High(TarifPrix) do
      begin
        vPrixVente:=TarifPrix[i].Rprix;
      end;

    gMontant := vPrixVente*StrToFloat(edqte.Text);
    lbMontant.Caption := FloatToStrF(gMontant,ffNumber,15,2);

    Button1.Enabled := True;
  end;
end;

procedure TfrmSaisieFactureVrac.FormShow(Sender: TObject);
begin
  Button1.Enabled := false;

  edqte.SetFocus;
  edDate.DateTime := now;

  edCodeClient.Text := 'CDP';
  ednomClient.Text := 'CLIENT DE PASSAGE';
  edTarif.Text := 'TNORG';

  edCodeMag.Text:='VGB';
  eddesignation_mag.Text:='VRAC GAZ BUTANE';

  ed_article.Text := '001C01';
  eddesignation_art.Text := 'Vrac gaz butane';


end;

end.