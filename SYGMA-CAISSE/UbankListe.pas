unit UbankListe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls;

type
  TfrmListeBank = class(TForm)
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
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
  frmListeBank: TfrmListeBank;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmListeBank.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0] := 'Code bk';
    Cells[1,0] := 'Nom bk';
    Cells[2,0] := 'Compte bk';
    Cells[3,0] := 'Solde';
  end;
end;

procedure TfrmListeBank.FormShow(Sender: TObject);
var
  bks : TBankArray;
  Psql : string;
  i:integer;
begin
  Psql := ' ';
  bks := dm.SelectBank(Psql);
  StringGrid1.RowCount := Length(bks)+1;

  for I := Low(bks) to High(bks) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1]:=bks[i].Scode_bk;
          Cells[1,i+1]:=bks[i].SNom_bk;
          Cells[2,i+1]:=bks[i].SCompte_bk;
          Cells[3,i+1]:=FloatToStrF(bks[i].RSolde,ffNumber,15,2);
        end;
    end;

end;

procedure TfrmListeBank.StringGrid1DrawCell(Sender: TObject; ACol,
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
