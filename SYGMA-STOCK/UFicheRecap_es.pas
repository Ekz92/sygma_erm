unit UFicheRecap_es;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.FMTBcd, Data.DB, Data.SqlExpr, frxClass, frxDBSet;

type
  TfrmFicheRecap_es = class(TForm)
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
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmFicheRecap_es: TfrmFicheRecap_es;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmFicheRecap_es.Button1Click(Sender: TObject);
var
  Sql,SqlSum : string;
begin
if (edcodeClt.Text='') and (edMarque.Text='') then
  begin
    Sql := 'Select * from tb_fichees_recap '
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
    +'SUM(B12E_Of) as TB12E_Of'
    +' from tb_fichees_recap '
    +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date)) ;
  end else
  if edcodeClt.Text<>'' then
  begin
    Sql := 'Select * from tb_fichees_recap '
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
    +'SUM(B12E_Of) as TB12E_Of'
    +' from tb_fichees_recap '
    +' where date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
    +' and code_clt = '+QuotedStr(edcodeClt.Text) ;
  end else
  if edMarque.Text<>'' then
    begin
    Sql := 'Select * from tb_fichees_recap '
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
    +'SUM(B12E_Of) as TB12E_Of'
    +' from tb_fichees_recap '
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

procedure TfrmFicheRecap_es.cbClientCloseUp(Sender: TObject);
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

procedure TfrmFicheRecap_es.cbVehChange(Sender: TObject);
begin
edMarque.Clear;
cbVeh.OnCloseUp(sender);
end;

procedure TfrmFicheRecap_es.cbVehCloseUp(Sender: TObject);
var
  vehs : TVehiculeArray;
  Psql_veh : string;
  i: integer;
begin
//selection du véhicule
    Psql_veh := ' where marque_veh = '+QuotedStr(cbVeh.Text) ;

    vehs:=dm.SelectVehicule(Psql_veh);
    for I := Low(vehs) to High(vehs) do
      begin
        edMarque.Text := vehs[i].SNum_mat;
      end;

      edcodeClt.Clear;
end;

procedure TfrmFicheRecap_es.FormCreate(Sender: TObject);
begin
cbClient.Clear;
cbVeh.Clear;
end;

procedure TfrmFicheRecap_es.FormShow(Sender: TObject);
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

//selection du véhicule
  Psql_veh := '';

  vehs:=dm.SelectVehicule(Psql_veh);
  for I := Low(vehs) to High(vehs) do
    begin
      cbVeh.Items.Add(vehs[i].SMarque);
    end;
end;

end.
