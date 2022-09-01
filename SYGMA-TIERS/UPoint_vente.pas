unit UPoint_vente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPointDeVente = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ednomPoint: TEdit;
    cbZone: TComboBox;
    mComment: TMemo;
    cbClient: TComboBox;
    edCodeClient: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbClientCloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
    Procedure videChamps()  ;
  end;

var
  frmPointDeVente: TfrmPointDeVente;

implementation

{$R *.dfm}

uses records, UDM;

Procedure TfrmPointDeVente.videChamps()  ;
begin
  ednomPoint.Clear;
  edCodeClient.Clear;
  //cbZone.Clear;
  //cbClient.Clear;
  mComment.Clear;
end;


procedure TfrmPointDeVente.Button1Click(Sender: TObject);
var
  Point : TPointVente;
  points : TPointVenteArray;
  SqlPoint : String;

  chk : integer;
begin

  SqlPoint := ' where nom_point='+QuotedStr(ednomPoint.Text)
              +' and zone = '+QuotedStr(cbZone.Text)
              +' and code_client = '+QuotedStr(edCodeClient.Text);

  points := dm.selectPoints(SqlPoint);

  if Length(Points) > 0 then
    begin
      MessageDlg('Ce point existe d�j�',mtError,[mbOK],0);
    end else
    begin
      with Point do
        begin
          Snom_pint := ednomPoint.Text;
          Snom_zone := cbZone.Text;
          Scode_clt := edCodeClient.Text;
          Sadresse := mComment.Text;
        end;

        if (Trim(ednomPoint.Text)<>'') and (Trim(edCodeClient.Text)<>'') and (cbZone.Text<>'') then
          begin
            dm.InsertPointVente(Point);
          end else
          MessageDlg('Vous devez renseigner les champs',mtError,[mbRetry],0);
    end;

    videChamps;
end;

procedure TfrmPointDeVente.cbClientCloseUp(Sender: TObject);
var
  client : TClient;
  nomClt : String;
begin
  nomClt := cbClient.Text;
  client := DM.selectCodeclt(nomClt);
  edCodeClient.Text := client.SCodeClt;
end;

procedure TfrmPointDeVente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cbZone.Clear;
cbClient.Clear;

end;

procedure TfrmPointDeVente.FormShow(Sender: TObject);
  var
    Psql : string;
    clients : TClientArray;
    i,j : integer;

    zones : TZoneArray ;

begin
  Psql := '';
  clients := dm.selectClients(Psql);

  for I := Low(clients) to High(clients) do
    begin
       cbClient.Items.Add(clients[i].SnomClt);
    end;

  zones := dm.selectZones(Psql);

  for I := Low(zones) to High(zones) do
    begin
       cbZone.Items.Add(zones[i].Snom_zone);
    end;
end;

end.
