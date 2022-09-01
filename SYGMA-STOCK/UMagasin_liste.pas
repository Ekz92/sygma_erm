unit UMagasin_liste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.ComCtrls;

type
  TfrmMagasin_liste = class(TForm)
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edcode: TRichEdit;
    edDesign: TRichEdit;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Button1: TButton;
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
  frmMagasin_liste: TfrmMagasin_liste;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmMagasin_liste.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0] := 'Code';
    Cells[1,0] := 'Désignation';
  end;
end;

procedure TfrmMagasin_liste.FormShow(Sender: TObject);
var
  magasins : TMagasinArray;
  i:integer;
  Psql : string;
begin
  Psql :='';
  magasins := dm.selectMagasins(Psql);
  StringGrid1.RowCount := Length(magasins)+1;
  for I := Low(magasins) to High(magasins) do
    with StringGrid1 do
      begin
        Cells[0,i+1] := magasins[i].SCode_mag;
        Cells[1,i+1] := magasins[i].Sdesignation_mag;
      end;
end;

procedure TfrmMagasin_liste.StringGrid1DrawCell(Sender: TObject; ACol,
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
