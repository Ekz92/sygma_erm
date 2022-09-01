unit URapprochementFicheEs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmRapprochementFicheEs = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    cbClient: TComboBox;
    edcodeClt: TEdit;
    cbVeh: TComboBox;
    edMarque: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    frxLFicheRap: TfrxReport;
    frxDBFicheRap: TfrxDBDataset;
    QFicheRap: TSQLQuery;
    frxDBsum: TfrxDBDataset;
    QSUM: TSQLQuery;
    procedure FormShow(Sender: TObject);
    procedure cbClientKeyPress(Sender: TObject; var Key: Char);
    procedure cbVehKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbVehChange(Sender: TObject);
    procedure cbClientChange(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmRapprochementFicheEs: TfrmRapprochementFicheEs;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmRapprochementFicheEs.Button1Click(Sender: TObject);
var
  Sql,SqlSum : string;
begin
if (edcodeClt.Text='') and (edMarque.Text='') then
  begin
    Sql := 'Select * from tb_fichees_total '
          +' where date_ft between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' order by date_ft desc ';
  //
    SqlSum := ' select '
           	+'sum(B3A_I) as TB3A_I,'
            +'sum(B3_I ) as TB3_I ,'
            +'sum(B6_I ) as TB6_I,'
            +'sum(B6R_I) as TB6R_I,'
            +'sum(B12_I) as TB12_I,'
            +'sum(B25_I) as TB25_I,'
            +'sum(B50_I) as TB50_I,'
            +'sum(B6E_I) as TB6E_I,'
            +'sum(B12E_I) as TB12E_I,'
            +'sum(B14_I) as TB14_I,'
            +'sum(B20_I) as TB20_I,'
            +'sum(B35_I) as TB35_I,'
//            --
            +'sum(B3A_S) as TB3A_S,'
            +'sum(B3_S ) as TB3_S,'
            +'sum(B6_S ) as TB6_S ,'
            +'sum(B6R_S) as TB6R_S,'
            +'sum(B12_S) as TB12_S,'
            +'sum(B25_S) as TB25_S,'
            +'sum(B50_S) as TB50_S,'
            +'sum(B6E_S) as TB6E_S,'
            +'sum(B12E_S) as TB12E_S,'
            +'sum(B14_S) as TB14_S,'
            +'sum(B20_S) as TB20_S,'
            +'sum(B35_S) as TB35_S'
            +' from tb_fichees_total '
    +' where date_ft between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date)) ;
  end else
  if edcodeClt.Text<>'' then
  begin
    Sql := 'Select * from tb_fichees_total '
          +' where date_ft between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' and code_clt = '+QuotedStr(edcodeClt.Text)
          +' order by date_ft desc ';

  //
    SqlSum := ' select '
           	+'sum(B3A_I) as TB3A_I,'
            +'sum(B3_I ) as TB3_I ,'
            +'sum(B6_I ) as TB6_I,'
            +'sum(B6R_I) as TB6R_I,'
            +'sum(B12_I) as TB12_I,'
            +'sum(B25_I) as TB25_I,'
            +'sum(B50_I) as TB50_I,'
            +'sum(B6E_I) as TB6E_I,'
            +'sum(B12E_I) as TB12E_I,'
            +'sum(B14_I) as TB14_I,'
            +'sum(B20_I) as TB20_I,'
            +'sum(B35_I) as TB35_I,'
//            --
            +'sum(B3A_S) as TB3A_S,'
            +'sum(B3_S ) as TB3_S,'
            +'sum(B6_S ) as TB6_S ,'
            +'sum(B6R_S) as TB6R_S,'
            +'sum(B12_S) as TB12_S,'
            +'sum(B25_S) as TB25_S,'
            +'sum(B50_S) as TB50_S,'
            +'sum(B6E_S) as TB6E_S,'
            +'sum(B12E_S) as TB12E_S,'
            +'sum(B14_S) as TB14_S,'
            +'sum(B20_S) as TB20_S,'
            +'sum(B35_S) as TB35_S'
    +' from tb_fichees_total '
    +' where date_ft between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
    +' and code_clt = '+QuotedStr(edcodeClt.Text) ;
  end else
  if edMarque.Text<>'' then
    begin
Sql := 'Select * from tb_fichees_total '
          +' where date_ft between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' and matricule_veh = '+QuotedStr(cbVeh.Text)
          +' order by date_ft desc ';

  //
    SqlSum := ' select '
           	+'sum(B3A_I) as TB3A_I,'
            +'sum(B3_I ) as TB3_I ,'
            +'sum(B6_I ) as TB6_I,'
            +'sum(B6R_I) as TB6R_I,'
            +'sum(B12_I) as TB12_I,'
            +'sum(B25_I) as TB25_I,'
            +'sum(B50_I) as TB50_I,'
            +'sum(B6E_I) as TB6E_I,'
            +'sum(B12E_I) as TB12E_I,'
            +'sum(B14_I) as TB14_I,'
            +'sum(B20_I) as TB20_I,'
            +'sum(B35_I) as TB35_I,'
//            --
            +'sum(B3A_S) as TB3A_S,'
            +'sum(B3_S ) as TB3_S,'
            +'sum(B6_S ) as TB6_S ,'
            +'sum(B6R_S) as TB6R_S,'
            +'sum(B12_S) as TB12_S,'
            +'sum(B25_S) as TB25_S,'
            +'sum(B50_S) as TB50_S,'
            +'sum(B6E_S) as TB6E_S,'
            +'sum(B12E_S) as TB12E_S,'
            +'sum(B14_S) as TB14_S,'
            +'sum(B20_S) as TB20_S,'
            +'sum(B35_S) as TB35_S'
    +' from tb_fichees_total '
    +' where date_ft between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
    +' and matricule_veh = '+QuotedStr(cbVeh.Text) ;
    end;

  QFicheRap.SQL.Clear;
  QFicheRap.SQL.Add(Sql);
//  QRecap.SQL.SaveToFile('g:\matricule_veh.txt');
  QFicheRap.Open;

  QSUM.SQL.Clear;
  QSUM.SQL.Add(SqlSum);
  QSUM.Open;

frxLFicheRap.ShowReport();
end;

procedure TfrmRapprochementFicheEs.cbClientChange(Sender: TObject);
begin
edcodeClt.Clear;
end;

procedure TfrmRapprochementFicheEs.cbClientKeyPress(Sender: TObject;
  var Key: Char);
var
  Psql : string;
  Clts : TClientArray;
  I: Integer;
begin

if key = #13 then
  begin
    Psql := ' where nom_clt = '+QuotedStr(cbClient.Text);

    Clts := DM.selectClients(Psql);

    for I := Low(Clts) to High(Clts) do
      begin
        edcodeClt.Text:=Clts[i].SCodeClt;
      end;

      edMarque.Clear;
  end;
end;

procedure TfrmRapprochementFicheEs.cbVehChange(Sender: TObject);
begin
edMarque.Clear;
end;

procedure TfrmRapprochementFicheEs.cbVehKeyPress(Sender: TObject;
  var Key: Char);
var
  vehs : TVehiculeArray;
  Psql_veh : string;
  i: integer;
begin
if key = #13 then
  begin
//selection du v�hicule
    Psql_veh := ' where Num_Immat_veh = '+QuotedStr(cbVeh.Text) ;

    vehs:=dm.SelectVehicule(Psql_veh);
    for I := Low(vehs) to High(vehs) do
      begin
        edMarque.Text := vehs[i].SMarque;
      end;

      edcodeClt.Clear;
  end;
end;

procedure TfrmRapprochementFicheEs.FormCreate(Sender: TObject);
begin
cbClient.Clear;
cbVeh.Clear;
end;

procedure TfrmRapprochementFicheEs.FormShow(Sender: TObject);
var
  Psql,Psql_veh : string;
  Clts : TClientArray;
  I: Integer;
  vehs : TVehiculeArray;
begin
  d2.Date := Now;
  Psql := '';

  Clts := DM.selectClients(Psql);

  for I := Low(Clts) to High(Clts) do
    begin
      cbClient.Items.Add(Clts[i].SnomClt);
    end;

//selection du v�hicule
  Psql_veh := '';

  vehs:=dm.SelectVehicule(Psql_veh);
  for I := Low(vehs) to High(vehs) do
    begin
      cbVeh.Items.Add(vehs[i].SNum_mat);
    end;
end;

end.