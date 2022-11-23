unit UListeFacture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.ComCtrls, Vcl.Buttons, frxExportBaseDialog, frxExportPDF;

type
  TfrmListeFacture = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    cbStatut: TComboBox;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    edCodeClt: TEdit;
    cbType: TComboBox;
    St_listeFacture: TStringGrid;
    Panel1: TPanel;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Consultation1: TMenuItem;
    Supprimer1: TMenuItem;
    RFactureListe: TfrxReport;
    frxRFactureListe: TfrxDBDataset;
    QFactureListe: TSQLQuery;
    QConsultation: TSQLQuery;
    frxDBConsultation: TfrxDBDataset;
    Rconsultation: TfrxReport;
    frxQFacture: TfrxDBDataset;
    QFacture: TSQLQuery;
    frxFacturation: TfrxReport;
    Rediterlafacture1: TMenuItem;
    lbnbligne: TLabel;
    frxPDFExport1: TfrxPDFExport;
    Label1: TLabel;
    cbVehicule: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    cbMagasin: TComboBox;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edCodeCltDblClick(Sender: TObject);
    procedure St_listeFactureDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Consultation1Click(Sender: TObject);
    procedure Supprimer1Click(Sender: TObject);
    procedure St_listeFactureDblClick(Sender: TObject);
    procedure Rediterlafacture1Click(Sender: TObject);
    procedure cbMagasinCloseUp(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmListeFacture: TfrmListeFacture;
  gPsqlFact : string;

implementation

{$R *.dfm}

uses records, UDM, UrechClientFacture, UFactureCanc;

procedure TfrmListeFacture.Button1Click(Sender: TObject);
var
  PsqlFact,Statut : string;

  Component: TfrxComponent;
  MD1,MD2,MType,Mvehicule,MStatut :TfrxMemoView;
begin
if cbStatut.Text = 'Pay�e' then Statut := 'PA' else
if cbStatut.Text = 'En attente' then Statut := 'AT' else
if cbStatut.Text = 'Forc�e' then Statut := 'FO' else

//****************************** Affichage date1 ***********************
Component := RFactureListe.FindObject('md1');
  if Component is TfrxMemoView then
  begin
        MD1 := Component as TfrxMemoView;
        MD1.Text := DateToStr(d1.DateTime);
  end;
//*****
Component := RFactureListe.FindObject('md2');
  if Component is TfrxMemoView then
  begin
        MD2 := Component as TfrxMemoView;
        MD2.Text := DateToStr(d2.DateTime);
  end;
//*********************************type***********************************
Component := RFactureListe.FindObject('Mtype');
  if Component is TfrxMemoView then
  begin
        mtype := Component as TfrxMemoView;
        mtype.Text := cbType.Text;
  end;
//********************************* Vehicule ***********************************
Component := RFactureListe.FindObject('Mvehicule');
  if Component is TfrxMemoView then
  begin
        Mvehicule := Component as TfrxMemoView;
        Mvehicule.Text := cbVehicule.Text;
  end;


Component := RFactureListe.FindObject('MStatut');
  if Component is TfrxMemoView then
  begin
        MStatut := Component as TfrxMemoView;
        MStatut.Text := cbStatut.Text;
  end;
//**************************************

  QFactureListe.SQL.Clear;
  QFactureListe.Close;
  QFactureListe.SQL.Add('select * from tb_facturation '+gPsqlFact);
  QFactureListe.Open;

  RFactureListe.ShowReport();
end;

procedure TfrmListeFacture.cbMagasinCloseUp(Sender: TObject);
begin
if cbMagasin.ItemIndex <> 0 then
  begin
    cbStatut.Enabled := False;
    edCodeClt.Enabled := false;
    cbType.Enabled := false;
    cbVehicule.Enabled := False;
  end else
  begin
    cbStatut.Enabled := True;
    edCodeClt.Enabled := True;
    cbType.Enabled := True;
    cbVehicule.Enabled := True;
  end;
end;

procedure TfrmListeFacture.Consultation1Click(Sender: TObject);
begin
St_listeFactureDblClick(Sender);
end;

procedure TfrmListeFacture.edCodeCltDblClick(Sender: TObject);
begin
gSrcformClt := 'TfrmListeFacture';
frmRechClientFacture.ShowModal;
end;

procedure TfrmListeFacture.FormCreate(Sender: TObject);
begin
with St_listeFacture do
  begin
    Cells[0,0] := 'Date';
    Cells[1,0] := 'Facture';
    Cells[2,0] := 'Client';
    Cells[3,0] := 'Total';
    Cells[4,0] := 'Pay�e';
    Cells[5,0] := 'Reste';
    Cells[6,0] := 'Statut';
  end;

end;

procedure TfrmListeFacture.FormShow(Sender: TObject);
var
  Mags : TMagasinArray;
  i : integer;
  Psql : string;
begin
  Psql := '';
  Mags := DM.selectMagasins(Psql);
  for I := Low(Mags) to High(Mags) do
    begin
      cbMagasin.Items.Add(MAgs[i].SCode_mag);
    end;

d2.Date:=Now;
St_listeFacture.RowCount:=1;
end;

procedure TfrmListeFacture.Rediterlafacture1Click(Sender: TObject);
begin
  with QFacture do
    begin
      SQL.Clear;
      SQL.Add('Select * from tb_facturation F,tb_facturation_detail fd, tb_article A, tb_client C '
              +' where F.num_fact = fd.num_fact '
              +' and A.code_art = fd.code_art '
              +' and C.code_clt = F.code_clt '
              +' and F.num_fact = '+QuotedStr(St_listeFacture.Cells[1,St_listeFacture.Row])
              );
      Open;
    end;
  frxFacturation.ShowReport();
end;

procedure TfrmListeFacture.SpeedButton1Click(Sender: TObject);
var
  Psql, Statut : string;
  Factures : TFacturationArray;
  I: Integer;

begin
if cbStatut.Text = 'Pay�e' then Statut := 'PA' else
if cbStatut.Text = 'En attente' then Statut := 'AT' else
if cbStatut.Text = 'Forc�e' then Statut := 'FO' else

//Toute les factures
if (cbStatut.Text = '') and (edCodeClt.Text='') and (cbType.ItemIndex=0) then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59');

if (cbStatut.Text = '') and (edCodeClt.Text<>'') and (cbType.ItemIndex=0) then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and code_clt = '+QuotedStr(edCodeClt.Text)   ;

if (cbStatut.Text <> '') and (edCodeClt.Text<>'') and (cbType.ItemIndex=0) then
  Psql := ' where statut='+QuotedStr(Statut)
          +' and date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and code_clt = '+QuotedStr(edCodeClt.Text)    ;

if (cbStatut.Text <> '') and (edCodeClt.Text='') and (cbType.ItemIndex=0) then
  Psql := ' where statut='+QuotedStr(Statut)
          +' and date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59');

