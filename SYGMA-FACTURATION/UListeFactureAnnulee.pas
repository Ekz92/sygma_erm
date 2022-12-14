unit UListeFactureAnnulee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls;

type
  TfrmListeFactureAnnulee = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeFactureAnnulee: TfrmListeFactureAnnulee;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmListeFactureAnnulee.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Facture';
    Cells[1,0]:='Motif';
    Cells[2,0]:='Date';
    Cells[3,0]:='User';
  end;
end;

procedure TfrmListeFactureAnnulee.FormShow(Sender: TObject);
var
  Fcs : TFactureCancArray;
  Psql : string;
  I: Integer;
begin
  Psql := ' order by date_canc desc';
  Fcs := dm.SelectFacturesCanc(Psql);

  StringGrid1.RowCount:=Length(Fcs)+1;

  for I := Low(Fcs) to High(Fcs) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1]:=fcs[i].Snum_fact;
          Cells[1,i+1]:=fcs[i].Smotif_canc;
          Cells[2,i+1]:=fcs[i].Sdate_canc;
          Cells[3,i+1]:=fcs[i].Suser_canc;
        end;
    end;
  if StringGrid1.RowCount>1 then StringGrid1.FixedRows:=1;
end;

procedure TfrmListeFactureAnnulee.StringGrid1DrawCell(Sender: TObject; ACol,
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
