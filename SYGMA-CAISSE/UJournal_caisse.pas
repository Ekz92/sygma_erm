unit UJournal_caisse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.Menus, frxClass,
  frxDBSet, Data.DB, Data.SqlExpr, Vcl.StdCtrls, Vcl.Grids, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmJournalCaisse = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    edCode: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    edMontantMin: TEdit;
    edMontantMax: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbCaisse: TComboBox;
    EdNumCaisse: TEdit;
    GroupBox4: TGroupBox;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    Panel2: TPanel;
    Label6: TLabel;
    lbsolde: TLabel;
    St_journal: TStringGrid;
    Panel3: TPanel;
    Button1: TButton;
    QHistorique: TSQLQuery;
    frxQHistorique: TfrxReport;
    frxDBQHistorique: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Annulerlepayeent1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbCaisseCloseUp(Sender: TObject);
    procedure edCodeDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure St_journalDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Annulerlepayeent1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmJournalCaisse: TfrmJournalCaisse;

implementation

{$R *.dfm}

uses records, UDM, Urech_client_journal, UConnexion, UPayementCanc;

procedure TfrmJournalCaisse.Annulerlepayeent1Click(Sender: TObject);
var
  SqlCc,vNum_cc : string;
  CompteClient : TCompteClientArray;
  I: Integer;

begin

  SqlCc := ' where code_clt = '+QuotedStr(St_journal.Cells[2,St_journal.Row]);
  CompteClient := dm.SelectCompteClient(SqlCc);
  for I := Low(CompteClient) to High(CompteClient) do vNum_cc := compteClient[i].SNum_cc;

  with frmPayementCanc, St_journal do
  begin
    edpiece.Text:=Cells[1,Row];
    edmontant.Text := Cells[8,Row];
    edCodeClt.Text := Cells[2,Row];
    edOpe.Text := Cells[6,Row];
    edTypEncais.Text := Cells[4,Row];
    edNumCompte.Text := vNum_cc;
    ShowModal;
  end;
end;

procedure TfrmJournalCaisse.Button1Click(Sender: TObject);
var
  PsqlHis : string;

  Component: TfrxComponent;
  MD1,MD2,Memo26 :TfrxMemoView;
begin
   PsqlHis := ' where caisse = '+QuotedStr(EdNumCaisse.Text);

   PsqlHis:=PsqlHis+' and date_hisc between '+QuotedStr(FormatDateTime('yyyy-mm-dd', d1.Date)+' 00:00:00')
                    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date)+' 23:59:00')
                    +' and statut_canc = 0'
                    +' order by id_hisc desc ';

//****************************** Affichage date1 ***********************
Component := frxQHistorique.FindObject('MD1');
  if Component is TfrxMemoView then
  begin
        MD1 := Component as TfrxMemoView;
        MD1.Text := DateToStr(d1.DateTime);
  end;
//*****
Component := frxQHistorique.FindObject('MD2');
  if Component is TfrxMemoView then
  begin
        MD2 := Component as TfrxMemoView;
        MD2.Text := DateToStr(d2.DateTime);
  end;

//*************
//*****
Component := frxQHistorique.FindObject('Memo26');
  if Component is TfrxMemoView then
  begin
        Memo26 := Component as TfrxMemoView;
        Memo26.Text := lbsolde.Caption;
  end;

  QHistorique.SQL.Clear;
  QHistorique.SQL.Add('select * from tb_historique_caisse'+PsqlHis);
  QHistorique.Open;
  frxQHistorique.ShowReport();
end;

procedure TfrmJournalCaisse.cbCaisseCloseUp(Sender: TObject);
var
  caisses : TCaisseArray;
  Psql,PsqlHis :string;
  I: Integer;

  hisCaisses : THistoriqueCaisseArray;
begin
 Psql := ' where nom_caisse = '+QuotedStr(cbCaisse.Text);
  caisses := DM.SelectCaisses(Psql);

  for I := Low(caisses) to High(caisses) do
    begin
      EdNumCaisse.Text:=caisses[i].Scompte;
    end;
end;

procedure TfrmJournalCaisse.edCodeDblClick(Sender: TObject);
begin
frmRehCltJournal.ShowModal;

end;

procedure TfrmJournalCaisse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
cbCaisse.Clear;

end;

procedure TfrmJournalCaisse.FormCreate(Sender: TObject);
begin
with St_journal do
  begin
    Cells[0,0]:='Date';
    Cells[1,0]:='Pi�ce';
    Cells[2,0]:='Code cli';
    Cells[3,0]:='Nom cli';
    Cells[4,0]:='Typ Enc';
    Cells[5,0]:='compte';
    Cells[6,0]:='Ope';
    Cells[7,0]:='Sens';
    Cells[8,0]:='Montant';
    Cells[9,0]:='User';
  end;

