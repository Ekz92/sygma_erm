unit UEtatLivraison;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmEtatLivraison = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cbLivreur: TComboBox;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    edlot: TEdit;
    cbVehicule: TComboBox;
    frxEtatLivraison: TfrxReport;
    frxDBRapport: TfrxDBDataset;
    QRapport: TSQLQuery;
    Qsum: TSQLQuery;
    frxDBsum: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edlotDblClick(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmEtatLivraison: TfrmEtatLivraison;

implementation

{$R *.dfm}

uses records, UDM, URechLotElivraison;

procedure TfrmEtatLivraison.Button1Click(Sender: TObject);
var
  Sql,
  SqlSum: string;
  I: Integer;
  vTChargTonne,
  vPTAC,
  vExced : Real;


  Memo: TfrxMemoView;
  Component: TfrxComponent;
  MD1,MD2,mLot,mTChargeTonne,mptac,mmptac,mExced:TfrxMemoView;
begin
// Si le lot est pr�ciser
  if (cbVehicule.Text<>'') and (edlot.Text<> '') then
    begin
      Sql:=' Select * from tb_livraison_camion tlc'
            +' inner join tb_vehicule tv on tlc.camion = tv.Num_Immat_veh '
            +' where camion = '+QuotedStr(cbVehicule.Text)
            +' and lettrage = '+QuotedStr(edlot.Text)
            +' and nom_livreur = '+QuotedStr(cbLivreur.Text)
            +' and date_charg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                     +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
            +' order by date_charg desc';

      SqlSum := 'select '
                  +'sum(B3A) as TC3A,'
                  +'sum(B3) as TC3 ,'
                  +'sum(B6) as TC6,  '
                  +'sum(B6R) as TC6R, '
                  +'sum(B12) as TC12,  '
                  +'sum(B50) as TC50,   '
                  +'sum(B25) as TC25,  '
                  +'sum(B14) as TC14,  '
                  +'sum(B20) as TC20,  '
                  +'sum(B35) as TC35,  '
                  +'sum(B6E) as TC6E,  '
                  +'sum(B12E) as TC12E,'
                  +'sum(RB3A) as TK3A,  '
                  +'sum(RB3) as TK3,    '
                  +'sum(RB6) as TK6,    '
                  +'sum(RB6R) as TK6R,  '
                  +'sum(RB12) as TK12,   '
                  +'sum(RB50) as TK50,   '
                  +'sum(RB25) as TK25,   '
                  +'sum(RB6E) as TK6E,   '
                  +'sum(RB12E) as TK12E  '
                  +'from tb_livraison_camion tlc'
                  +' inner join tb_vehicule tv on tlc.camion = tv.Num_Immat_veh '
                  +' where camion = '+QuotedStr(cbVehicule.Text)
                  +' and nom_livreur = '+QuotedStr(cbLivreur.Text)
                  +' and lettrage = '+QuotedStr(edlot.Text)
                  +' and date_charg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                           +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                  +' order by date_charg desc';

    end
  else if (cbVehicule.Text='') and (edlot.Text <> '') then
    begin
      Sql:=' Select * from tb_livraison_camion tlc'
            +' inner join tb_vehicule tv on tlc.camion = tv.Num_Immat_veh '
            +' where date_charg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                     +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
            +' and nom_livreur = '+QuotedStr(cbLivreur.Text)
            +' and lettrage = '+QuotedStr(edlot.Text)
            +' order by date_charg desc' ;


      SqlSum := 'select '
                  +'sum(B3A) as TC3A,'
                  +'sum(B3) as TC3 ,'
                  +'sum(B6) as TC6,  '
                  +'sum(B6R) as TC6R, '
                  +'sum(B12) as TC12,  '
                  +'sum(B50) as TC50,   '
                  +'sum(B25) as TC25,  '
                  +'sum(B14) as TC14,  '
                  +'sum(B20) as TC20,  '
                  +'sum(B35) as TC35,  '
                  +'sum(B6E) as TC6E,  '
                  +'sum(B12E) as TC12E,'
                  +'sum(RB3A) as TK3A,  '
                  +'sum(RB3) as TK3,    '
                  +'sum(RB6) as TK6,    '
                  +'sum(RB6R) as TK6R,  '
                  +'sum(RB12) as TK12,   '
                  +'sum(RB50) as TK50,   '
                  +'sum(RB25) as TK25,   '
                  +'sum(RB6E) as TK6E,   '
                  +'sum(RB12E) as TK12E  '
                  +'from tb_livraison_camion tlc'
                  +' inner join tb_vehicule tv on tlc.camion = tv.Num_Immat_veh '
                  +' where date_charg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                           +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                  +' and nom_livreur = '+QuotedStr(cbLivreur.Text)
                  +' and lettrage = '+QuotedStr(edlot.Text)
                  +' order by date_charg desc' ;
    end;
//Si le lot n'est pas pr�ciser
  if (cbVehicule.Text<>'') and (edlot.Text='') then
    begin
      Sql:=' Select * from tb_livraison_camion tlc'
            +' inner join tb_vehicule tv on tlc.camion = tv.Num_Immat_veh '
            +' where camion = '+QuotedStr(cbVehicule.Text)
            //+' and lettrage = '+QuotedStr(edlot.Text)
            +' and nom_livreur = '+QuotedStr(cbLivreur.Text)
            +' and date_charg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                     +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
            +' order by date_charg desc';

      SqlSum := 'select '
                  +'sum(B3A) as TC3A,'
                  +'sum(B3) as TC3 ,'
                  +'sum(B6) as TC6,  '
                  +'sum(B6R) as TC6R, '
                  +'sum(B12) as TC12,  '
                  +'sum(B50) as TC50,   '
                  +'sum(B25) as TC25,  '
                  +'sum(B14) as TC14,  '
                  +'sum(B20) as TC20,  '
                  +'sum(B35) as TC35,  '
                  +'sum(B6E) as TC6E,  '
                  +'sum(B12E) as TC12E,'
                  +'sum(RB3A) as TK3A,  '
                  +'sum(RB3) as TK3,    '
                  +'sum(RB6) as TK6,    '
                  +'sum(RB6R) as TK6R,  '
                  +'sum(RB12) as TK12,   '
                  +'sum(RB50) as TK50,   '
                  +'sum(RB25) as TK25,   '
                  +'sum(RB6E) as TK6E,   '
                  +'sum(RB12E) as TK12E  '
                  +'from tb_livraison_camion tlc'
                  +' inner join tb_vehicule tv on tlc.camion = tv.Num_Immat_veh '
                  +' where camion = '+QuotedStr(cbVehicule.Text)
                  +' and nom_livreur = '+QuotedStr(cbLivreur.Text)
              //    +' and lettrage = '+QuotedStr(edlot.Text)
                  +' and date_charg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                           +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                  +' order by date_charg desc';

    end
  else if (cbVehicule.Text='') and (edlot.Text = '') then
    begin
      Sql:=' Select * from tb_livraison_camion tlc'
      +' inner join tb_vehicule tv on tlc.camion = tv.Num_Immat_veh '
            +' where date_charg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                     +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
            +' and nom_livreur = '+QuotedStr(cbLivreur.Text)
           // +' and lettrage = '+QuotedStr(edlot.Text)
            +' order by date_charg desc' ;


      SqlSum := 'select '
                  +'sum(B3A) as TC3A,'
                  +'sum(B3) as TC3 ,'
                  +'sum(B6) as TC6,  '
                  +'sum(B6R) as TC6R, '
                  +'sum(B12) as TC12,  '
                  +'sum(B50) as TC50,   '
                  +'sum(B25) as TC25,  '
                  +'sum(B14) as TC14,  '
                  +'sum(B20) as TC20,  '
                  +'sum(B35) as TC35,  '
                  +'sum(B6E) as TC6E,  '
                  +'sum(B12E) as TC12E,'
                  +'sum(RB3A) as TK3A,  '
                  +'sum(RB3) as TK3,    '
                  +'sum(RB6) as TK6,    '
                  +'sum(RB6R) as TK6R,  '
                  +'sum(RB12) as TK12,   '
                  +'sum(RB50) as TK50,   '
                  +'sum(RB25) as TK25,   '
                  +'sum(RB6E) as TK6E,   '
                  +'sum(RB12E) as TK12E  '
                  +'from tb_livraison_camion tlc'
                  +' inner join tb_vehicule tv on tlc.camion = tv.Num_Immat_veh '
                  +' where date_charg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                           +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                  +' and nom_livreur = '+QuotedStr(cbLivreur.Text)
             //     +' and lettrage = '+QuotedStr(edlot.Text)
                  +' order by date_charg desc' ;
    end;


  //----------------date debut--------------------------
  Component := frxEtatLivraison.FindObject('md1');
    if Component is TfrxMemoView then
      begin
        Memo := Component as TfrxMemoView;
        Memo.Text :=DateToStr(d1.Date);
      end;
  //----------------date fin--------------------------
  Component := frxEtatLivraison.FindObject('md2');
    if Component is TfrxMemoView then
      begin
        Memo := Component as TfrxMemoView;
        Memo.Text :=DateToStr(d2.Date);
      end;

   //---------------- Lot --------------------------
  Component := frxEtatLivraison.FindObject('mLot');
    if Component is TfrxMemoView then
      begin
        Memo := Component as TfrxMemoView;
        Memo.Text :=edlot.Text;
      end;

      QRapport.SQL.Clear;
      QRapport.SQL.Add(Sql);
//      QRapport.SQL.SaveToFile('g:\tb_boncom_detail.txt');
      QRapport.Open;

      Qsum.SQL.Clear;
      Qsum.SQL.Add(SqlSum);
      Qsum.Open;

      frxEtatLivraison.ShowReport();

end;

procedure TfrmEtatLivraison.edlotDblClick(Sender: TObject);
begin
frmRechLotElivraison.ShowModal;
end;

procedure TfrmEtatLivraison.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
cbVehicule.Clear;
cbLivreur.Clear;

end;

procedure TfrmEtatLivraison.FormShow(Sender: TObject);
var
  vehs : TVehiculeArray;
  Psql :string;
  I: Integer;

  Lvs : TLivreurArray;
  PsqLiv : String;
begin
  Psql:='';
  d2.Date:=Now;
 { Liste de vehicules dans cbox}
  vehs := DM.SelectVehicule(Psql);

  for I := Low(vehs) to High(vehs) do
    begin
      cbVehicule.Items.Add(vehs[i].SNum_mat);
    end;
// Affichage de livreur
  PsqLiv := '';
  Lvs := dm.selectLivreur(PsqLiv);

  for I := Low(Lvs) to High(Lvs) do
    begin
      cbLivreur.Items.Add(Lvs[i].Snom_liv);
    end;
end;

end.
