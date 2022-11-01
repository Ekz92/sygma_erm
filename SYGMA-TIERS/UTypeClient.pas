unit UTypeClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmTypeClient = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edCodeTclt: TEdit;
    edTdesign: TEdit;
    Button1: TButton;
    Button2: TButton;
    Bevel1: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmTypeClient: TfrmTypeClient;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmTypeClient.Button1Click(Sender: TObject);
var
  Tclt : TTypeClient;
begin
if (Trim(edCodeTclt.Text)<>'') and (Trim(edTdesign.Text)<>'') then
  begin
    with Tclt do
      begin
        Scode_tclt := QuotedStr(Trim(edCodeTclt.Text));
        Sdesignation_tclt := QuotedStr(Trim(edTdesign.Text));
      end;
      dm.InsertTypeClient(Tclt);
  end else
  MessageDlg('Erreur, renseigner les champs',mtError,[mbRetry],0);

  Button2.Click;
end;

procedure TfrmTypeClient.Button2Click(Sender: TObject);
begin
  edCodeTclt.Clear;
  edTdesign.Clear;
end;

end.
