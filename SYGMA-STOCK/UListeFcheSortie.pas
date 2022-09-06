unit UListeFcheSortie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmListeFcheSortie = class(TForm)
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
    frxLFicheSortie: TfrxReport;
    frxDBFicheSortie: TfrxDBDataset;
    QFicheSortie: TSQLQuery;
    procedure FormShow(Sender: TObject);
    procedure cbVehKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbVehChange(Sender: TObject);
    procedure cbClientCloseUp(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeFcheSortie: TfrmListeFcheSortie;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmListeFcheSortie.Button1Click(Sender: TObject);
var
  Sql : string;
begin
if (edcodeClt.Text='') and (edMarque.Text='') then
  begin
    Sql := 'select * from tb_fiche_es tfe where type_fes = 1 '
          +' and date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' order by date_fes desc ';
  end else
  if edcodeClt.Text<>'' then
  begin
    Sql := 'select * from tb_fiche_es tfe where type_fes= 1 '
          +' and date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' and code_clt = '+QuotedStr(edcodeClt.Text)
          +' order by date_fes desc ';
  end else
  if edMarque.Text<>'' then
    begin
      Sql := 'select * from tb_fiche_es tfe where type_fes = 1 '
                +' and date_fes between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                +' and matricule_veh = '+QuotedStr(cbVeh.Text)
                +' order by date_fes desc ';
    end;

  QFicheSortie.SQL.Clear;
  QFicheSortie.SQL.Add(Sql);
  QFicheSortie.Open;

  frxLFicheSortie.ShowReport();
end;

procedure TfrmListeFcheSortie.cbClientCloseUp(Sender: TObject);
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

procedure TfrmListeFcheSortie.cbVehChange(Sender: TObject);
begin
edMarque.Clear;
end;

procedure TfrmListeFcheSortie.cbVehKeyPress(Sender: TObject; var Key: Char);
var
  vehs : TVehiculeArray;
  Psql_veh : string;
  i: integer;
begin
if key = #13 then
  begin
//selection du véhicule
    Psql_veh := ' where Num_Immat_veh = '+QuotedStr(cbVeh.Text) ;

    vehs:=dm.SelectVehicule(Psql_veh);
    for I := Low(vehs) to High(vehs) do
      begin
        edMarque.Text := vehs[i].SMarque;
      end;

      edcodeClt.Clear;
  end;
end;

procedure TfrmListeFcheSortie.FormCreate(Sender: TObject);
begin
cbClient.Clear;
cbVeh.Clear;
end;

procedure TfrmListeFcheSortie.FormShow(Sender: TObject);
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
      cbVeh.Items.Add(vehs[i].SNum_mat);
    end;
end;

end.
