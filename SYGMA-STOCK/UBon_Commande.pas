unit UBon_Commande;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, frxClass, frxDBSet,
  Data.DB, Data.SqlExpr, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls,
  frxExportBaseDialog, frxExportPDF;

type
  TfrmbonCommande = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    lbNumbc: TLabel;
    lbDatebc: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edcode_fourn: TEdit;
    ednom_fourn: TEdit;
    edVehicule: TEdit;
    ednomveh: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edarticle: TEdit;
    eddesign: TEdit;
    edqte: TEdit;
    btAjouter: TButton;
    Button2: TButton;
    Panel2: TPanel;
    lbmontant: TLabel;
    Button3: TButton;
    Button1: TButton;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    Supprimer1: TMenuItem;
    frxBonCom: TfrxReport;
    QBonCom: TSQLQuery;
    QBonComid_bc: TIntegerField;
    QBonComdate_bc: TDateField;
    QBonComnum_bc: TIntegerField;
    QBonComcode_fourn: TStringField;
    QBonComnom_fourn: TStringField;
    QBonCommontant_bc: TFloatField;
    QBonComuser_init: TStringField;
    QBonComuser_validate: TStringField;
    QBonComvehicule: TStringField;
    QBonComnom_vehicule: TStringField;
    QBonComstatut_bc: TIntegerField;
    QBonComid_bcd: TIntegerField;
    QBonComnum_bc_1: TIntegerField;
    QBonComcode_art: TStringField;
    QBonComdesignation_art: TStringField;
    QBonCompu: TFloatField;
    QBonComqte: TIntegerField;
    QBonCompt: TFloatField;
    frxDBBonCom: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edVehiculeDblClick(Sender: TObject);
    procedure edarticleDblClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btAjouterClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Supprimer1Click(Sender: TObject);
    procedure edqteKeyPress(Sender: TObject; var Key: Char);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmbonCommande: TfrmbonCommande;

implementation

{$R *.dfm}

uses URechVehBc, UDM, URechArt_bc, records, UConnexion;

procedure TfrmbonCommande.btAjouterClick(Sender: TObject);
var
  nbLigne : integer;
  I,vTBout: Integer;
  vTkg : real;
  stock : TStock;
  code_art : string;
begin
  if trim(edVehicule.Text) ='' then
    begin
      MessageDlg('Veuillez sp�cifier le v�hicule',mtError,[mbok],0);
      exit
    end;

  code_art := edarticle.Text;
  stock := dm.selectStockByArticle(code_art)  ;
  lbMontant.Caption := FloatToStr(StrToFloat(lbMontant.Caption) + (stock.Rcoutachat * StrToInt(edqte.Text)));

  nbLigne :=StringGrid1.RowCount+1;
  with StringGrid1 do
    begin
      RowCount := nbLigne;
      Cells[0,nbLigne-1]:=edarticle.Text;
      Cells[1,nbLigne-1]:=edDesign.Text;
      Cells[2,nbLigne-1]:=FloatToStr(stock.Rcoutachat);
      Cells[3,nbLigne-1]:=edqte.Text;
      Cells[4,nbLigne-1]:=FloatToStr(stock.Rcoutachat * StrToInt(edqte.Text));
    end;
if StringGrid1.RowCount>1 then StringGrid1.FixedRows:=1;
  Button2.Click;

vTBout := 0;
vTkg := 0;
{
for I := 1 to StringGrid1.RowCount-1 do
  begin
    vTBout := vTBout + StrToInt(StringGrid1.Cells[3,i]) ;
    vTkg := vTkg+ StrToFloat(StringGrid1.Cells[2,i])* StrToFloat(StringGrid1.Cells[3,i]);
  end;
 }
//  lbTbout.Caption := IntToStr(vTBout);
//  lbTkilo.Caption := FloatToStr(vTkg);
end;

procedure TfrmbonCommande.Button1Click(Sender: TObject);
begin
StringGrid1.RowCount:=1;
edVehicule.Clear;
ednomveh.Clear;
lbmontant.Caption:='0';

Button2.Click;
FormShow(sender);
end;

procedure TfrmbonCommande.Button2Click(Sender: TObject);
begin
edarticle.Clear;
eddesign.Clear;
edqte.Clear;
end;

