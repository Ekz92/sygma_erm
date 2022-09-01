unit UEntreeCancListe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls;

type
  TfrmEntreeCancListe = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmEntreeCancListe: TfrmEntreeCancListe;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmEntreeCancListe.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Pièce';
    Cells[1,0]:='Article';
    Cells[2,0]:='Motif';
    Cells[3,0]:='Qte';
    Cells[4,0]:='Date';
  end;
end;

procedure TfrmEntreeCancListe.FormShow(Sender: TObject);
var
  Ecs : TEntreeCancArray;
  Psql :string;
  I: Integer;
begin
  Psql := ' Order by date_canc desc';

  Ecs:=dm.SelectEntreeCanc(Psql);
  StringGrid1.RowCount:=Length(Ecs)+1;

  for I := Low(Ecs) to High(Ecs) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1]:=Ecs[i].Snum_piece;
          Cells[1,i+1]:=Ecs[i].Scode_art;
          Cells[2,i+1]:=Ecs[i].Smotif;
          Cells[3,i+1]:=IntToStr(Ecs[i].Nqte);
          Cells[4,i+1]:=Ecs[i].Sdate_canc;
        end;
    end;
if StringGrid1.RowCount>1 then StringGrid1.FixedRows:=1;
end;

procedure TfrmEntreeCancListe.StringGrid1DrawCell(Sender: TObject; ACol,
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
