unit UFicheRecapi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.FMTBcd, Data.DB, Data.SqlExpr, frxClass, frxDBSet;

type
  TfrmFicheRecapi = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    Label3: TLabel;
    cbClient: TComboBox;
    Label4: TLabel;
    edcodeClt: TEdit;
    Label5: TLabel;
    cbVeh: TComboBox;
    edMarque: TEdit;
    Label6: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    frxRecap: TfrxReport;
    frxDBRecap: TfrxDBDataset;
    QRecap: TSQLQuery;
    QSUM: TSQLQuery;
    frxDBSUM: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbVehChange(Sender: TObject);
    procedure cbClientCloseUp(Sender: TObject);
    procedure cbVehCloseUp(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmFicheRecapi: TfrmFicheRecapi;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmFicheRecapi.Button1Click(Sender: TObject);
var
  Sql,SqlSum : string;
begin
if (edcodeClt.Text='') and (edMarque.Text='') then
  begin
    Sql := 'Select * from tb_fichei_recap '
          +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' order by id_fes desc ';

  //
    SqlSum := ' select '
    +'SUM(B3A_Iv ) as TB3A_Iv ,'
    +'SUM(B3A_Ip ) as TB3A_Ip ,'
    +'SUM(B3A_If ) as TB3A_If ,'
    +'SUM(B3_Iv  ) as TB3_Iv  ,'
    +'SUM(B3_Ip  ) as TB3_Ip  ,'
    +'SUM(B3_If  ) as TB3_If  ,'
    +'SUM(B6_Iv  ) as TB6_Iv  ,'
    +'SUM(B6_Ip  ) as TB6_Ip  ,'
    +'SUM(B6_If  ) as TB6_If  ,'
    +'SUM(B6R_Iv ) as TB6R_Iv ,'
    +'SUM(B6R_Ip ) as TB6R_Ip ,'
    +'SUM(B6R_If ) as TB6R_If ,'
    +'SUM(B12_Iv ) as TB12_Iv ,'
    +'SUM(B12_Ip ) as TB12_Ip ,'
    +'SUM(B12_If ) as TB12_If ,'
    +'SUM(B50_Iv ) as TB50_Iv ,'
    +'SUM(B50_Ip ) as TB50_Ip ,'
    +'SUM(B50_If ) as TB50_If ,'
    +'SUM(B25_Iv ) as TB25_Iv ,'
    +'SUM(B25_Ip ) as TB25_Ip ,'
    +'SUM(B25_If ) as TB25_If ,'
    +'SUM(B6E_Iv ) as TB6E_Iv ,'
    +'SUM(B6E_Ip ) as TB6E_Ip ,'
    +'SUM(B6E_If ) as TB6E_If ,'
    +'SUM(B12E_Iv) as TB12E_Iv,'
    +'SUM(B12E_Ip) as TB12E_Ip,'
    +'SUM(B12E_If) as TB12E_If,'
    +'SUM(B14_Iv) as TB14_Iv,'
    +'SUM(B14_Ip) as TB14_Ip,'
    +'SUM(B14_If) as TB14_If,'
	  +'SUM(B20_Iv) as TB20_Iv, '
	  +'SUM(B20_Ip) as TB20_Ip,'
	  +'SUM(B20_If) as TB20_If ,'
    +'SUM(B35_Iv) as TB35_Iv,'
    +'SUM(B35_Ip) as TB35_Ip,'
    +'SUM(B35_If) as TB35_If,'
    +'SUM(B6M_Iv) as TB6M_Iv,'
    +'SUM(B6M_Ip) as TB6M_Ip,'
    +'SUM(B6M_If) as TB6M_If,'
    +'SUM(B12M_Iv) as TB12M_Iv,'
    +'SUM(B12M_Ip) as TB12M_Ip,'
    +'SUM(B12M_If) as TB12M_If,'
    +'SUM(B6T_Iv) as TB6T_Iv,'
    +'SUM(B6T_Ip) as TB6T_Ip,'
    +'SUM(B6T_If) as TB6T_If,'
    +'SUM(B12T_Iv) as TB12T_Iv,'
    +'SUM(B12T_Ip) as TB12T_Ip,'
    +'SUM(B12T_If) as TB12T_If'

    +' from tb_fichei_recap '
    +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date)) ;
  end else
  if edcodeClt.Text<>'' then
  begin
    Sql := 'Select * from tb_fichei_recap '
          +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' and code_clt = '+QuotedStr(edcodeClt.Text)
          +' order by id_fes desc ';

  //
    SqlSum := ' select '
    +'SUM(B3A_Iv ) as TB3A_Iv ,'
    +'SUM(B3A_Ip ) as TB3A_Ip ,'
    +'SUM(B3A_If ) as TB3A_If ,'
    +'SUM(B3_Iv  ) as TB3_Iv  ,'
    +'SUM(B3_Ip  ) as TB3_Ip  ,'
    +'SUM(B3_If  ) as TB3_If  ,'
    +'SUM(B6_Iv  ) as TB6_Iv  ,'
    +'SUM(B6_Ip  ) as TB6_Ip  ,'
    +'SUM(B6_If  ) as TB6_If  ,'
    +'SUM(B6R_Iv ) as TB6R_Iv ,'
    +'SUM(B6R_Ip ) as TB6R_Ip ,'
    +'SUM(B6R_If ) as TB6R_If ,'
    +'SUM(B12_Iv ) as TB12_Iv ,'
    +'SUM(B12_Ip ) as TB12_Ip ,'
    +'SUM(B12_If ) as TB12_If ,'
    +'SUM(B50_Iv ) as TB50_Iv ,'
    +'SUM(B50_Ip ) as TB50_Ip ,'
    +'SUM(B50_If ) as TB50_If ,'
    +'SUM(B25_Iv ) as TB25_Iv ,'
    +'SUM(B25_Ip ) as TB25_Ip ,'
    +'SUM(B25_If ) as TB25_If ,'
    +'SUM(B6E_Iv ) as TB6E_Iv ,'
    +'SUM(B6E_Ip ) as TB6E_Ip ,'
    +'SUM(B6E_If ) as TB6E_If ,'
    +'SUM(B12E_Iv) as TB12E_Iv,'
    +'SUM(B12E_Ip) as TB12E_Ip,'
    +'SUM(B12E_If) as TB12E_If,'
    +'SUM(B14_Iv) as TB14_Iv,'
    +'SUM(B14_Ip) as TB14_Ip,'
    +'SUM(B14_If) as TB14_If,'
	  +'SUM(B20_Iv) as TB20_Iv, '
	  +'SUM(B20_Ip) as TB20_Ip,'
	  +'SUM(B20_If) as TB20_If ,'
    +'SUM(B35_Iv) as TB35_Iv,'
    +'SUM(B35_Ip) as TB35_Ip,'
    +'SUM(B35_If) as TB35_If,'
    +'SUM(B6M_Iv) as TB6M_Iv,'
    +'SUM(B6M_Ip) as TB6M_Ip,'
    +'SUM(B6M_If) as TB6M_If,'
    +'SUM(B12M_Iv) as TB12M_Iv,'
    +'SUM(B12M_Ip) as TB12M_Ip,'
    +'SUM(B12M_If) as TB12M_If,'
    +'SUM(B6T_Iv) as TB6T_Iv,'
    +'SUM(B6T_Ip) as TB6T_Ip,'
    +'SUM(B6T_If) as TB6T_If,'
    +'SUM(B12T_Iv) as TB12T_Iv,'
    +'SUM(B12T_Ip) as TB12T_Ip,'
    +'SUM(B12T_If) as TB12T_If'

    +' from tb_fichei_recap '
    +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
    +' and code_clt = '+QuotedStr(edcodeClt.Text) ;
  end else
  if edMarque.Text<>'' then
    begin
    Sql := 'Select * from tb_fichei_recap '
              +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
              +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
              +' and matricule_veh = '+QuotedStr(edMarque.Text)
              +' order by id_fes desc ';

  //
    SqlSum := ' select '
    +'SUM(B3A_Iv ) as TB3A_Iv ,'
    +'SUM(B3A_Ip ) as TB3A_Ip ,'
    +'SUM(B3A_If ) as TB3A_If ,'
    +'SUM(B3_Iv  ) as TB3_Iv  ,'
    +'SUM(B3_Ip  ) as TB3_Ip  ,'
    +'SUM(B3_If  ) as TB3_If  ,'
    +'SUM(B6_Iv  ) as TB6_Iv  ,'
    +'SUM(B6_Ip  ) as TB6_Ip  ,'
    +'SUM(B6_If  ) as TB6_If  ,'
    +'SUM(B6R_Iv ) as TB6R_Iv ,'
    +'SUM(B6R_Ip ) as TB6R_Ip ,'
    +'SUM(B6R_If ) as TB6R_If ,'
    +'SUM(B12_Iv ) as TB12_Iv ,'
    +'SUM(B12_Ip ) as TB12_Ip ,'
    +'SUM(B12_If ) as TB12_If ,'
    +'SUM(B50_Iv ) as TB50_Iv ,'
    +'SUM(B50_Ip ) as TB50_Ip ,'
    +'SUM(B50_If ) as TB50_If ,'
    +'SUM(B25_Iv ) as TB25_Iv ,'
    +'SUM(B25_Ip ) as TB25_Ip ,'
    +'SUM(B25_If ) as TB25_If ,'
    +'SUM(B6E_Iv ) as TB6E_Iv ,'
    +'SUM(B6E_Ip ) as TB6E_Ip ,'
    +'SUM(B6E_If ) as TB6E_If ,'
    +'SUM(B12E_Iv) as TB12E_Iv,'
    +'SUM(B12E_Ip) as TB12E_Ip,'
    +'SUM(B12E_If) as TB12E_If,'
    +'SUM(B14_Iv) as TB14_Iv,'
    +'SUM(B14_Ip) as TB14_Ip,'
    +'SUM(B14_If) as TB14_If,'
	  +'SUM(B20_Iv) as TB20_Iv, '
	  +'SUM(B20_Ip) as TB20_Ip,'
	  +'SUM(B20_If) as TB20_If ,'
    +'SUM(B35_Iv) as TB35_Iv,'
    +'SUM(B35_Ip) as TB35_Ip,'
    +'SUM(B35_If) as TB35_If,'
    +'SUM(B6M_Iv) as TB6M_Iv,'
    +'SUM(B6M_Ip) as TB6M_Ip,'
    +'SUM(B6M_If) as TB6M_If,'
    +'SUM(B12M_Iv) as TB12M_Iv,'
    +'SUM(B12M_Ip) as TB12M_Ip,'
    +'SUM(B12M_If) as TB12M_If,'
    +'SUM(B6T_Iv) as TB6T_Iv,'
    +'SUM(B6T_Ip) as TB6T_Ip,'
    +'SUM(B6T_If) as TB6T_If,'
    +'SUM(B12T_Iv) as TB12T_Iv,'
    +'SUM(B12T_Ip) as TB12T_Ip,'
    +'SUM(B12T_If) as TB12T_If'

    +' from tb_fichei_recap '
    +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
    +' and matricule_veh = '+QuotedStr(edMarque.Text) ;
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

procedure TfrmFicheRecapi.cbClientCloseUp(Sender: TObject);
var
  Psql : string;
  Clts : TClientArray;
  I: Integer;
begin

    Psql := ' where nom_clt = '+QuotedStr(cbClient.Text);

    Clts := DM.selectClients(Psql);

    for I := Low(Clts) to High(Clts) do
      begin
        edcodeClt.Text:=Clts[i].SCodeClt;
      end;

      edMarque.Clear;
end;

procedure TfrmFicheRecapi.cbVehChange(Sender: TObject);
begin
edMarque.Clear;
cbVeh.OnCloseUp(sender);
end;

procedure TfrmFicheRecapi.cbVehCloseUp(Sender: TObject);
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

procedure TfrmFicheRecapi.FormCreate(Sender: TObject);
begin
cbClient.Clear;
cbVeh.Clear;
end;

procedure TfrmFicheRecapi.FormShow(Sender: TObject);
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
      cbVeh.Items.Add(vehs[i].SMarque);
    end;
end;

end.
