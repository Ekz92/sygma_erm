unit UFicheRecapo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmFicheRecapo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    edcodeClt: TEdit;
    cbVeh: TComboBox;
    edMarque: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    frxRecap: TfrxReport;
    frxDBRecap: TfrxDBDataset;
    QRecap: TSQLQuery;
    QSUM: TSQLQuery;
    frxDBSUM: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure cbVehCloseUp(Sender: TObject);
    procedure cbVehChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edcodeCltDblClick(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmFicheRecapo: TfrmFicheRecapo;

implementation

{$R *.dfm}

uses records, UDM, URechClt;

procedure TfrmFicheRecapo.Button1Click(Sender: TObject);
var
  Sql,SqlSum : string;

  Component: TfrxComponent;
  MD1,MD2,mComment :TfrxMemoView;

begin
if (edcodeClt.Text='') and (edMarque.Text='') then
  begin
    Sql := 'Select * from tb_ficheo_recap '
          +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' order by id_fes desc ';

  //
    SqlSum := ' select '
    +'SUM(B3A_Ov ) as TB3A_Ov ,'
    +'SUM(B3A_Op ) as TB3A_Op ,'
    +'SUM(B3A_Of ) as TB3A_Of ,'
    +'SUM(B3_Ov  ) as TB3_Ov  ,'
    +'SUM(B3_Op  ) as TB3_Op  ,'
    +'SUM(B3_Of  ) as TB3_Of  ,'
    +'SUM(B6_Ov  ) as TB6_Ov  ,'
    +'SUM(B6_Op  ) as TB6_Op  ,'
    +'SUM(B6_Of  ) as TB6_Of  ,'
    +'SUM(B6R_Ov ) as TB6R_Ov ,'
    +'SUM(B6R_Op ) as TB6R_Op ,'
    +'SUM(B6R_Of ) as TB6R_Of ,'
    +'SUM(B12_Ov ) as TB12_Ov ,'
    +'SUM(B12_Op ) as TB12_Op ,'
    +'SUM(B12_Of ) as TB12_Of ,'
    +'SUM(B50_Ov ) as TB50_Ov ,'
    +'SUM(B50_Op ) as TB50_Op ,'
    +'SUM(B50_Of ) as TB50_Of ,'
    +'SUM(B25_Ov ) as TB25_Ov ,'
    +'SUM(B25_Op ) as TB25_Op ,'
    +'SUM(B25_Of ) as TB25_Of ,'
    +'SUM(B6E_Ov ) as TB6E_Ov ,'
    +'SUM(B6E_Op ) as TB6E_Op ,'
    +'SUM(B6E_Of ) as TB6E_Of ,'
    +'SUM(B12E_Ov) as TB12E_Ov,'
    +'SUM(B12E_Op) as TB12E_Op,'
    +'SUM(B12E_Of) as TB12E_Of,'
    +'SUM(B14_Ov) as TB14_Ov,'
    +'SUM(B14_Op) as TB14_Op,'
    +'SUM(B14_Of) as TB14_Of,'
    +'SUM(B20_Ov) as TB20_Ov,'
    +'SUM(B20_Op) as TB20_Op, '
    +'SUM(B20_Of) as TB20_Of,'
    +'SUM(B35_Ov) as TB35_Ov,'
    +'SUM(B35_Op) as TB35_Op, '
    +'SUM(B35_Of) as TB35_Of ,'
    +'SUM(B6M_Ov) as TB6M_Ov,'
    +'SUM(B6M_Op) as TB6M_Op,'
    +'SUM(B6M_Of) as TB6M_Of,'
    +'SUM(B12M_Ov) as TB12M_Ov,'
    +'SUM(B12M_Op) as TB12M_Op,'
    +'SUM(B12M_Of) as TB12M_Of,'
    +'SUM(B6T_Ov) as TB6T_Ov,'
    +'SUM(B6T_Op) as TB6T_Op,'
    +'SUM(B6T_Of) as TB6T_Of,'
    +'SUM(B12T_Ov) as TB12T_Ov,'
    +'SUM(B12T_Op) as TB12T_Op,'
    +'SUM(B12T_Of) as TB12T_Of'

    +' from tb_ficheo_recap '
    +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date)) ;
  end else
  if edcodeClt.Text<>'' then
  begin
    Sql := 'Select * from tb_ficheo_recap '
          +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' and code_clt IN ('+edcodeClt.Text+')'
          +' order by id_fes desc ';

  //
    SqlSum := ' select '
    +'SUM(B3A_Ov ) as TB3A_Ov ,'
    +'SUM(B3A_Op ) as TB3A_Op ,'
    +'SUM(B3A_Of ) as TB3A_Of ,'
    +'SUM(B3_Ov  ) as TB3_Ov  ,'
    +'SUM(B3_Op  ) as TB3_Op  ,'
    +'SUM(B3_Of  ) as TB3_Of  ,'
    +'SUM(B6_Ov  ) as TB6_Ov  ,'
    +'SUM(B6_Op  ) as TB6_Op  ,'
    +'SUM(B6_Of  ) as TB6_Of  ,'
    +'SUM(B6R_Ov ) as TB6R_Ov ,'
    +'SUM(B6R_Op ) as TB6R_Op ,'
    +'SUM(B6R_Of ) as TB6R_Of ,'
    +'SUM(B12_Ov ) as TB12_Ov ,'
    +'SUM(B12_Op ) as TB12_Op ,'
    +'SUM(B12_Of ) as TB12_Of ,'
    +'SUM(B50_Ov ) as TB50_Ov ,'
    +'SUM(B50_Op ) as TB50_Op ,'
    +'SUM(B50_Of ) as TB50_Of ,'
    +'SUM(B25_Ov ) as TB25_Ov ,'
    +'SUM(B25_Op ) as TB25_Op ,'
    +'SUM(B25_Of ) as TB25_Of ,'
    +'SUM(B6E_Ov ) as TB6E_Ov ,'
    +'SUM(B6E_Op ) as TB6E_Op ,'
    +'SUM(B6E_Of ) as TB6E_Of ,'
    +'SUM(B12E_Ov) as TB12E_Ov,'
    +'SUM(B12E_Op) as TB12E_Op,'
    +'SUM(B12E_Of) as TB12E_Of,'
    +'SUM(B14_Ov) as TB14_Ov,'
    +'SUM(B14_Op) as TB14_Op,'
    +'SUM(B14_Of) as TB14_Of,'
    +'SUM(B20_Ov) as TB20_Ov,'
    +'SUM(B20_Op) as TB20_Op, '
    +'SUM(B20_Of) as TB20_Of,'
    +'SUM(B35_Ov) as TB35_Ov,'
    +'SUM(B35_Op) as TB35_Op, '
    +'SUM(B35_Of) as TB35_Of ,'
    +'SUM(B6M_Ov) as TB6M_Ov,'
    +'SUM(B6M_Op) as TB6M_Op,'
    +'SUM(B6M_Of) as TB6M_Of,'
    +'SUM(B12M_Ov) as TB12M_Ov,'
    +'SUM(B12M_Op) as TB12M_Op,'
    +'SUM(B12M_Of) as TB12M_Of,'
    +'SUM(B6T_Ov) as TB6T_Ov,'
    +'SUM(B6T_Op) as TB6T_Op,'
    +'SUM(B6T_Of) as TB6T_Of,'
    +'SUM(B12T_Ov) as TB12T_Ov,'
    +'SUM(B12T_Op) as TB12T_Op,'
    +'SUM(B12T_Of) as TB12T_Of'

    +' from tb_ficheo_recap '
    +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
    +' and code_clt IN ('+edcodeClt.Text+')'
  end else
  if edMarque.Text<>'' then
    begin
    Sql := 'Select * from tb_ficheo_recap '
              +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
              +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
              +' and matricule_veh = '+QuotedStr(edMarque.Text)
              +' order by id_fes desc ';

  //
    SqlSum := ' select '
    +'SUM(B3A_Ov ) as TB3A_Ov ,'
    +'SUM(B3A_Op ) as TB3A_Op ,'
    +'SUM(B3A_Of ) as TB3A_Of ,'
    +'SUM(B3_Ov  ) as TB3_Ov  ,'
    +'SUM(B3_Op  ) as TB3_Op  ,'
    +'SUM(B3_Of  ) as TB3_Of  ,'
    +'SUM(B6_Ov  ) as TB6_Ov  ,'
    +'SUM(B6_Op  ) as TB6_Op  ,'
    +'SUM(B6_Of  ) as TB6_Of  ,'
    +'SUM(B6R_Ov ) as TB6R_Ov ,'
    +'SUM(B6R_Op ) as TB6R_Op ,'
    +'SUM(B6R_Of ) as TB6R_Of ,'
    +'SUM(B12_Ov ) as TB12_Ov ,'
    +'SUM(B12_Op ) as TB12_Op ,'
    +'SUM(B12_Of ) as TB12_Of ,'
    +'SUM(B50_Ov ) as TB50_Ov ,'
    +'SUM(B50_Op ) as TB50_Op ,'
    +'SUM(B50_Of ) as TB50_Of ,'
    +'SUM(B25_Ov ) as TB25_Ov ,'
    +'SUM(B25_Op ) as TB25_Op ,'
    +'SUM(B25_Of ) as TB25_Of ,'
    +'SUM(B6E_Ov ) as TB6E_Ov ,'
    +'SUM(B6E_Op ) as TB6E_Op ,'
    +'SUM(B6E_Of ) as TB6E_Of ,'
    +'SUM(B12E_Ov) as TB12E_Ov,'
    +'SUM(B12E_Op) as TB12E_Op,'
    +'SUM(B12E_Of) as TB12E_Of,'
    +'SUM(B14_Ov) as TB14_Ov,'
    +'SUM(B14_Op) as TB14_Op,'
    +'SUM(B14_Of) as TB14_Of,'
    +'SUM(B20_Ov) as TB20_Ov,'
    +'SUM(B20_Op) as TB20_Op, '
    +'SUM(B20_Of) as TB20_Of,'
    +'SUM(B35_Ov) as TB35_Ov,'
    +'SUM(B35_Op) as TB35_Op, '
    +'SUM(B35_Of) as TB35_Of ,'
    +'SUM(B6M_Ov) as TB6M_Ov,'
    +'SUM(B6M_Op) as TB6M_Op,'
    +'SUM(B6M_Of) as TB6M_Of,'
    +'SUM(B12M_Ov) as TB12M_Ov,'
    +'SUM(B12M_Op) as TB12M_Op,'
    +'SUM(B12M_Of) as TB12M_Of,'
    +'SUM(B6T_Ov) as TB6T_Ov,'
    +'SUM(B6T_Op) as TB6T_Op,'
    +'SUM(B6T_Of) as TB6T_Of,'
    +'SUM(B12T_Ov) as TB12T_Ov,'
    +'SUM(B12T_Op) as TB12T_Op,'
    +'SUM(B12T_Of) as TB12T_Of'

    +' from tb_ficheo_recap '
    +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
    +' and matricule_veh = '+QuotedStr(edMarque.Text) ;
    end;