//facture comptoire
if (cbStatut.Text = '') and (edCodeClt.Text='') and (cbType.ItemIndex=1) then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and type_fact = '+QuotedStr('Comptoir');

if (cbStatut.Text = '') and (edCodeClt.Text<>'') and (cbType.ItemIndex=1) then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and code_clt = '+QuotedStr(edCodeClt.Text)
          +' and type_fact='+QuotedStr('Comptoir')   ;

if (cbStatut.Text <> '') and (edCodeClt.Text<>'') and (cbType.ItemIndex=1) then
  Psql := ' where statut='+QuotedStr(Statut)
          +' and date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and code_clt = '+QuotedStr(edCodeClt.Text)
          +' and type_fact='+QuotedStr('Comptoir');

if (cbStatut.Text <> '') and (edCodeClt.Text='') and (cbType.ItemIndex=1) then
  Psql := ' where statut='+QuotedStr(Statut)
          +' and date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and type_fact = '+QuotedStr('Comptoir');
//facture camion
if (cbType.ItemIndex=2) and (cbStatut.Text = '') and (edCodeClt.Text='') then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and type_fact = '+QuotedStr('Camion');

if (cbType.ItemIndex=2) and (cbStatut.Text <> '') and (edCodeClt.Text='') then
  Psql := ' where statut='+QuotedStr(Statut)
          +' and date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and type_fact = '+QuotedStr('Camion');


if (cbType.ItemIndex=2) and (cbStatut.Text = '') and (edCodeClt.Text<>'') then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and code_clt = '+QuotedStr(edCodeClt.Text)
          +' and type_fact='+QuotedStr('Camion')   ;

