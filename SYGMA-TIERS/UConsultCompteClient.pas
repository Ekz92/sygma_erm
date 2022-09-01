unit UConsultCompteClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmComnsultCompteClient = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edCode: TEdit;
    edrech_nom: TEdit;
    StringGrid: TStringGrid;
    procedure edCodeChange(Sender: TObject);
    procedure edrech_nomChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmComnsultCompteClient: TfrmComnsultCompteClient;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmComnsultCompteClient.edCodeChange(Sender: TObject);
var
  Ccs : TCompteClientArray;
  Sql_cc :string;
  I: Integer;
begin
  Sql_cc := ' where code_clt like '+QuotedStr(edCode.Text+'%');
  Ccs := DM.SelectCompteClient(Sql_cc);
  StringGrid.RowCount := Length(Ccs)+1;

  for I := Low(Ccs) to High(Ccs) do
    begin
      with StringGrid do
        begin
          Cells[0,i+1]:= Ccs[i].Scode_clt;
          Cells[1,i+1]:= Ccs[i].SNom_clt;
          Cells[2,i+1]:= FloatToStrF(Ccs[i].RSolde,ffNumber,15,2);
        end;
    end;
    if StringGrid.RowCount>1 then StringGrid.FixedRows := 1;
end;

procedure TfrmComnsultCompteClient.edrech_nomChange(Sender: TObject);
var
  Ccs : TCompteClientArray;
  Sql_cc :string;
  I: Integer;
begin
  Sql_cc := ' where nom_clt like '+QuotedStr(edrech_nom.Text+'%');
  Ccs := DM.SelectCompteClient(Sql_cc);
  StringGrid.RowCount := Length(Ccs)+1;

  for I := Low(Ccs) to High(Ccs) do
    begin
      with StringGrid do
        begin
          Cells[0,i+1]:= Ccs[i].Scode_clt;
          Cells[1,i+1]:= Ccs[i].SNom_clt;
          Cells[2,i+1]:= FloatToStrF(Ccs[i].RSolde,ffNumber,15,2);
        end;
    end;
    if StringGrid.RowCount>1 then StringGrid.FixedRows := 1;

end;

procedure TfrmComnsultCompteClient.FormCreate(Sender: TObject);
begin
with StringGrid do
  begin
    Cells[0,0]:='Client';
    Cells[1,0]:='Nom';
    Cells[2,0]:='Montant';
  end;
end;

procedure TfrmComnsultCompteClient.FormShow(Sender: TObject);
var
  Ccs : TCompteClientArray;
  Sql_cc :string;
  I: Integer;
begin
  edCode.Clear;
  edrech_nom.Clear;

  Sql_cc := '';
  Ccs := DM.SelectCompteClient(Sql_cc);
  StringGrid.RowCount := Length(Ccs)+1;

  for I := Low(Ccs) to High(Ccs) do
    begin
      with StringGrid do
        begin
          Cells[0,i+1]:= Ccs[i].Scode_clt;
          Cells[1,i+1]:= Ccs[i].SNom_clt;
          Cells[2,i+1]:= FloatToStrF(Ccs[i].RSolde,ffNumber,15,2);
        end;
    end;
    if StringGrid.RowCount>1 then StringGrid.FixedRows := 1;
end;

procedure TfrmComnsultCompteClient.StringGridDrawCell(Sender: TObject; ACol,
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
