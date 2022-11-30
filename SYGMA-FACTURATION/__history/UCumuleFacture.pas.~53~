unit UCumuleFacture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.FMTBcd, Data.DB, Data.SqlExpr, frxClass,
  frxDBSet;

type
  TfrmCumuleFacture = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    edCodeClt: TEdit;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    St_listeFacture: TStringGrid;
    SpeedButton1: TSpeedButton;
    QCumule: TSQLQuery;
    nbLigne: TLabel;
    frxCumule: TfrxReport;
    frxQCumule: TfrxDBDataset;
    QCumulecode_clt: TStringField;
    QCumulenom_clt: TStringField;
    QCumuletotal: TFloatField;
    QCumulepaye: TFloatField;
    QCumulereste: TFMTBCDField;
    cbSolde: TCheckBox;
    procedure edCodeCltDblClick(Sender: TObject);
    procedure St_listeFactureDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }

  end;

var
  frmCumuleFacture: TfrmCumuleFacture;
  gSql : string;
implementation

{$R *.dfm}

uses UrechClientFacture, UDM;

procedure TfrmCumuleFacture.Button1Click(Sender: TObject);
var
    Component: TfrxComponent;
  MD1,MD2 :TfrxMemoView;
begin
//****************************** Affichage date1 ***********************
Component := frxCumule.FindObject('md1');
  if Component is TfrxMemoView then
  begin
        MD1 := Component as TfrxMemoView;
        MD1.Text := DateToStr(d1.DateTime);
  end;
//*****
Component := frxCumule.FindObject('md2');
  if Component is TfrxMemoView then
  begin
        MD2 := Component as TfrxMemoView;
        MD2.Text := DateToStr(d2.DateTime);
  end;

  QCumule.SQL.Clear;
  QCumule.SQL.Add(gSql);
  QCumule.SQL.SaveToFile('g:\TfrmCumuleFacture.txt');
  QCumule.Open;

  frxCumule.ShowReport();
end;

procedure TfrmCumuleFacture.edCodeCltDblClick(Sender: TObject);
begin
gSrcformClt := 'TfrmCumuleFacture' ;
frmRechClientFacture.ShowModal;
end;

procedure TfrmCumuleFacture.FormCreate(Sender: TObject);
begin
with St_listeFacture do
  begin
    Cells[0,0] := 'Code';
    Cells[1,0] := 'Nom';
    Cells[2,0] := 'Total';
    Cells[3,0] := 'Payer';
    Cells[4,0] := 'Reste';
  end;
end;

procedure TfrmCumuleFacture.FormShow(Sender: TObject);
begin
d2.Date := Now;
end;

procedure TfrmCumuleFacture.SpeedButton1Click(Sender: TObject);
var
//  sql : string;
  I: Integer;
begin

if (Trim(edCodeClt.Text) = '') and (cbSolde.Checked=True)then
  gsql :=' select code_clt ,nom_clt, sum(mnt_t) as total, sum(mnt_p) as paye, sum(mnt_r) as reste from tb_facturation '
        +' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date)+' 00:00:00')
        +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date)+' 23:59:59')
        +' and statut_canc = 0'
        +' group by code_clt '
        +' order by nom_clt '
  else
if (Trim(edCodeClt.Text) <> '') and (cbSolde.Checked=True)then
  gsql :=' select code_clt ,nom_clt, sum(mnt_t) as total, sum(mnt_p) as paye, sum(mnt_r) as reste from tb_facturation '
        +' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date)+' 00:00:00')
        +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date)+' 23:59:59')
        +' and statut_canc = 0'
        +' and code_clt in ('+edCodeClt.Text+')'
        +' group by code_clt '
        +' order by nom_clt '
  else
if (Trim(edCodeClt.Text) = '') and (cbSolde.Checked=False)then
  gsql :=' select code_clt ,nom_clt, sum(mnt_t) as total, sum(mnt_p) as paye, sum(mnt_r) as reste from tb_facturation '
        +' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date)+' 00:00:00')
        +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date)+' 23:59:59')
        +' and statut_canc = 0'
        +' and statut <> '+QuotedStr('PA')
        +' group by code_clt '
        +' order by nom_clt '
  else
if (Trim(edCodeClt.Text) <> '') and (cbSolde.Checked=False)then
  gsql :=' select code_clt ,nom_clt, sum(mnt_t) as total, sum(mnt_p) as paye, sum(mnt_r) as reste from tb_facturation '
        +' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date)+' 00:00:00')
        +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date)+' 23:59:59')
        +' and statut_canc = 0'
        +' and code_clt in ('+edCodeClt.Text+')'
        +' and statut <>  '+QuotedStr('PA')
        +' group by code_clt '
        +' order by nom_clt ';


//  QCumule:=TSQLQuery.Create(self);
//  QCumule.SQLConnection := dm.sqlconnection1;

  QCumule.SQL.Clear;
  QCumule.SQL.Add(gsql);
  QCumule.Open;

  St_listeFacture.RowCount := QCumule.RowsAffected +1;
  nbLigne.Caption := IntToStr(QCumule.RowsAffected)+' Lignes';

  for I := 1 to QCumule.RowsAffected do
    begin
      with St_listeFacture do
        begin
          Cells[0,i]:=QCumule.FieldByName('code_clt').AsString;
          Cells[1,i]:=QCumule.FieldByName('nom_clt').AsString;
          Cells[2,i]:= FloatToStrF(QCumule.FieldByName('total').AsFloat ,ffNumber,15,0);
          Cells[3,i]:=FloatToStrF(QCumule.FieldByName('paye').AsFloat ,ffNumber,15,0);
          Cells[4,i]:=FloatToStrF(QCumule.FieldByName('reste').AsFloat ,ffNumber,15,0);
        end;
        QCumule.Next;
    end;
  if St_listeFacture.RowCount>1 then St_listeFacture.FixedRows := 1;

end;

procedure TfrmCumuleFacture.St_listeFactureDrawCell(Sender: TObject; ACol,
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
