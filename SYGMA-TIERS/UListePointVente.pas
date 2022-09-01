unit UListePointVente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmListePointdeVente = class(TForm)
    Label1: TLabel;
    cbClient: TComboBox;
    lbPoint: TListBox;
    lbZone: TListBox;
    procedure FormShow(Sender: TObject);
    procedure cbClientChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListePointdeVente: TfrmListePointdeVente;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmListePointdeVente.cbClientChange(Sender: TObject);
  var
    PsqlClt, PsqlPoint,
    vCodeClt : string;
    Points : TPointVenteArray;

    clts : TClientArray;
    I: Integer;
begin
  lbPoint.Clear;
  lbZone.Clear;

begin

  lbPoint.Clear;
  lbZone.Clear;

  PsqlClt := ' where nom_clt = '+ quotedStr(cbClient.Text);
  clts := dm.selectClients(PsqlClt);

  for I := Low(clts) to High(clts) do
    begin
      vCodeClt := clts[i].SCodeClt;
    end;

  PsqlPoint := ' where code_client = '+quotedStr(vCodeClt);

  Points := dm.selectPoints(PsqlPoint);

  for I := Low(Points) to High(Points) do
    begin
      lbPoint.Items.Add(Points[i].Snom_pint);
      lbZone.Items.Add(Points[i].Snom_zone);
    end;

end;
end;

procedure TfrmListePointdeVente.FormShow(Sender: TObject);
var
  clients : TClientArray;
  Psql : string;
  i:integer;
begin
  Psql := '';
  clients := DM.selectClients(Psql);
  for I := Low(clients) to High(clients) do
    begin
      cbClient.Items.Add(clients[i].SnomClt);
    end;
end;

end.