if (cbType.ItemIndex=2) and (cbStatut.Text <> '') and (edCodeClt.Text<>'') then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and code_clt = '+QuotedStr(edCodeClt.Text)
          +' and statut = '+QuotedStr(Statut)
          +' and type_fact='+QuotedStr('Camion')   ;

if (cbType.ItemIndex=2) and (cbStatut.Text = '') and (edCodeClt.Text='') then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and type_fact = '+QuotedStr('Camion');


if (cbType.ItemIndex=2) and (cbStatut.Text = '') and (edCodeClt.Text<>'') then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and code_clt = '+QuotedStr(edCodeClt.Text)
          +' and type_fact='+QuotedStr('Camion');

if (cbType.ItemIndex=2) and (cbStatut.Text <> '') and (edCodeClt.Text<>'') then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and code_clt = '+QuotedStr(edCodeClt.Text)
          +' and statut = '+QuotedStr(Statut)
          +' and type_fact='+QuotedStr('Camion');

if (cbType.ItemIndex=2) and (cbStatut.Text <> '') and (edCodeClt.Text='') then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and statut = '+QuotedStr(Statut)
          +' and type_fact='+QuotedStr('Camion');

if cbMagasin.ItemIndex <> 0 then
  Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
          +' and code_mag = '+QuotedStr(cbMagasin.Text);

  Psql := Psql + ' and statut_canc = 0 order by date_fact desc' ;
  gPsqlFact := Psql;
  Factures := dm.SelectFactures(Psql);
  St_listeFacture.RowCount := Length(Factures)+1;

  for I := Low(Factures) to High(Factures) do
    begin
      with St_listeFacture do
        begin
          Cells[0,i+1] := Factures[i].Sdate_fact;
          Cells[1,i+1] := Factures[i].SNum_fact;
          Cells[2,i+1] := Factures[i].Snom_clt;
          Cells[3,i+1] := FloatToStr(Factures[i].Rmnt_t);
          Cells[4,i+1] := FloatToStr(Factures[i].Rmnt_p);
          Cells[5,i+1] := FloatToStr(Factures[i].Rmnt_r);
          Cells[6,i+1] := Factures[i].Sstatut;
        end;
        lbnbligne.Caption := IntToStr(i+1)+' Lignes';
    end;
    if St_listeFacture.RowCount>1 then
      St_listeFacture.FixedRows := 1;

end;

procedure TfrmListeFacture.St_listeFactureDblClick(Sender: TObject);
var
  sql : string;
begin
  sql := 'select * from tb_facturation f, tb_facturation_detail d'
          +' where f.num_fact = d.num_fact '
          +' and f.num_fact = '+QuotedStr(St_listeFacture.Cells[1,St_listeFacture.Row]);

  QConsultation.SQL.Clear;
  QConsultation.SQL.Add(sql);
  QConsultation.Open;

  Rconsultation.ShowReport();
end;

procedure TfrmListeFacture.St_listeFactureDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
    with Sender As TStringGrid do with canvas do
    begin
      { selection de la couleur de fond}
      if gdFixed in State then
        Brush.Color:=clBtnFace
      else
        if gdSelected in State then
          Brush.Color:=clNavy//$00000046
        else
          if Odd(ARow) then
            Brush.Color :=$006A9BFF//$FFE0FF clgreen
          else
            Brush.Color:=$00FBDA97;//$FFFFE0  clBlue
      {Design du fond}
      FillRect(Rect);
      {Selection de la couleur d'ecriture}
      if gdSelected in State then
        font.Color:=clwhite
        else
        font.Color:=clblack;
      {Design du texte}
      TextOut(Rect.Left,Rect.Top,Cells[ACol,ARow]);
    end;

end;

procedure TfrmListeFacture.Supprimer1Click(Sender: TObject);
var
  PSql : string;
  Mnt_p : real;
begin

  Mnt_p := StrToFloat(St_listeFacture.Cells[4,St_listeFacture.Row]);

  if Mnt_p > 0 then
    begin
      MessageDlg('Cette facture ne peut etre annuler, veuillez annuler l''encaissement avant d''annuler la facture',mtError,[mbOK],0);
    end else
  with frmFactureCanc do
    begin
      edFActure.Text := St_listeFacture.Cells[1,St_listeFacture.Row];
      ShowModal;
    end;
end;

end.