//****************************** Affichage date1 ***********************
Component := frxRecap.FindObject('md1');
  if Component is TfrxMemoView then
  begin
        MD1 := Component as TfrxMemoView;
        MD1.Text := DateToStr(d1.DateTime);
  end;
//*****
Component := frxRecap.FindObject('md2');
  if Component is TfrxMemoView then
  begin
        MD2 := Component as TfrxMemoView;
        MD2.Text := DateToStr(d2.DateTime);
  end;



  QRecap.SQL.Clear;
  QRecap.SQL.Add(Sql);
//  QRecap.SQL.SaveToFile('g:\matricule_veh.txt');
  QRecap.Open;

  QSUM.SQL.Clear;
  QSUM.SQL.Add(SqlSum);
  QSUM.Open;


  frxRecap.ShowReport();
end;

procedure TfrmFicheRecapo.cbVehChange(Sender: TObject);
begin
edMarque.Clear;
cbVeh.OnCloseUp(sender);
end;

procedure TfrmFicheRecapo.cbVehCloseUp(Sender: TObject);
var
  vehs : TVehiculeArray;
  Psql_veh : string;
  i: integer;
begin
//selection du v�hicule
    Psql_veh := ' where marque_veh = '+QuotedStr(cbVeh.Text) ;

    vehs:=dm.SelectVehicule(Psql_veh);
    for I := Low(vehs) to High(vehs) do
      begin
        edMarque.Text := vehs[i].SNum_mat;
      end;

      edcodeClt.Clear;
end;

procedure TfrmFicheRecapo.edcodeCltDblClick(Sender: TObject);
begin
vSourceRclt:='FicheRecapo';
frmRechClt.ShowModal;
end;

procedure TfrmFicheRecapo.FormShow(Sender: TObject);
var
  Psql,Psql_veh : string;
  Clts : TClientArray;
  I: Integer;
  vehs : TVehiculeArray;
begin
  d2.Date := Now;
//selection du v�hicule
  Psql_veh := '';

  vehs:=dm.SelectVehicule(Psql_veh);
  for I := Low(vehs) to High(vehs) do
    begin
      cbVeh.Items.Add(vehs[i].SMarque);
    end;
end;

end.
