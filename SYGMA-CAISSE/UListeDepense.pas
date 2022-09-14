unit UListeDepense;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TfrmListeDepense = class(TForm)
    stDep: TStringGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    lbTotal: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    PopupMenu1: TPopupMenu;
    Annulercettedpense1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure stDepDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure Annulercettedpense1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmListeDepense: TfrmListeDepense;

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
{ Pr�paration des requetes}
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

  {Selection de la d�penses}

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

  if MessageDlg('Voulez-vous annuler cette op�ration ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      dm.UpdateTable(sqlH); {Changement du statut dans la table historique}
      dm.UpdateTable(sqlD); {Changement du statut dans la table des d&penses}
      dm.UpdateTable(SqlUpCaisse); {Modification du solde dans la table des caisse}
      dm.DeleteFromTable(sqlEtatJrn);{Suppession sur la fiche etat du stock}
    end;

    SpeedButton1.Click;

    end;

procedure TfrmListeDepense.FormCreate(Sender: TObject);
begin
with stDep do
  begin
    Cells[0,0] := 'Date';
    Cells[1,0] := 'Ope';
    Cells[2,0] := 'Pi�ce';
    Cells[3,0] := 'Libell�';
    Cells[4,0] := 'Montant';
  end;

end;

procedure TfrmListeDepense.FormShow(Sender: TObject);
begin
d2.Date := Now;

end;

procedure TfrmListeDepense.SpeedButton1Click(Sender: TObject);
var
  Psql : string;
  deps : TDepenseArray;
  I: Integer;
  vTDep : Real;
begin

  Psql := ' where dateDep between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
              +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
              +' and statut_canc = 0'
              +' order by id_dep desc';

  deps := dm.selectDepense(Psql) ;
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

          vTDep := vTDep + deps[i].RMontant;
        end;
    end;

    lbTotal.Caption:=FloatToStrF(vTDep,ffNumber,15,2);

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
