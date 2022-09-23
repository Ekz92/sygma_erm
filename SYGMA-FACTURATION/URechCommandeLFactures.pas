unit URechCommandeLFactures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls;

type
  TfrmRechCommandeLFactures = class(TForm)
    Panel1: TPanel;
    StRech: TStringGrid;
    procedure StRechDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure StRechDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmRechCommandeLFactures: TfrmRechCommandeLFactures;

implementation

{$R *.dfm}

uses UListeFactureCommande, records, UDM;

procedure TfrmRechCommandeLFactures.FormCreate(Sender: TObject);
begin
with StRech do
  begin
    Cells[0,0] := 'Date';
    Cells[1,0] := 'N�Cmd';
    Cells[2,0] := 'Pi�ce';
    Cells[3,0] := 'V�hicule';
    Cells[4,0] := 'Statut';
  end;
end;

procedure TfrmRechCommandeLFactures.FormShow(Sender: TObject);
var
  Coms : TCommandeCamionArray;
  Psql : string;
  I: Integer;
begin
  Psql := ' order by num_comc desc '  ;
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
          if Coms[i].Nstatut_cmd = 0  then Cells[4,i+1]:='En cours' else Cells[4,i+1]:='C�tur�e'
        end;
    end;
if StRech.RowCount > 1 then StRech.FixedRows := 1;
end;

procedure TfrmRechCommandeLFactures.StRechDblClick(Sender: TObject);
begin
  with frmListeFactureCommande , StRech do
    begin
      edCommande.Text := Cells[1,Row];
      edvehicule.Text := Cells[3,Row];
      edStatutCmd.Text := Cells[4,Row];
    end;
    Close;
end;

procedure TfrmRechCommandeLFactures.StRechDrawCell(Sender: TObject; ACol, ARow: Integer;
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
