unit UListeFactureCommande;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, frxClass, frxDBSet,
  Data.DB, Data.SqlExpr, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmListeFactureCommande = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbtotal: TLabel;
    lbtotpaye: TLabel;
    lbtotreste: TLabel;
    cbStatut: TComboBox;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    edCommande: TEdit;
    edvehicule: TEdit;
    edStatutCmd: TEdit;
    St_listeFacture: TStringGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    cbprint: TComboBox;
    PopupMenu1: TPopupMenu;
    Consultation1: TMenuItem;
    QConsultation: TSQLQuery;
    frxDBConsultation: TfrxDBDataset;
    Rconsultation: TfrxReport;
    RFactureListe: TfrxReport;
    frxRFactureListe: TfrxDBDataset;
    QFactureListe: TSQLQuery;
    RFactureListed: TfrxReport;
    QFactureListed: TSQLQuery;
    frxDBDataset1: TfrxDBDataset;
    procedure SpeedButton1Click(Sender: TObject);
    procedure edvehiculeKeyPress(Sender: TObject; var Key: Char);
    procedure edCommandeDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure St_listeFactureDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeFactureCommande: TfrmListeFactureCommande;

implementation

{$R *.dfm}

uses records, UDM, URechCommandeLFactures;

procedure TfrmListeFactureCommande.Button1Click(Sender: TObject);
var
  Statut, Psql : string;

  Component: TfrxComponent;
  MD1,MD2,Mvehicule,MStatut_cmd :TfrxMemoView;
begin
if Trim(edCommande.Text)<>'' then
  begin
  if cbStatut.Text = 'Payée' then Statut := 'PA' else
  if cbStatut.Text = 'En attente' then Statut := 'AT' else
  if cbStatut.Text = 'Forcée' then Statut := 'FO' ;

    if cbStatut.Text<>'' then
    Psql := ' select datefact, tf.num_fact,tf.num_comc , code_clt,nom_clt, mnt_t,mnt_p,mnt_r ,sum(marge) as marge  from tb_facturation tf '
            +' inner join tb_bene_fact tbf on tbf.num_fact = tf.num_fact '
            +' where tf.date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
            +' and tf.num_comc = '+QuotedStr(edCommande.Text)
            +' and tf.statut = '+QuotedStr(Statut)
            +' and tf.statut_canc = 0 '
            +' group by tf.num_fact '
            +' order by date_fact desc '
    else
    Psql := ' select datefact, tf.num_fact,tf.num_comc, code_clt,nom_clt, mnt_t,mnt_p,mnt_r ,sum(marge) as marge  from tb_facturation tf '
            +' inner join tb_bene_fact tbf on tbf.num_fact = tf.num_fact '
            +' where tf.date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
            +' and tf.num_comc = '+QuotedStr(edCommande.Text)
            +' and tf.statut_canc = 0 '
            +' group by num_fact '
            +' order by date_fact desc ';

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
//*********************************Vehicule***********************************
Component := RFactureListe.FindObject('Mvehicule');
  if Component is TfrxMemoView then
  begin
        Mvehicule := Component as TfrxMemoView;
        Mvehicule.Text := edvehicule.Text;
  end;

//*********************************Statut de la commande***********************************
Component := RFactureListe.FindObject('Mstatut_cmd');
  if Component is TfrxMemoView then
  begin
        MStatut_cmd := Component as TfrxMemoView;
        MStatut_cmd.Text := edStatutCmd.Text;
  end;

  QFactureListe.SQL.Clear;
  QFactureListe.Close;
  QFactureListe.SQL.Add(Psql);
  //QFactureListe.SQL.SaveToFile('g:\tb_facturation.txt');
  QFactureListe.Open;

  RFactureListe.ShowReport();

  end else
  MessageDlg('Merci de spécifier la cammande',mtError,[mbOk],0);
end;

procedure TfrmListeFactureCommande.Button2Click(Sender: TObject);
var
  Statut, Psql ,vCmd: string;
  cmd : TCommandeCamionArray;

  Component: TfrxComponent;
  MD1,MD2,Mvehicule,MStatut_cmd,
  Mmnt_t,Mmnt_p,Mmnt_r,Mmnt_tc :TfrxMemoView;
  I: Integer;
  mnt_tc : Real;
begin

SpeedButton1.Click;

//if Trim(edCommande.Text)<>'' then
//  begin
  if cbStatut.Text = 'Payée' then Statut := 'PA' else
  if cbStatut.Text = 'En attente' then Statut := 'AT' else
  if cbStatut.Text = 'Forcée' then Statut := 'FO' else

    if cbStatut.Text<>'' then
    Psql :=  ' select * from tb_commande_camion tcc inner join tb_facturation tf on tcc.num_comc = tf.num_comc '
	          +' inner join tb_bene_fact tfd on tfd.num_fact = tf.num_fact'
            +' where tf.date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
            +' and tcc.num_comc = '+edCommande.Text
            +' and statut = '+QuotedStr(Statut)
            +' and tf.statut_canc = 0 '
            +' order by tf.date_fact desc '
    else
    Psql :=  ' select * from tb_commande_camion tcc inner join tb_facturation tf on tcc.num_comc = tf.num_comc '
	          +' inner join tb_bene_fact tfd on tfd.num_fact = tf.num_fact'
            +' where tf.date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
            +' and tcc.num_comc = '+edCommande.Text
            +' and tf.statut_canc = 0 '
            +' order by tf.date_fact desc ';

