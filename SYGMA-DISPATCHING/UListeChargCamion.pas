unit UListeChargCamion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmListeChargCamion = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbType: TComboBox;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    cbVehicule: TComboBox;
    frxReportH: TfrxReport;
    frxDBRapport: TfrxDBDataset;
    QRapport: TSQLQuery;
    frxReportV: TfrxReport;
    DBQFactCam: TfrxDBDataset;
    QFactureCam: TSQLQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeChargCamion: TfrmListeChargCamion;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmListeChargCamion.Button1Click(Sender: TObject);
var
  Sql: string;
  I: Integer;

  Memo: TfrxMemoView;
  Component: TfrxComponent;
begin
//--------------------Traitement de rapport Vertical-----------
  if (cbType.Text='Vertical') and (cbVehicule.Text<>'') then
    Sql:=' Select * from tb_vte_chargveh c, tb_vte_chargvehd cd where vehicule = '+QuotedStr(cbVehicule.Text)
          +' and c.numCharg = cd.numCharg '
          +' and dateCharg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                   +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' order by c.numCharg desc'

  else if (cbType.Text='Vertical') and (cbVehicule.Text='') then
    Sql:=' Select * from tb_vte_chargveh c, tb_vte_chargvehd cd where c.numCharg = cd.numCharg  '
          +' and dateCharg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                   +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' order by c.numCharg desc';
//--------------------Traitement de rapport horizontal---------
  if (cbType.Text='Horizontal') and (cbVehicule.Text<>'') then
    Sql:=' Select * from tb_vte_chargveh where vehicule = '+QuotedStr(cbVehicule.Text)
          +' and dateCharg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                   +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' order by numCharg desc'

  else if (cbType.Text='Horizontal') and (cbVehicule.Text='') then
    Sql:=' Select * from tb_vte_chargveh '
          +' Where dateCharg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                   +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' order by numCharg desc';
  //----------------date debut--------------------------
  Component := frxReportH.FindObject('md1');
    if Component is TfrxMemoView then
      begin
        Memo := Component as TfrxMemoView;
        Memo.Text :=DateToStr(d1.Date);
      end;
  //----------------date fin--------------------------
  Component := frxReportH.FindObject('md2');
    if Component is TfrxMemoView then
      begin
        Memo := Component as TfrxMemoView;
        Memo.Text :=DateToStr(d2.Date);
      end;

   //----------------Vehicule--------------------------
  Component := frxReportH.FindObject('vehicule');
    if Component is TfrxMemoView then
      begin
        Memo := Component as TfrxMemoView;
        Memo.Text :=cbVehicule.Text;
      end;


  //----------------date debut--------------------------
  Component := frxReportV.FindObject('md1');
    if Component is TfrxMemoView then
      begin
        Memo := Component as TfrxMemoView;
        Memo.Text :=DateToStr(d1.Date);
      end;
  //----------------date fin--------------------------
  Component := frxReportV.FindObject('md2');
    if Component is TfrxMemoView then
      begin
        Memo := Component as TfrxMemoView;
        Memo.Text :=DateToStr(d2.Date);
      end;

   //----------------Vehicule--------------------------
  Component := frxReportV.FindObject('vehicule');
    if Component is TfrxMemoView then
      begin
        Memo := Component as TfrxMemoView;
        Memo.Text :=cbVehicule.Text;
      end;

  QRapport.SQL.Clear;
  QRapport.SQL.Add(sql);
  QRapport.Open;

if cbType.Text='Horizontal' then
  frxReportH.ShowReport()
else
  frxReportV.ShowReport();

end;

procedure TfrmListeChargCamion.Button2Click(Sender: TObject);
begin
close;
end;

procedure TfrmListeChargCamion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
cbVehicule.Clear;
end;

procedure TfrmListeChargCamion.FormShow(Sender: TObject);
var
  vehs : TVehiculeArray;
  Psql :string;
  I: Integer;
begin
  Psql:='';
  d2.Date:=Now;
 { Liste de vehicules dans cbox}
  vehs := DM.SelectVehicule(Psql);

  for I := Low(vehs) to High(vehs) do
    begin
      cbVehicule.Items.Add(vehs[i].SNum_mat);
    end;

end;

end.
