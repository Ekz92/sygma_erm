unit UaddBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAddBank = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    edcodebk: TEdit;
    edNomBk: TEdit;
    edCompteBk: TEdit;
    edSoldeBk: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmAddBank: TfrmAddBank;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmAddBank.Button1Click(Sender: TObject);
var
  bk : TBank;
begin
if (Trim(edcodebk.Text)<>'') and (Trim(edNomBk.Text)<>'') and (Trim(edCompteBk.Text)<>'') and (Trim(edSoldeBk.Text)<>'') then
  begin
    With bk do
      begin
        Scode_bk := edcodebk.Text;
        SNom_bk := edNomBk.Text;
        SCompte_bk := edCompteBk.Text;
        RSolde := StrToFloat(edSoldeBk.Text);
      end;
    if MessageDlg('Confirmez-vous la cr�ation de cette banque?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        dm.InsertBank(bk);
        Button2.Click;
      end;
  end else
  MessageDlg('Tous les champs sont obligatoires',mtError,[mbOK],0);
end;

end.