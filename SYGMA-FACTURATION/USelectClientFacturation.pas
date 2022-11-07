unit USelectClientFacturation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmSelectClientFacturation = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edcodeClt: TEdit;
    edNomClt: TEdit;
    StringGrid1: TStringGrid;
    procedure edcodeCltChange(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure edNomCltChange(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edcodeCltExit(Sender: TObject);
    procedure edNomCltExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmSelectClientFacturation: TfrmSelectClientFacturation;
  vFormclt : string;

implementation

{$R *.dfm}

uses records, UDM, USaisieFacture, USaisieFactureService;

procedure TfrmSelectClientFacturation.edcodeCltChange(Sender: TObject);
var
  clients : TClientArray;
  Psql : string;
  i:integer;
begin
  Psql := ' where nom_clt like '+QuotedStr(edNomClt.Text+'%')
          +' and code_clt like '+QuotedStr(edcodeClt.Text+'%');

  clients := DM.selectClients(Psql);
  StringGrid1.RowCount:=Length(clients)+1;
  for I := Low(clients) to High(clients) do
    begin
      StringGrid1.Cells[0,i+1]:=clients[i].SCodeClt;
      StringGrid1.Cells[1,i+1]:=clients[i].SnomClt;
      StringGrid1.Cells[2,i+1]:=clients[i].SadresseClt;
      StringGrid1.Cells[3,i+1]:=clients[i].STarif;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmSelectClientFacturation.edcodeCltExit(Sender: TObject);
var
  clients : TClientArray;
  Psql : string;
  i:integer;
begin
  Psql := ' where nom_clt like '+QuotedStr(edNomClt.Text+'%')
          +' and code_clt like '+QuotedStr(edcodeClt.Text+'%');

  clients := DM.selectClients(Psql);
  StringGrid1.RowCount:=Length(clients)+1;
  for I := Low(clients) to High(clients) do
    begin
      StringGrid1.Cells[0,i+1]:=clients[i].SCodeClt;
      StringGrid1.Cells[1,i+1]:=clients[i].SnomClt;
      StringGrid1.Cells[2,i+1]:=clients[i].SadresseClt;
      StringGrid1.Cells[3,i+1]:=clients[i].STarif;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmSelectClientFacturation.edNomCltChange(Sender: TObject);
var
  clients : TClientArray;
  Psql : string;
  i:integer;
begin
  Psql := ' where nom_clt like '+QuotedStr(edNomClt.Text+'%')
          +' and code_clt like '+QuotedStr(edcodeClt.Text+'%');

  clients := DM.selectClients(Psql);
  StringGrid1.RowCount:=Length(clients)+1;
  for I := Low(clients) to High(clients) do
    begin
      StringGrid1.Cells[0,i+1]:=clients[i].SCodeClt;
      StringGrid1.Cells[1,i+1]:=clients[i].SnomClt;
      StringGrid1.Cells[2,i+1]:=clients[i].SadresseClt;
      StringGrid1.Cells[3,i+1]:=clients[i].STarif;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmSelectClientFacturation.edNomCltExit(Sender: TObject);
var
  clients : TClientArray;
  Psql : string;
  i:integer;
begin
  Psql := ' where nom_clt like '+QuotedStr(edNomClt.Text+'%')
          +' and code_clt like '+QuotedStr(edcodeClt.Text+'%');

  clients := DM.selectClients(Psql);
  StringGrid1.RowCount:=Length(clients)+1;
  for I := Low(clients) to High(clients) do
    begin
      StringGrid1.Cells[0,i+1]:=clients[i].SCodeClt;
      StringGrid1.Cells[1,i+1]:=clients[i].SnomClt;
      StringGrid1.Cells[2,i+1]:=clients[i].SadresseClt;
      StringGrid1.Cells[3,i+1]:=clients[i].STarif;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmSelectClientFacturation.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Code';
    Cells[1,0]:='Nom';
    Cells[2,0]:='Adresse';
    Cells[3,0]:='Tarif';
  end;

end;

procedure TfrmSelectClientFacturation.FormShow(Sender: TObject);
var
  clients : TClientArray;
  Psql : string;
  i:integer;
begin
  edcodeClt.SetFocus;
  Psql := '';
  clients := DM.selectClients(Psql);
  StringGrid1.RowCount:=Length(clients)+1;
  for I := Low(clients) to High(clients) do
    begin
      StringGrid1.Cells[0,i+1]:=clients[i].SCodeClt;
      StringGrid1.Cells[1,i+1]:=clients[i].SnomClt;
      StringGrid1.Cells[2,i+1]:=clients[i].SadresseClt;
      StringGrid1.Cells[3,i+1]:=clients[i].STarif;
    end;
  if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;

    edcodeClt.Clear;
    edNomClt.Clear;
    edNomClt.SetFocus;

end;

procedure TfrmSelectClientFacturation.StringGrid1DblClick(Sender: TObject);
begin
if vFormclt='SFP' then
  begin
    with frmSaisieFacture do
      begin
        edCodeClient.Text:=StringGrid1.Cells[0,StringGrid1.Row];
        ednomClient.Text:=StringGrid1.Cells[1,StringGrid1.Row];
        edTarif.Text:=StringGrid1.Cells[3,StringGrid1.Row];
      end;
  end else
  if vFormclt='SFS' then
    begin
      with frmSaisieFactureService do
        begin
          edCodeClt.Text:=StringGrid1.Cells[0,StringGrid1.Row];
          edNomClt.Text:=StringGrid1.Cells[1,StringGrid1.Row];
        end;
    end;
    close;
end;

procedure TfrmSelectClientFacturation.StringGrid1DrawCell(Sender: TObject; ACol,
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
