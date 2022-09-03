unit UEtatJournal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.FMTBcd,
  frxClass, frxDBSet, Data.DB, Data.SqlExpr;

type
  TfrmEtatJournal = class(TForm)
    d1: TDateTimePicker;
    Label1: TLabel;
    d2: TDateTimePicker;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    QJournal: TSQLQuery;
    frxJournal: TfrxReport;
    frxDBJournal: TfrxDBDataset;
    frxDBDSumD: TfrxDBDataset;
    QSumD: TSQLQuery;
    QSumC: TSQLQuery;
    frxDBDSumC: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmEtatJournal: TfrmEtatJournal;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmEtatJournal.Button1Click(Sender: TObject);
begin
frxJournal.ShowReport();
end;

procedure TfrmEtatJournal.FormShow(Sender: TObject);
begin
d2.Date := Now;
end;

end.
