unit UListeLotLivraison;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TfrmListeLotLivraison = class(TForm)
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmListeLotLivraison: TfrmListeLotLivraison;

implementation

{$R *.dfm}

uses records, UDM, UConnexion;

procedure TfrmListeLotLivraison.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='N� Lot';
    Cells[1,0]:='Camion';
    Cells[2,0]:='Chauffeur';
    Cells[3,0]:='Date';
  end;
end;

procedure TfrmListeLotLivraison.FormShow(Sender: TObject);
  var
    chs : TvteChargVehArray;
    Psql : string;
  I: Integer;
begin
  Psql :=' where usager = '+QuotedStr(vUsager)
          +' order by numCharg desc ';

  chs := dm.selectChargementCamion(Psql);
  StringGrid1.RowCount := Length(chs)+1;

  for I := Low(chs) to High(chs) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := chs[i].Slettrage;
          Cells[1,i+1] := chs[i].SVehicule;
          Cells[2,i+1] := chs[i].SnomChauf;
          Cells[3,i+1] := chs[i].SdateCharg;
        end;
    end;
end;

end.
