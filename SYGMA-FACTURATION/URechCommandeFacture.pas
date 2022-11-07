unit URechCommandeFacture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls;

type
  TfrmRechCommandeFacture = class(TForm)
    Panel1: TPanel;
    StRech: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StRechDblClick(Sender: TObject);
    procedure StRechDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmRechCommandeFacture: TfrmRechCommandeFacture;
  gFormSrc : string;

implementation

{$R *.dfm}

uses UDM, records, USaisieFacture, UCumulVenteCmd;

procedure TfrmRechCommandeFacture.FormCreate(Sender: TObject);
begin
with StRech do
  begin
    Cells[0,0] := 'Date';
    Cells[1,0] := 'N°Cmd';
    Cells[2,0] := 'Pièce';
    Cells[3,0] := 'Véhicule';
  end;
end;

procedure TfrmRechCommandeFacture.FormShow(Sender: TObject);
var
  Coms : TCommandeCamionArray;
  Psql : string;
  I: Integer;
begin
  if gFormSrc = 'frmCumulVenteCmd' then
    Psql := ' order by num_comc desc '
  else
    Psql := ' Where statut_cmd = 0 order by num_comc desc '  ;

  Coms := dm.SelectCommandeCamion(Psql);
  StRech.RowCount := Length(Coms)+1;

  for I := Low(Coms) to High(Coms) do
    begin
      with StRech do
        begin
          Cells[0,i+1]:=Coms[i].Sdate_com;
          Cells[1,i+1]:=IntToStr(Coms[i].Nnum_comc);
          Cells[2,i+1]:=Coms[i].Spiece;
          Cells[3,i+1]:=Coms[i].Svehicule;
        end;
    end;
if StRech.RowCount > 1 then StRech.FixedRows := 1;

end;

procedure TfrmRechCommandeFacture.StRechDblClick(Sender: TObject);
begin
if gFormSrc = 'frmSaisieFacture' then
  begin
    with frmSaisieFacture ,StRech do
      begin
        edCommande.Text := Cells[1,Row];
        edveh.Text := Cells[3,Row];
      end
  end else
if gFormSrc = 'frmCumulVenteCmd' then
  begin
    with frmCumulVenteCmd, StRech do
      begin
        edNumCmd.Text := Cells[1,Row];
        edveh.Text := Cells[3,Row];
      end;
  end;

    Close;
end;

procedure TfrmRechCommandeFacture.StRechDrawCell(Sender: TObject; ACol,
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
