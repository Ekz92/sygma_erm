unit UStockcamion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmStockcamion = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    cbVehicule: TComboBox;
    Button1: TButton;
    frxStockCam: TfrxReport;
    frxDBStockCam: TfrxDBDataset;
    QStockCam: TSQLQuery;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmStockcamion: TfrmStockcamion;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmStockcamion.Button1Click(Sender: TObject);
var
  sql : string;
begin
  if trim(cbVehicule.Text)='' then
    sql := 'select * from tb_stock_camion'
  else
    sql := 'select * from tb_stock_camion'
            +' where vehicule = '+QuotedStr(cbVehicule.Text);

  QStockCam.SQL.Clear;
  QStockCam.SQL.Add(sql);
  QStockCam.Open;

  frxStockCam.ShowReport();
end;

procedure TfrmStockcamion.FormShow(Sender: TObject);
var
  Psql : string;
  vehs : TVehiculeArray;
  i:integer;
begin
  Psql := ' ';

  vehs:=dm.SelectVehicule(Psql);

  for I := Low(vehs) to High(vehs) do
    begin
      cbVehicule.Items.Add(vehs[i].SNum_mat) ;
    end;
end;

end.