procedure TfrmbonCommande.Button3Click(Sender: TObject);
var
  bc : TBonCom;
  bcd : TBonCom_detail;
  I: Integer;
  SqlBon : string;
begin
if (edVehicule.Text<>'') and (lbmontant.Caption<>'0') then
  begin
    if MessageDlg('Confirmer-vous la cr�ation de ce bon de commande ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
      {Insertion dans commande}
        with bc do
          begin
            Sdate_bc:=QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(lbDatebc.Caption) ));
            Nnum_bc := StrToInt(lbNumbc.Caption);
            Scode_four := QuotedStr(edcode_fourn.Text);
            Snom_four := QuotedStr(ednom_fourn.Text);
            Rmontant_bc := StrToFloat(lbmontant.Caption);
            Susager_init := QuotedStr(vUsager);
            Susager_val := QuotedStr('');
            SVehicule := QuotedStr(edVehicule.Text);
            SnomVehicule := QuotedStr(ednomveh.Text);
            Nstatut_bc := 0
          end;
          dm.InsertBonCom(bc);

        {Insertion dans les d�tails de la commande}

        for I := 1 to StringGrid1.RowCount-1 do
          begin
            with StringGrid1,bcd do
              begin
                Nnum_bc := StrToInt(lbNumbc.Caption);
                Scode_art := QuotedStr(Cells[0,i]) ;
                Sdesignation_art := QuotedStr(Cells[1,i]) ;
                Rpu :=StrToFloat(Cells[2,i]);
                Nqte := StrToInt(Cells[3,i]);
                Rpt := StrToInt(Cells[4,i]);
              end;
              dm.InsertBonComDetail(bcd);
          end;

        {Edition}
        SqlBon := ' select * from tb_boncom tb inner join tb_boncom_detail tbd on tb.num_bc = tbd.num_bc'
                  +' where tb.num_bc = '+QuotedStr(lbNumbc.Caption);

        QBonCom.SQL.Clear;
        QBonCom.SQL.Add(SqlBon);
        QBonCom.Open;

        frxBonCom.ShowReport();
        Button1.Click;
      end;
  end else
  MessageDlg('Vous devez completer la saisie',mtError,[mbRetry],0);
end;

procedure TfrmbonCommande.edarticleDblClick(Sender: TObject);
begin
frmRechArt_bc.ShowModal;
end;

procedure TfrmbonCommande.edqteKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then btAjouter.Click;

end;

procedure TfrmbonCommande.edVehiculeDblClick(Sender: TObject);
begin
frmRechVehBc.showmodal;

end;

procedure TfrmbonCommande.FormActivate(Sender: TObject);
begin
lbDatebc.Caption := DateToStr(Now);

end;

procedure TfrmbonCommande.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Code';
    Cells[1,0]:='Designation';
    Cells[2,0]:='PU';
    Cells[3,0]:='Qte';
    Cells[4,0]:='PT';
  end;
end;

procedure TfrmbonCommande.FormShow(Sender: TObject);
var
  MaxBc :Integer;
begin
  MaxBc := DM.SelectMaxBc.NnumMax;
  MaxBc := MaxBc +1;
  lbNumbc.Caption := IntToStr(MaxBc);

//  StringGrid1.RowCount := 2;
//  StringGrid1.Rows[1] := 2;


end;

procedure TfrmbonCommande.StringGrid1DrawCell(Sender: TObject; ACol,
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

procedure TfrmbonCommande.Supprimer1Click(Sender: TObject);
var
  k,i,qte:integer;
//  mnt : real;
  code_art :string;
  stock : TStock;
begin
with StringGrid1 do
  begin
  qte := StrToInt(Cells[3,Row]);
  code_art := Cells[0,Row];
//  mnt :=

//  ShowMessage(IntToStr(qte));

  stock := dm.selectStockByArticle(code_art)  ;
  lbMontant.Caption := FloatToStr(StrToFloat(lbMontant.Caption) - (stock.Rcoutachat * qte ));


    k:=Row;
    for I := k to RowCount do
      begin
        Rows[i]:=Rows[i+1];
      end;
      RowCount:=RowCount-1;
  end;
end;

end.