unit UDiagramDayFacture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.FMTBcd, frxClass, frxChart, frxDBSet, Data.DB, Data.SqlExpr,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, VCLTee.TeeDBCrossTab;

type
  TfrmDiagramDayFact = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    cbFrequence: TComboBox;
    Button1: TButton;
    Button2: TButton;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    QDay: TSQLQuery;
    frxDBDay: TfrxDBDataset;
    frxDay: TfrxChartObject;
    RDay: TfrxReport;
    DataSource1: TDataSource;
    DBCrossTabSource1: TDBCrossTabSource;
    Chart1: TChart;
    SQLTable1: TSQLTable;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmDiagramDayFact: TfrmDiagramDayFact;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmDiagramDayFact.Button1Click(Sender: TObject);
begin
SQLTable1.Close;
SQLTable1.Open;
end;

end.
