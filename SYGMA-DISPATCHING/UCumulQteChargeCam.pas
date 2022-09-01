unit UCumulQteChargeCam;

interface

uses vcl.forms, Data.FMTBcd, frxChart, frxClass, frxDBSet, Data.DB,
  Data.SqlExpr, Vcl.Controls, Vcl.StdCtrls, Vcl.ComCtrls, System.Classes;

type
  TfrmCumulQteChargeCam = class(TForm)
    frxTableau: TfrxReport;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    btVisualiser: TButton;
    ComboBox1: TComboBox;
    frxChartObject1: TfrxChartObject;
    QCumuleQte: TSQLQuery;
    QCumuleQtecodeArt: TStringField;
    QCumuleQtedesignationart: TStringField;
    QCumuleQteqte: TFMTBCDField;
    frxCumuleQte: TfrxReport;
    frxDBCumuleQte: TfrxDBDataset;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmCumulQteChargeCam: TfrmCumulQteChargeCam;

implementation

{$R *.dfm}


end.
