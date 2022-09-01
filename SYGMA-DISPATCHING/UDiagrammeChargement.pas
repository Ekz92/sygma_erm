unit UDiagrammeChargement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, frxChart, frxClass,
  frxDBSet, Data.DB, Data.SqlExpr, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmDiagrammeChargement = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    edtop: TEdit;
    Diagramme: TfrxReport;
    SQLDiag: TSQLQuery;
    frxDiag: TfrxDBDataset;
    frxChartObject1: TfrxChartObject;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmDiagrammeChargement: TfrmDiagrammeChargement;

implementation

{$R *.dfm}

procedure TfrmDiagrammeChargement.Button1Click(Sender: TObject);
var
  req : string ;
begin
  req := 'select sum(tvc.TKilo), tlc.nom_livreur  from tb_vte_chargveh tvc '
         +' inner join tb_livraison_camion tlc on tlc.num_charg = tvc.numCharg '
         +' where tvc.dateCharg between '+QuotedStr(FormatDateTime('yyyy-mm-dd', d1.Date))
                                  +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd', d2.Date))
         +' group by tlc.code_livreur '
         +' LIMIT '+edtop.Text;

with SQLDiag do
  begin
    sql.Clear;
    SQL.Add(req);
    Open;
  end;

  Diagramme.ShowReport();
end;

end.
