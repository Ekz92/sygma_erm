unit UListeDepense;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Data.FMTBcd, frxClass, frxDBSet,
  Data.DB, Data.SqlExpr;

type
  TfrmListeDepense = class(TForm)
    stDep: TStringGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    PopupMenu1: TPopupMenu;
    Annulercettedpense1: TMenuItem;
    Panel2: TPanel;
    Button1: TButton;
    frxLDepense: TfrxReport;
    SqlDepense: TSQLQuery;
    frxDBDepense: TfrxDBDataset;
    cbTdepense: TComboBox;
    cbGroup: TComboBox;
    Label5: TLabel;
    frxLDTab: TfrxReport;
    frxDBLDTab: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure stDepDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure Annulercettedpense1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbGroupCloseUp(Sender: TObject);
    procedure cbTdepenseCloseUp(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeDepense: TfrmListeDepense;
  gPsql : string;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmListeDepense.Annulercettedpense1Click(Sender: TObject);
var
  sqlH,sqlD,
  PsqlOpe, vOpe,
  vNumCaisse,
  SqlUpCaisse,SqlCaisse,sqlEtatJrn : string;

  dep :TDepenseArray;
  Caisse :TCaisseArray;

  vMnt_dep,vSoldeCaisse :Real;
  I: Integer;
begin
{ Préparation des requetes}
  with stDep do
    begin
      sqlH := 'Update tb_historique_caisse set '
              +' statut_canc = 1 '
              +' where ope = '+QuotedStr(Cells[1,Row]);

      sqlD := 'Update tb_depense set '
              +' statut_canc = 1 '
              +' where ope = '+QuotedStr(Cells[1,Row]);

      sqlEtatJrn := 'delete from tb_etat_journal where num_ope = '+QuotedStr(Cells[1,Row]);

      PsqlOpe := ' where ope = '+QuotedStr(Cells[1,Row]);
    end;

  {Selection de la dépenses}

    dep := dm.selectDepense(PsqlOpe);

    for I := Low(dep) to High(dep) do
      begin
        vMnt_dep :=dep[i].RMontant;
        vOpe := dep[i].Sope;
        vNumCaisse := dep[i].SNumCaisse;
      end;

    {Selection de la caisse}

      SqlCaisse := ' where num_compte = '+QuotedStr(vNumCaisse);

      Caisse := dm.SelectCaisses(SqlCaisse);

    for I := Low(caisse) to High(caisse) do
      begin
        vSoldeCaisse := caisse[i].RSolde;
      end;

    {Modification du solde de la caisse}

    SqlUpCaisse := 'Update tb_caisse set'
                    +' solde = '+FloatToStr(vSoldeCaisse + vMnt_dep)
                    +' where num_compte = '+QuotedStr(vNumCaisse);

  if MessageDlg('Voulez-vous annuler cette opération ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      dm.UpdateTable(sqlH); {Changement du statut dans la table historique}
      dm.UpdateTable(sqlD); {Changement du statut dans la table des d&penses}
      dm.UpdateTable(SqlUpCaisse); {Modification du solde dans la table des caisse}
      dm.DeleteFromTable(sqlEtatJrn);{Suppession sur la fiche etat du stock}
    end;

    SpeedButton1.Click;

    end;

procedure TfrmListeDepense.Button1Click(Sender: TObject);
var
  Psql : string;

  Component: TfrxComponent;
  MD1,MD2 :TfrxMemoView;

begin

if (cbGroup.ItemIndex = -1) and (cbTdepense.ItemIndex <> -1) then
  begin
    Psql := ' select * from tb_depense '+gPsql;

    SqlDepense.SQL.Clear;
    SqlDepense.SQL.Add(Psql);
    SqlDepense.Open;

  //****************************** Affichage date1  ***********************
    Component := frxLDepense.FindObject('md1');
      if Component is TfrxMemoView then
      begin
            MD1 := Component as TfrxMemoView;
            MD1.Text := DateToStr(d1.DateTime);
      end;
    //*****
    Component := frxLDepense.FindObject('md2');
      if Component is TfrxMemoView then
      begin
            MD2 := Component as TfrxMemoView;
            MD2.Text := DateToStr(d2.DateTime);
      end;

    frxLDTab.ShowReport();
  end ;

if cbGroup.ItemIndex = 0 then
  begin
    Psql := ' select typedep, sum(montant_dep) as montant from tb_depense '
           +' where dateDep between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
           +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
           +' group by typedep ';

//****************************** Affichage date1  ***********************
  Component := frxLDTab.FindObject('md1');
    if Component is TfrxMemoView then
    begin
          MD1 := Component as TfrxMemoView;
          MD1.Text := DateToStr(d1.DateTime);
    end;
  //*****
  Component := frxLDTab.FindObject('md2');
    if Component is TfrxMemoView then
    begin
          MD2 := Component as TfrxMemoView;
          MD2.Text := DateToStr(d2.DateTime);
    end;

    SqlDepense.SQL.Clear;
    SqlDepense.SQL.Add(Psql);
//    SqlDepense.SQL.SaveToFile('g:\typedep.txt');
    SqlDepense.Open;

    frxLDTab.ShowReport();
  end;
end;

procedure TfrmListeDepense.cbGroupCloseUp(Sender: TObject);
begin
if cbGroup.ItemIndex <> -1 then cbTdepense.ItemIndex := -1 ;
end;

procedure TfrmListeDepense.cbTdepenseCloseUp(Sender: TObject);
begin
if cbTdepense.ItemIndex <> -1 then cbGroup.ItemIndex := -1 ;
end;

procedure TfrmListeDepense.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cbTdepense.Clear;
end;

procedure TfrmListeDepense.FormCreate(Sender: TObject);
begin
with stDep do
  begin
    Cells[0,0] := 'Date';
    Cells[1,0] := 'Ope';
    Cells[2,0] := 'Pièce';
    Cells[3,0] := 'Libellé';
    Cells[4,0] := 'Montant';
    Cells[5,0] := 'Type dep';
  end;

end;

procedure TfrmListeDepense.FormShow(Sender: TObject);
var
  Tdeps : TTypeDepenseArray;
  I:integer;

  PsqltDep : string;
begin
  d2.Date := Now;

  PsqltDep := '' ;
  tdeps:=DM.SelectTypeDep(PsqltDep);

  cbTdepense.Items.Add('*');
  for I := Low(tdeps) to High(tdeps) do
    begin
      cbTdepense.Items.Add(tdeps[i].Sdesigntdep);
    end;

end;

procedure TfrmListeDepense.SpeedButton1Click(Sender: TObject);
var
  deps : TDepenseArray;
  I: Integer;
  vTDep : Real;
begin
  if cbTdepense.ItemIndex = 0 then
    gPsql := ' where dateDep between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
            +' and statut_canc = 0'
            +' order by id_dep desc'
  else
    gPsql := ' where dateDep between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                +' and typedep = '+QuotedStr(cbTdepense.Text)
                +' and statut_canc = 0'
                +' order by id_dep desc';


  deps := dm.selectDepense(gPsql) ;
  stDep.RowCount := Length(deps)+1;

  vTDep := 0;

  for I := Low(deps) to High(deps) do
    begin
      with stDep do
        begin
          Cells[0,i+1]:=deps[i].SdateDep;
          Cells[1,i+1]:=deps[i].Sope;
          Cells[2,i+1]:=deps[i].SPiece;
          Cells[3,i+1]:=deps[i].SLibelle;
          Cells[4,i+1]:=FloatToStr(deps[i].RMontant);
          Cells[5,i+1]:=deps[i].STypDep;

          vTDep := vTDep + deps[i].RMontant;
        end;
    end;

//    lbTotal.Caption:=FloatToStrF(vTDep,ffNumber,15,2);

    if stDep.RowCount>1 then stDep.FixedRows:=1;
end;

procedure TfrmListeDepense.stDepDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
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
