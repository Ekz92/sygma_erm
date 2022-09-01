unit URechClt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmRechClt = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edrech_nom: TEdit;
    Edit1: TEdit;
    St_Rech: TStringGrid;
    procedure edrech_nomExit(Sender: TObject);
    procedure St_RechDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure St_RechDblClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmRechClt: TfrmRechClt;
  vSourceRclt : string;

implementation

{$R *.dfm}

uses records, UDM, UFicheEntree, UFicheSortie;

procedure TfrmRechClt.edrech_nomExit(Sender: TObject);
var
  Psql : string;
  Clts : TClientArray;
  I: Integer;
begin
  Psql := ' where nom_clt like '+QuotedStr(edrech_nom.Text+'%');

  Clts := DM.selectClients(Psql);

  St_Rech.RowCount := Length(Clts)+1;

  for I := Low(Clts) to High(Clts) do
    begin
      with St_Rech do
        begin
          Cells[0,i+1]:=Clts[i].SCodeClt;
          Cells[1,i+1]:=Clts[i].SnomClt;
        end;
    end;
end;

procedure TfrmRechClt.St_RechDblClick(Sender: TObject);
begin
  if vSourceRclt='Entree' then
    with frmFicheEntree do
      begin
         edcodeClt.Text := St_Rech.Cells[0,St_Rech.Row];
         edNomClt.Text := St_Rech.Cells[1,St_Rech.Row];
      end else
  if vSourceRclt='Sortie' then
    with frmFicheSortie do
      begin
         edcodeClt.Text := St_Rech.Cells[0,St_Rech.Row];
         edNomClt.Text := St_Rech.Cells[1,St_Rech.Row];
      end;

  Close;
end;

procedure TfrmRechClt.St_RechDrawCell(Sender: TObject; ACol, ARow: Integer;
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
