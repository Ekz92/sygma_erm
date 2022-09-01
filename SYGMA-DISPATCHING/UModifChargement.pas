unit UModifChargement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmModifChargement = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    edNumCharg: TEdit;
    edPiece: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmModifChargement: TfrmModifChargement;

implementation

{$R *.dfm}

uses records, UDM, UListeChargementCamion;

procedure TfrmModifChargement.Button1Click(Sender: TObject);
var
  SqlUp :string;
begin
  SqlUp := 'update tb_vte_chargveh set piece = '+QuotedStr(edPiece.Text)
          +' where numCharg = '+edNumCharg.Text;

  dm.UpdateTable(SqlUp);
  frmListeChargementCamion.SpeedButton1.Click;
  Button2.Click;
end;

procedure TfrmModifChargement.Button2Click(Sender: TObject);
begin
edNumCharg.Clear;
edPiece.Clear;
CLOSE;
end;

end.
