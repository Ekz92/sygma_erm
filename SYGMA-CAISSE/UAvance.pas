unit UAvance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAddAvance = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edcodeClt: TEdit;
    edNomClt: TEdit;
    edCompteClt: TEdit;
    edMontant: TEdit;
    cbTypEncais: TComboBox;
    edLibelle: TEdit;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edcodeCltDblClick(Sender: TObject);
    procedure edMontantKeyPress(Sender: TObject; var Key: Char);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmAddAvance: TfrmAddAvance;

implementation

{$R *.dfm}

uses records, UConnexion, UDM, URechCltAvance;

procedure TfrmAddAvance.Button1Click(Sender: TObject);
var
  avd : TAvanceDetail;
  solde : Real;
  cc:TCompteClientArray;
  Sql_cc,SqlUpdate_cc : string;
  I: Integer;
  maxIdAvance : TMaxIdAvance;
  vOpe : integer;

  rc : TReleve_client;
  EtatJrn : TEtatJournal;
begin

maxIdAvance := dm.SelectMaxIdAvance;
vOpe := maxIdAvance.NMaxId + 1;

if (edcodeClt.Text<>'') and (edNomClt.Text<>'') and (edLibelle.Text<>'') and (cbTypEncais.Text<>'') then
begin
  if MessageDlg('Etes-vous sûr de valider cette opération ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    with avd do
      begin
        Sdate_ccd := QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', DateTimePicker1.Date));
        Nope := vOpe;
        Scode_clt := QuotedStr(edcodeClt.Text);
        Snom_clt := QuotedStr(edNomClt.Text);
        Scompte_clt := QuotedStr(edCompteClt.Text);
        Rmontant := StrToFloat(edMontant.Text);
        Scode_user := QuotedStr(vUsager);
        Nstatut_canc := 0;
      end;
      dm.InsertAvanceDetail(avd);

//      Etat journal
    with EtatJrn do
      begin
        Sdate_ej:= DateToStr(DateTimePicker1.Date);
        Snum_ope := IntToStr(vOpe);
        Snum_piece := '';
        Slibelle := edLibelle.Text;
        Sdebit := '-';
        Scredit := edMontant.Text;
        Ssens:='C';
        Susager := vUsager;
      end;
    dm.InsertEtatJournal(EtatJrn); //Insertion dans etat journal

     {Mise à jour du solde dU COMPTE CLIENT}
      Sql_cc := ' Where num_cc = '+QuotedStr(edCompteClt.Text);
      cc := dm.SelectCompteClient(Sql_cc);

      for I := Low(cc) to High(cc) do
        begin
          solde := cc[i].RSolde;
        end;

        SqlUpdate_cc := 'Update tb_compte_client set '
                          +'solde = '+FloatToStr(solde + StrToFloat(edMontant.Text))
                          +' where num_cc = '+QuotedStr(edCompteClt.Text);

        dm.UpdateTable(SqlUpdate_cc);

        {Insertion dans la table des relevés}
        with rc do
          begin
            SCode_client:=QuotedStr(edcodeClt.Text);
            Snom_client:=QuotedStr(edNomClt.Text);
            SDate_rs:=QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date));
            SOperation:=IntToStr(vOpe);
            SCaisse:=QuotedStr('Trésorerie');
            SPiece:=QuotedStr(IntToStr(vOpe));
            SAvance_debit:=QuotedStr('-');
            SAvance_credit:=QuotedStr(edMontant.Text);
            SFactRet_debit:=QuotedStr('-') ;
            SFactRet_credit:=QuotedStr('-');
            SLibelle:=QuotedStr(edLibelle.Text);
          end;
          dm.InsertReleveClient(rc);
          Button2.Click;
  end;
end else
begin
  MessageDlg('Tous les champs sont obligatoire',mtError,[mbRetry],0);
end;

end;

procedure TfrmAddAvance.Button2Click(Sender: TObject);
begin
edcodeClt.Clear;
edNomClt.Clear;
edCompteClt.Clear;
edMontant.Clear;
edLibelle.Clear;

end;

procedure TfrmAddAvance.edcodeCltDblClick(Sender: TObject);
begin
frmRechCltAvance.ShowModal;
end;

procedure TfrmAddAvance.edMontantKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button1.Click;
end;

procedure TfrmAddAvance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cbTypEncais.Clear;
end;

procedure TfrmAddAvance.FormShow(Sender: TObject);
var
  PsqlTencs : String;
  Tencs : TTypeEncaissementArray;
  i:integer;
begin
//**************** Affichage dy type d'encaissement
  DateTimePicker1.Date := Now;
  PsqlTencs :='';
  Tencs := dm.SelectTypeEncaissement(PsqlTencs);
  for I := Low(Tencs) to High(Tencs) do
    begin
      cbTypEncais.Items.Add(Tencs[i].Slibelle_tenc);
    end;
end;

end.
