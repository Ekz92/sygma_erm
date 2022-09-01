unit URechCltAvance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmRechCltAvance = class(TForm)
    StringGrid: TStringGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edrech_nom: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edrech_nomChange(Sender: TObject);
    procedure StringGridDblClick(Sender: TObject);
    procedure StringGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmRechCltAvance: TfrmRechCltAvance;

implementation

{$R *.dfm}

uses records, UDM, UAvance;

procedure TfrmRechCltAvance.edrech_nomChange(Sender: TObject);
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
          Cells[2,i+1]:= Ccs[i].SNum_cc;
        end;
    end;
    if StringGrid.RowCount>1 then StringGrid.FixedRows := 1;
end;

procedure TfrmRechCltAvance.FormCreate(Sender: TObject);
begin
with StringGrid do
  begin
    cells[0,0] := 'code';
    cells[1,0] := 'Nom';
    cells[2,0] := 'N�Compte';
  end;

end;

procedure TfrmRechCltAvance.FormShow(Sender: TObject);
var
  Ccs : TCompteClientArray;
  Sql_cc :string;
  I: Integer;
begin
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
          Cells[2,i+1]:= Ccs[i].SNum_cc;
        end;
    end;
end;

procedure TfrmRechCltAvance.StringGridDblClick(Sender: TObject);
begin
with frmAddAvance do
  begin
     edcodeClt.Text := StringGrid.Cells[0,StringGrid.Row];
     edNomClt.Text := StringGrid.Cells[1,StringGrid.Row];
     edCompteClt.Text := StringGrid.Cells[2,StringGrid.Row];
  end;
  Close;

end;

procedure TfrmRechCltAvance.StringGridDrawCell(Sender: TObject; ACol,
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
