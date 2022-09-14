unit URapportParClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, frxClass, frxDBSet,
  Data.DB, Data.SqlExpr, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmRapportParClient = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    cbTout: TCheckBox;
    edDesign_mag: TEdit;
    cbcode_mag: TComboBox;
    GroupBox2: TGroupBox;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    cbnomclient: TComboBox;
    edcode_client: TEdit;
    Button1: TButton;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    QRapport: TSQLQuery;
    Rapport: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QHeader: TSQLQuery;
    frxDBDataset2: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure cbcode_magCloseUp(Sender: TObject);
    procedure cbcode_magChange(Sender: TObject);
    procedure cbcode_magKeyPress(Sender: TObject; var Key: Char);
    procedure cbnomclientCloseUp(Sender: TObject);
    procedure cbnomclientKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure cbToutClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmRapportParClient: TfrmRapportParClient;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmRapportParClient.Button1Click(Sender: TObject);
begin
  if cbTout.Checked then
    begin
     with QRapport ,SQL do
        begin
        Clear;
        Add('select * from tb_bl_detail bls, tb_bl bl '
            +' where bl.num_bl = bls.num_bl '
            +' AND bl.code_clt = '+ QuotedStr(edcode_client.Text)
            +' AND bl.date_bl BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
                        +' and '+ QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'00:00:00')
  //          +' AND bls.code_mag = '+QuotedStr(cbcode_mag.Text)
            )   ;
        end;

       with QHeader ,SQL do
        begin
        clear;
          Add('select * from tb_bl_detail bls, tb_bl bl    '
              +'where bl.num_bl = bls.num_bl'
              +' AND bl.code_clt = '+ QuotedStr(edcode_client.Text)
              +' AND bl.date_bl BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
                          +' and '+ QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'00:00:00')
  //            +' AND bls.code_mag = '+QuotedStr(cbcode_mag.Text)
              )    ;
        end;
      end else
      begin
       with QRapport ,SQL do
          begin
          Clear;
          Add('select * from tb_bl_detail bls, tb_bl bl '
              +' where bl.num_bl = bls.num_bl '
              +' AND bl.code_clt = '+ QuotedStr(edcode_client.Text)
              +' AND bl.date_bl BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
                          +' and '+ QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'00:00:00')
              +' AND bls.code_mag = '+QuotedStr(cbcode_mag.Text))   ;
          end;

         with QHeader ,SQL do
          begin
          clear;
            Add('select * from tb_bl_detail bls, tb_bl bl    '
                +'where bl.num_bl = bls.num_bl'
                +' AND bl.code_clt = '+ QuotedStr(edcode_client.Text)
                +' AND bl.date_bl BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
                            +' and '+ QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'00:00:00')
                +' AND bls.code_mag = '+QuotedStr(cbcode_mag.Text))    ;
          end;
    end;

 {
 with QRapport ,SQL do
  begin
    clear;
    Add(sql);
  end;

 with QHeader ,SQL do
  begin
  clear;
    Add('select * from tb_bl_detail bls, tb_bl bl    '
        +'where bl.num_bl = bls.num_bl'
        +' AND bl.code_clt = '+ QuotedStr(edcode_client.Text)
        +' AND bl.date_bl BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
                    +' and '+ QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'00:00:00')
        +' AND bls.code_mag = '+QuotedStr(cbcode_mag.Text))    ;
  end;
           }
  try
    QRapport.Open;
    QHeader.Open;
    Rapport.ShowReport();
  finally
    QRapport.Close;
    QHeader.Close;
    dm.SQLConnection1.Close;
  end;
end;

procedure TfrmRapportParClient.cbcode_magChange(Sender: TObject);
begin
edDesign_mag.Clear;

end;

procedure TfrmRapportParClient.cbcode_magCloseUp(Sender: TObject);
  var
    magasin : TMagasin;
    code_mag : String;
begin
   code_mag := cbcode_mag.Text;
   magasin := dm.selectMagasinByCode(code_mag);
   edDesign_mag.Text := magasin.Sdesignation_mag;
end;

procedure TfrmRapportParClient.cbcode_magKeyPress(Sender: TObject;
  var Key: Char);
  var
    magasin : TMagasin;
    code_mag : String;
begin
  if key = #13 then
    begin
       code_mag := cbcode_mag.Text;
       magasin := dm.selectMagasinByCode(code_mag);
       edDesign_mag.Text := magasin.Sdesignation_mag;
    end;
end;

procedure TfrmRapportParClient.cbnomclientCloseUp(Sender: TObject);
  var
    client : TClient;
    nom_client : String;
begin
   nom_client := cbnomclient.Text;
   client := dm.selectCodeclt(nom_client);
   edcode_client.Text := client.SCodeClt;
end;

procedure TfrmRapportParClient.cbnomclientKeyPress(Sender: TObject;var Key: Char);
  var
    client : TClient;
    nom_client : String;
begin
if key = #13 then
  begin
     nom_client := cbnomclient.Text;
     client := dm.selectCodeclt(nom_client);
     edcode_client.Text := client.SCodeClt;
  end;
end;

procedure TfrmRapportParClient.cbToutClick(Sender: TObject);
begin
if cbTout.Checked then
  begin
    cbcode_mag.Enabled:=false;
    edDesign_mag.Enabled:=false;
  end else
  begin
    cbcode_mag.Enabled:=True;
    edDesign_mag.Enabled:=True;
  end;
end;

procedure TfrmRapportParClient.FormShow(Sender: TObject);
var
  clients : TClientArray;
  Psql,mPsql : string;
  magasin : TMagasinArray;
  I,j: Integer;
begin
d2.Date := Now;
  Psql := '';
  mPsql := '';
//************ Selection de client***********
  clients := DM.selectClients(Psql);
  for I := Low(clients) to High(clients) do
    begin
      cbnomclient.Items.Add(clients[i].SnomClt);
    end;
//************Selection de magasin************
   magasin := dm.selectMagasins(mPsql);
  for j := Low(magasin) to High(magasin) do
    begin
      cbcode_mag.Items.Add(magasin[j].SCode_mag);
    end;
end;

end.
