unit UListe_client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmListeClient = class(TForm)
    StringGrid: TStringGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edRech: TEdit;
    edCode: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    lbEff: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure edCodeChange(Sender: TObject);
    procedure edRechChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeClient: TfrmListeClient;

implementation

{$R *.dfm}

uses UDM, records;

procedure TfrmListeClient.edCodeChange(Sender: TObject);
var
  Clts : TClientArray;
  Psql :string;
  i:integer;
begin
  Psql := ' where code_clt like '+QuotedStr(edCode.Text+'%')
          +' order by id_clt desc';
  Clts := dm.selectClients(Psql);
  StringGrid.RowCount := Length(Clts)+1       ;
  for I := Low(Clts) to High(Clts) do
    begin
      with StringGrid do
        begin
          Cells[0,i+1] := Clts[i].SCodeClt;
          Cells[1,i+1] := Clts[i].SnomClt;
          Cells[2,i+1] := Clts[i].SadresseClt;
          Cells[3,i+1] := Clts[i].StelClt;
          Cells[4,i+1] := Clts[i].Smail;
          Cells[5,i+1] := Clts[i].ScommentClt;
        end;
    end;
end;

procedure TfrmListeClient.edRechChange(Sender: TObject);
var
  Clts : TClientArray;
  Psql :string;
  i:integer;
begin
  Psql := ' where nom_clt like '+QuotedStr(edRech.Text+'%');
  Clts := dm.selectClients(Psql);
  StringGrid.RowCount := Length(Clts)+1       ;
  for I := Low(Clts) to High(Clts) do
    begin
      with StringGrid do
        begin
          Cells[0,i+1] := Clts[i].SCodeClt;
          Cells[1,i+1] := Clts[i].SnomClt;
          Cells[2,i+1] := Clts[i].SnomClt;
          Cells[3,i+1] := Clts[i].SadresseClt;
          Cells[4,i+1] := Clts[i].StelClt;
          Cells[5,i+1] := Clts[i].Smail;
        end;
    end;

end;

procedure TfrmListeClient.FormCreate(Sender: TObject);
begin
with StringGrid do
  begin
    cells[0,0] := 'Code';
    cells[1,0] := 'Nom';
    cells[2,0] := 'Adresse';
    Cells[3,0] := 'Tel'   ;
    Cells[4,0] := 'Email';
    Cells[5,0] := 'Tarif';
  end;

end;

procedure TfrmListeClient.FormShow(Sender: TObject);
var
  Clts : TClientArray;
  Psql :string;
  i:integer;
begin
  Psql := ' order by nom_clt asc ';
  Clts := dm.selectClients(Psql);
  lbEff.Caption := IntToStr(Length(Clts));
  StringGrid.RowCount := Length(Clts)+1       ;
  for I := Low(Clts) to High(Clts) do
    begin
      with StringGrid do
        begin
          Cells[0,i+1] := Clts[i].SCodeClt;
          Cells[1,i+1] := Clts[i].SnomClt;
          Cells[2,i+1] := Clts[i].SadresseClt;
          Cells[3,i+1] := Clts[i].StelClt;
          Cells[4,i+1] := Clts[i].Smail;
          Cells[5,i+1] := Clts[i].STarif;
        end;
    end;
end;

procedure TfrmListeClient.StringGridDrawCell(Sender: TObject; ACol,
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
