unit UFacturation_rech_magasin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmFacturationRech_mag = class(TForm)
    St_rech_mag: TStringGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edrech_mag: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edrech_magDblClick(Sender: TObject);
    procedure St_rech_magDblClick(Sender: TObject);
    procedure St_rech_magDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure edrech_magChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmFacturationRech_mag: TfrmFacturationRech_mag;

implementation

{$R *.dfm}

uses records, UDM, USaisieFacture;

procedure TfrmFacturationRech_mag.edrech_magChange(Sender: TObject);
var
  Mags : TMagasinArray;
  i : integer;
  Psql : string;
begin
  Psql := ' Where code_mag like '+QuotedStr(edrech_mag.Text + '%');
  Mags := DM.selectMagasins(Psql);
  St_rech_mag.RowCount := Length(Mags)+1;
  for I := Low(Mags) to High(Mags) do
    begin
      St_rech_mag.Cells[0,i+1]:=MAgs[i].SCode_mag;
      St_rech_mag.Cells[1,i+1]:=MAgs[i].Sdesignation_mag;
    end;
end;

procedure TfrmFacturationRech_mag.edrech_magDblClick(Sender: TObject);
var
  Mags : TMagasinArray;
  i : integer;
  Psql : string;
begin
  Psql := ' Where code_mag like '+QuotedStr(edrech_mag.Text + '%');
  Mags := DM.selectMagasins(Psql);
  St_rech_mag.RowCount := Length(Mags)+1;
  for I := Low(Mags) to High(Mags) do
    begin
      St_rech_mag.Cells[0,i+1]:=MAgs[i].SCode_mag;
      St_rech_mag.Cells[1,i+1]:=MAgs[i].Sdesignation_mag;
    end;
end;

procedure TfrmFacturationRech_mag.FormCreate(Sender: TObject);
begin
with St_rech_mag do
  begin
    cells[0,0] := 'Code';
    cells[1,0] := 'Désignation';
  end;

end;

procedure TfrmFacturationRech_mag.FormShow(Sender: TObject);
var
  Mags : TMagasinArray;
  i : integer;
  Psql : string;
begin
  Psql := ' Where code_mag like '+QuotedStr(edrech_mag.Text + '%');
  Mags := DM.selectMagasins(Psql);
  St_rech_mag.RowCount := Length(Mags)+1;
  for I := Low(Mags) to High(Mags) do
    begin
      St_rech_mag.Cells[0,i+1]:=MAgs[i].SCode_mag;
      St_rech_mag.Cells[1,i+1]:=MAgs[i].Sdesignation_mag;
    end;
edrech_mag.SetFocus;
end;

procedure TfrmFacturationRech_mag.St_rech_magDblClick(Sender: TObject);
begin
with frmSaisieFacture ,St_rech_mag do
  begin
    edcodeMag.Text:= Cells[0,Row];
    eddesignation_mag.Text:= Cells[1,Row];
  end;
  close;
end;

procedure TfrmFacturationRech_mag.St_rech_magDrawCell(Sender: TObject; ACol,
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