end;

procedure TfrmJournalCaisse.FormShow(Sender: TObject);
var
  caisses : TCaisseArray;
  Psql :string;
  I: Integer;
  user : TUser;
begin
  d2.Date:=Now;
  //edNomCli.Clear;
  edCode.Clear;


  Psql := ' Order by nom_caisse desc';
  caisses := DM.SelectCaisses(Psql);

  for I := Low(caisses) to High(caisses) do
    begin
      cbCaisse.Items.Add(caisses[i].Snom_caisse);
    end;

//**********************Selection de la caisse de l'utilisateur*********

  Psql := ' where usager = '+QuotedStr(vUsager);
  user := dm.selectUser(Psql);
  EdNumCaisse.Text := user.Snum_caisse;

//***********Rafreshir la grille************

  SpeedButton1.Click;
end;

procedure TfrmJournalCaisse.SpeedButton1Click(Sender: TObject);
var
  PsqlHis,
  PsqlHisD,
  PsqlHisC :string;

  SoldeD,
  SoldeC : TSoldeHistorique;

  I: Integer;
  vSolde,
  vSoldeD,
  vSoldeC : real;

  hisCaisses : THistoriqueCaisseArray;
begin
   PsqlHis := ' where caisse = '+QuotedStr(EdNumCaisse.Text);

   if (edMontantMin.Text<>'') and (edMontantMax.Text <>'') then
      begin
        PsqlHis := PsqlHis + ' and montant between '+edMontantMin.Text +' and '+edMontantMax.Text
      end;

   if edCode.Text<>'' then
      begin
        PsqlHis := PsqlHis + ' and code_cli = '+QuotedStr(edCode.Text);
      end;

   PsqlHis:=PsqlHis+' and date_hisc between '+QuotedStr(FormatDateTime('yyyy-mm-dd', d1.Date)+' 00:00:00')
                    +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date)+' 23:59:00')
                    +' and statut_canc = 0'  ;


   hisCaisses := DM.SelectHistorique(PsqlHis);
   St_journal.RowCount:= Length(hisCaisses)+1;

{ Calcule du solde de la journ�e}
   PsqlHisD := ' where sens ='+QuotedStr('D')+' and caisse = '+QuotedStr(EdNumCaisse.Text)
               +' and statut_canc = 0'
               +' and	date_hisc between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
                                      +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59') ;

   PsqlHisC := ' where sens ='+QuotedStr('C')+' and caisse = '+QuotedStr(EdNumCaisse.Text)
              +' and statut_canc = 0'
               +' and	date_hisc between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
                                      +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59') ;

   if edCode.Text<>'' then
      begin
        PsqlHisD := PsqlHisD + ' and code_cli = '+QuotedStr(edCode.Text);
        PsqlHisC := PsqlHisC + ' and code_cli = '+QuotedStr(edCode.Text);
      end;


   SoldeD := dm.SelectSoldeHistorique(PsqlHisD);
   SoldeC := dm.SelectSoldeHistorique(PsqlHisC);

   vSoldeD := SoldeD.Rsolde;
   vSoldeC := SoldeC.Rsolde;

   vSolde := vSoldeC - vSoldeD ;

   //***********

   for I := Low(hisCaisses) to High(hisCaisses) do
     begin
       with St_journal do
        begin
          Cells[0,i+1]:=hiscaisses[i].Ddate_hisc;
          Cells[1,i+1]:=hiscaisses[i].Snum_piece;
          Cells[2,i+1]:=hiscaisses[i].Scode_cli;
          Cells[3,i+1]:=hiscaisses[i].Snom_cli;
          Cells[4,i+1]:=hiscaisses[i].STypEnc;
          Cells[5,i+1]:=hiscaisses[i].SCaisse;
          Cells[6,i+1]:=hiscaisses[i].Sope;
          Cells[7,i+1]:=hiscaisses[i].Ssens;
          Cells[8,i+1]:=FloatToStr(hiscaisses[i].Rmontant);
          Cells[9,i+1]:=hiscaisses[i].Susager;
        end;
     end;

     lbsolde.Caption:=FloatToStrF(vSolde,ffNumber,15,2);
     if St_journal.RowCount>1 then St_journal.FixedRows :=1;
end;

procedure TfrmJournalCaisse.St_journalDrawCell(Sender: TObject; ACol,
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

end.
