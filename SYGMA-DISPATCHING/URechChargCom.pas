unit URechChargCom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls;

type
  TfrmRechChargCom = class(TForm)
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
  frmRechChargCom: TfrmRechChargCom;

implementation

{$R *.dfm}

uses records, UDM, UAddCommandeCamion;

procedure TfrmRechChargCom.FormCreate(Sender: TObject);
begin
with StRech do
  begin
    Cells[0,0] := 'Date';
    Cells[1,0] := 'N°Char';
    Cells[2,0] := 'Pièce';
    Cells[3,0] := 'Véhicule';
    Cells[4,0] := 'Montant';
  end;

end;

procedure TfrmRechChargCom.FormShow(Sender: TObject);
  var
    chargs:TvteChargVehArray;
    i:integer;
    Psql : string;
begin
  Psql :=' where statut_com = 0 order by numCharg desc ';
  chargs :=dm.selectChargementCamion(Psql);
  StRech.RowCount := Length(chargs)+1;

  for I := Low(chargs) to High(chargs) do
    begin
      with StRech do
        begin
          Cells[0,i+1]:=chargs[i].SdateCharg;
          Cells[1,i+1]:=IntToStr(chargs[i].NnumCharg);
          Cells[2,i+1]:=chargs[i].SPiece;
          Cells[3,i+1]:=chargs[i].SVehicule;
          Cells[4,i+1]:=FloatToStr(chargs[i].RMontant);
        end;
    end;
end;

procedure TfrmRechChargCom.StRechDblClick(Sender: TObject);
begin
with frmAddCommandeCamion , StRech do
  begin
      edChargement.Text := Cells[1,Row];
      edPiece.Text:=Cells[2,Row];
      edVéhicule.Text := Cells[3,Row];
      edMontant.Text := Cells[4,Row];
  end;
  Close;

end;

procedure TfrmRechChargCom.StRechDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
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
