unit URechLotRetourBout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmRechLotRetourBout = class(TForm)
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  frmRechLotRetourBout: TfrmRechLotRetourBout;

implementation

{$R *.dfm}

uses URetourBouteille, records, UDM;

procedure TfrmRechLotRetourBout.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='N? Lot';
    Cells[1,0]:='Camion';
    Cells[2,0]:='Chauffeur';
    Cells[3,0]:='Date';
  end;
end;

procedure TfrmRechLotRetourBout.FormShow(Sender: TObject);
  var
    chs : TvteChargVehArray;
    Psql : string;
  I: Integer;
begin
  Psql :=' order by numCharg desc ';

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

procedure TfrmRechLotRetourBout.StringGrid1DblClick(Sender: TObject);
begin
with frmRetourBouteille do
  begin
    edlot.Text := StringGrid1.Cells[0,StringGrid1.Row];
    edCamion.Text := StringGrid1.Cells[1,StringGrid1.Row];
    edChauf.Text := StringGrid1.Cells[2,StringGrid1.Row];
    edDate.Text := StringGrid1.Cells[3,StringGrid1.Row];
  end;
  close;
end;

procedure TfrmRechLotRetourBout.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
    with Sender As TStringGrid do with canvas do
    begin
      { selection de la couleur de fond}
      if gdFixed in State then
        Brush.Color:=clBtnFace
      else
        if gdSelected in State then
          Brush.Color:=clNavy//$00000046
        else
          if Odd(ARow) then
            Brush.Color :=$006A9BFF//$FFE0FF clgreen
          else
            Brush.Color:=$00FBDA97;//$FFFFE0  clBlue
      {Design du fond}
      FillRect(Rect);
      {Selection de la couleur d'ecriture}
      if gdSelected in State then
        font.Color:=clwhite
        else
        font.Color:=clblack;
      {Design du texte}
      TextOut(Rect.Left,Rect.Top,Cells[ACol,ARow]);
    end;
end;

end.
