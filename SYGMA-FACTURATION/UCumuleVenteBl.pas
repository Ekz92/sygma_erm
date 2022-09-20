unit UCumuleVenteBl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.ComCtrls,
  Vcl.Buttons;

type
  TfrmCumuleVenteBL = class(TForm)
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    cbClient: TComboBox;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Button1: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    SQLQuery1: TSQLQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmCumuleVenteBL: TfrmCumuleVenteBL;

implementation

{$R *.dfm}

uses UDM, records;

procedure TfrmCumuleVenteBL.Button1Click(Sender: TObject);
begin
with SQLQuery1 do
  begin
    SQL.Clear;
    SQL.Add('select code_art, designation_art, sum(qte_art) as qte,sum(prixt) as prix,f.code_clt,f.nom_clt '
            +' from  tb_facturation_detail d, tb_facturation f '
            +' WHERE f.num_fact = d.num_fact '
            +' and f.nom_clt = '+QuotedStr(cbClient.Text)
            +' and f.date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd', d1.Date) +'00:00:00 ')
            +' and '+ QuotedStr(FormatDateTime('yyyy-mm-dd', d2.Date) +' 23:59:59')
            +' GROUP BY code_art,f.nom_clt '
            );
    Open;
  end;

  frxReport1.ShowReport();

end;

procedure TfrmCumuleVenteBL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
cbClient.Items.Clear;

end;

procedure TfrmCumuleVenteBL.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Code';
    Cells[1,0]:='D�signation';
    Cells[2,0]:='Qte';
    //Cells[3,0]:='PU';
    Cells[3,0]:='PT';
  end;
end;

procedure TfrmCumuleVenteBL.FormShow(Sender: TObject);
var
  clients : TClientArray;
  Psql : string;
  I: Integer;
begin
  Psql :='';
  clients := DM.selectClients(Psql);
  d2.Date := Now;

  for I := Low(clients) to High(clients) do
    begin
      cbClient.Items.Add(clients[i].SnomClt);
    end;
end;

procedure TfrmCumuleVenteBL.SpeedButton1Click(Sender: TObject);
var
  Cumules : TCumuleVenteBLArray;
  Psql : String;
  I: Integer;
begin
  Psql := ' and f.nom_clt = '+QuotedStr(cbClient.Text)
          +' and f.date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd', d1.Date) +' 00:00:00 ')
          +' and '+ QuotedStr(FormatDateTime('yyyy-mm-dd', d2.Date) +' 23:59:59')
          +' and f.statut_canc = 0';

  Cumules := dm.selectCumuleVente(Psql);
  StringGrid1.RowCount := Length(Cumules)+1;

  if StringGrid1.RowCount > 1 then StringGrid1.FixedRows := 1;


  for I := Low(Cumules) to High(Cumules) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := Cumules[i].Scode_art;
          Cells[1,i+1] := Cumules[i].Sdesignation_art;
          Cells[2,i+1] := IntToStr(Cumules[i].Nqte);
          Cells[3,i+1] := FloatToStr(Cumules[i].Rpt);
        end;
    end;
end;

procedure TfrmCumuleVenteBL.StringGrid1DrawCell(Sender: TObject; ACol,
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