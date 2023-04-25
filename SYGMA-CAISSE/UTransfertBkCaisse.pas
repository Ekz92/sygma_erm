unit UTransfertBkCaisse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmTransfertBkCaisse = class(TForm)
    Label1: TLabel;
    cbSens: TComboBox;
    Label2: TLabel;
    cbBk: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    edCode_bk: TEdit;
    edRIB: TEdit;
    Label5: TLabel;
    edMontant: TEdit;
    Bevel1: TBevel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure cbBkCloseUp(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmTransfertBkCaisse: TfrmTransfertBkCaisse;

implementation

{$R *.dfm}

uses UDM, records;

procedure TfrmTransfertBkCaisse.cbBkCloseUp(Sender: TObject);
var
  bks : TBankArray;
  Psql : string;
  i:integer;
begin
  Psql := ' where nom_bk = '+QuotedStr(cbBk.Text);
  bks := dm.SelectBank(Psql);

  for I := Low(bks) to High(bks) do
    begin
      edCode_bk.Text:= bks[i].Scode_bk;
      edRIB.Text :=bks[i].SCompte_bk;
    end;
end;

procedure TfrmTransfertBkCaisse.FormShow(Sender: TObject);
var
  bks : TBankArray;
  Psql : string;
  i:integer;
begin
  Psql := ' ';
  bks := dm.SelectBank(Psql);

  for I := Low(bks) to High(bks) do
    begin
       cbBk.Items.Add(bks[i].SNom_bk);
    end;
end;

end.