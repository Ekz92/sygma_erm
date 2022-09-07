unit UBeneficeVente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmBeneficeVente = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edvehicule: TEdit;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    cbType_facture: TComboBox;
    RBene: TfrxReport;
    frxQbene: TfrxDBDataset;
    QBene: TSQLQuery;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmBeneficeVente: TfrmBeneficeVente;

implementation

{$R *.dfm}

procedure TfrmBeneficeVente.Button1Click(Sender: TObject);
var
  sql : string;

  Component: TfrxComponent;
  MD1,MD2,MType,Mvehicule,MStatut :TfrxMemoView;
begin
//****************************** Affichage date1 ***********************
Component := RBene.FindObject('MD1');
  if Component is TfrxMemoView then
  begin
        MD1 := Component as TfrxMemoView;
        MD1.Text := DateToStr(d1.DateTime);
  end;
//*****
Component := RBene.FindObject('MD2');
  if Component is TfrxMemoView then
  begin
        MD2 := Component as TfrxMemoView;
        MD2.Text := DateToStr(d2.DateTime);
  end;
//*********************************type***********************************
Component := RBene.FindObject('Mtype');
  if Component is TfrxMemoView then
  begin
        mtype := Component as TfrxMemoView;
        mtype.Text := cbType_facture.Text;
  end;
//********************************* Vehicule ***********************************
Component := RBene.FindObject('Mvehicule');
  if Component is TfrxMemoView then
  begin
        Mvehicule := Component as TfrxMemoView;
        Mvehicule.Text := edvehicule.Text;
  end;


//************************
  if (cbType_facture.ItemIndex = 0) and (Trim(edvehicule.Text)<>'') then
    sql := 'select * from tb_bene_fact bf, tb_facturation f where bf.datefact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                        +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                                        +' and bf.num_fact = f.num_fact '
                                        +' and f.vehicule = '+QuotedStr(edvehicule.Text)
                                        +' and f.type_fact = '+QuotedStr('Comptoir')
                                        +' and f.statut_canc = 0'
  else
  if (cbType_facture.ItemIndex = 1) and (Trim(edvehicule.Text)<>'') then
      sql := 'select * from tb_bene_fact bf, tb_facturation f where bf.datefact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                      +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                                      +' and bf.num_fact = f.num_fact '
                                      +' and f.vehicule = '+QuotedStr(edvehicule.Text)
                                      +' and f.type_fact = '+QuotedStr('Camion')
                                      +' and f.statut_canc = 0'
  else
  if (cbType_facture.ItemIndex = 0) and (Trim(edvehicule.Text)='') then
    sql := 'select * from tb_bene_fact bf ,tb_facturation f where bf.datefact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                        +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                                        +' and bf.num_fact = f.num_fact '
                                     //   +' and f.vehicule = '+QuotedStr(edvehicule.Text)
                                        +' and f.type_fact = '+QuotedStr('Comptoir')
                                        +' and f.statut_canc = 0'
  else
  if (cbType_facture.ItemIndex = 1) and (Trim(edvehicule.Text)='') then
      sql := 'select * from tb_bene_fact bf, tb_facturation f where bf.datefact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                      +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                                      +' and bf.num_fact = f.num_fact '
                                      //+' and f.vehicule = '+QuotedStr(edvehicule.Text)
                                      +' and f.type_fact = '+QuotedStr('Camion')
                                      +' and f.statut_canc = 0'  ;


  QBene.SQL.Clear;
  QBene.SQL.Add(sql);
  QBene.Open;

  RBene.ShowReport();

end;

procedure TfrmBeneficeVente.FormShow(Sender: TObject);
begin
d2.Date:=Now;

end;

end.