//****************************** Affichage date1 ***********************
Component := RFactureListed.FindObject('md1');
  if Component is TfrxMemoView then
  begin
        MD1 := Component as TfrxMemoView;
        MD1.Text := DateToStr(d1.DateTime);
  end;
//*****
Component := RFactureListed.FindObject('md2');
  if Component is TfrxMemoView then
  begin
        MD2 := Component as TfrxMemoView;
        MD2.Text := DateToStr(d2.DateTime);
  end;
//*********************************Vehicule***********************************
Component := RFactureListed.FindObject('Mvehicule');
  if Component is TfrxMemoView then
  begin
        Mvehicule := Component as TfrxMemoView;
        Mvehicule.Text := edvehicule.Text;
  end;

//*********************************Statut de la commande***********************************
Component := RFactureListed.FindObject('Mstatut_cmd');
  if Component is TfrxMemoView then
  begin
        MStatut_cmd := Component as TfrxMemoView;
        MStatut_cmd.Text := edStatutCmd.Text;
  end;

//*********************************Montant totale ***********************************
Component := RFactureListed.FindObject('Mmnt_t');
  if Component is TfrxMemoView then
  begin
        Mmnt_t := Component as TfrxMemoView;
        Mmnt_t.Text := lbtotal.Caption;
  end;
//*********************************Montant totale ***********************************
Component := RFactureListed.FindObject('Mmnt_p');
  if Component is TfrxMemoView then
  begin
        Mmnt_p := Component as TfrxMemoView;
        Mmnt_p.Text := lbtotpaye.Caption;
  end;
//*********************************Montant Reste ***********************************
Component := RFactureListed.FindObject('Mmnt_r');
  if Component is TfrxMemoView then
  begin
        Mmnt_r := Component as TfrxMemoView;
        Mmnt_r.Text := lbtotreste.Caption;
  end;
//*****************************************Commande********************************

  vCmd:= ' where num_comc = '+edCommande.Text;
  cmd:=dm.SelectCommandeCamion(vCmd);

  for I := Low(cmd) to High(cmd) do
    begin
      mnt_tc := cmd[i].Rmontant;
    end;
//************Montant Reste *************
Component := RFactureListed.FindObject('Mmnt_tc');
  if Component is TfrxMemoView then
  begin
        Mmnt_tc := Component as TfrxMemoView;
        Mmnt_tc.Text := FloatToStrF(mnt_tc,ffNumber,15,2);
  end;


  QFactureListed.SQL.Clear;
  QFactureListed.Close;
  QFactureListed.SQL.Add(Psql);
//  QFactureListed.SQL.SaveToFile('g:\tb_facturation.txt');
  QFactureListed.Open;

  RFactureListed.ShowReport();

//  end
//   else
//  MessageDlg('Merci de spécifier la cammande',mtError,[mbOk],0);
end;

procedure TfrmListeFactureCommande.edCommandeDblClick(Sender: TObject);
begin
frmRechCommandeLFactures.ShowModal;
end;

procedure TfrmListeFactureCommande.edvehiculeKeyPress(Sender: TObject;
  var Key: Char);
begin
Key :=#0;

end;

procedure TfrmListeFactureCommande.SpeedButton1Click(Sender: TObject);
var
  Psql, Statut : string;
  Factures : TFacturationArray;
  I: Integer;

  vtot,vtotp,vtotr : real;
begin
if Trim(edCommande.Text)<>'' then
  begin
    if cbStatut.Text = 'Payée' then Statut := 'PA' else
    if cbStatut.Text = 'En attente' then Statut := 'AT' else
    if cbStatut.Text = 'Forcée' then Statut := 'FO' ;

    if cbStatut.Text<>'' then
    Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
            +' and num_comc = '+QuotedStr(edCommande.Text)
            +' and statut = '+QuotedStr(Statut)
            +' and statut_canc = 0 '
            +' order by date_fact desc '
    else
    Psql := ' where date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
            +' and num_comc = '+QuotedStr(edCommande.Text)
            +' and statut_canc = 0 '
            +' order by date_fact desc ';

    Factures := dm.SelectFactures(Psql);
    St_listeFacture.RowCount := Length(Factures)+1;

    vtot :=0;
    vtotp:=0;
    vtotr:=0;

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
          vtot := vtot + Factures[i].Rmnt_t;
          vtotp:= vtotp + Factures[i].Rmnt_p;
          vtotr:= vtotr +Factures[i].Rmnt_r;
      end;
      if St_listeFacture.RowCount>1 then
        St_listeFacture.FixedRows := 1;

      lbtotal.Caption := FloatToStrF(vtot,TFloatFormat(ffNumber),15,2)   ;
      lbtotpaye.Caption := FloatToStrF(vtotp,TFloatFormat(ffNumber),15,2) ;
      lbtotreste.Caption := FloatToStrF(vtotr,TFloatFormat(ffNumber),15,2);
  end else
  MessageDlg('Merci de spécifier la cammande',mtError,[mbOk],0);
end;

procedure TfrmListeFactureCommande.St_listeFactureDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
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

end.
