unit UAddFournisseur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmAddFournisseur = class(TForm)
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label10: TLabel;
    mAdresse: TMemo;
    edNom: TEdit;
    edTel: TEdit;
    edEmail: TEdit;
    edcodefourn: TEdit;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    edNomRech: TEdit;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    Consulter1: TMenuItem;
    Modifier1: TMenuItem;
    Supprimer1: TMenuItem;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure edNomRechChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmAddFournisseur: TfrmAddFournisseur;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmAddFournisseur.edNomRechChange(Sender: TObject);
var
  Fourns : TFournisseurArray;
  Psql : string;
  I: Integer;
begin
  Psql :=' where nom_fourn like '+QuotedStr(edNomRech.Text+'%');
  Fourns:=dm.selectFournisseur(Psql);
  StringGrid1.RowCount := Length(Fourns)+1;
  for I := Low(Fourns) to High(Fourns) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := Fourns[i].Snom_fourn;
          Cells[1,i+1] := Fourns[i].Stel_fourn;
          Cells[2,i+1] := Fourns[i].Semail_fourn;
          Cells[3,i+1] := Fourns[i].Sadresse_froun;
        end;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows:=1;
end;

procedure TfrmAddFournisseur.FormActivate(Sender: TObject);
begin
mAdresse.Clear;
edcodefourn.SetFocus;
end;

procedure TfrmAddFournisseur.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Code';
    Cells[1,0]:='Nom';
    Cells[2,0]:='Tel';
    Cells[3,0]:='E-mail';
    Cells[4,0]:='Adresse';
  end;

end;

procedure TfrmAddFournisseur.FormShow(Sender: TObject);
var
  Fourns : TFournisseurArray;
  Psql : string;
  I: Integer;
begin
  Psql :='';
  Fourns:=dm.selectFournisseur(Psql);
  StringGrid1.RowCount := Length(Fourns)+1;
  for I := Low(Fourns) to High(Fourns) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := Fourns[i].Snom_fourn;
          Cells[1,i+1] := Fourns[i].Stel_fourn;
          Cells[2,i+1] := Fourns[i].Semail_fourn;
          Cells[3,i+1] := Fourns[i].Sadresse_froun;
        end;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows:=1;
end;

procedure TfrmAddFournisseur.SpeedButton1Click(Sender: TObject);
var
  Fourn : TFournisseur;
//  cmpt :TCompteClient;
  fourns : TFournisseurArray;
  Psql,
  sqlCc,
  sqlccd,
  SqlUpFact,
  SqlUpFactd : string;

  I: Integer;
  ExistClt,
  ChkSaisie : Boolean;
begin
// V�rification des chanmps

  if (edcodefourn.Text<>'') and (edNom.Text<>'') and
      (mAdresse.Text<>'')and(edTel.Text<>'') then

      ChkSaisie:= True else ChkSaisie := False;

  Psql := '';
  fourns := dm.selectFournisseur(Psql);
  ExistClt:=False;

  for I := Low(Fourns) to High(Fourns) do
    begin
      if Fourns[i].SCode_fourn = edcodefourn.Text then
          begin
            ExistClt := True;
          end;
    end;

    with Fourn do    {Insertion dans la table client}
      begin
        Scode_fourn:=QuotedStr(Trim(edcodefourn.Text));
        Snom_fourn:=QuotedStr(trim(edNom.Text));
        Stel_fourn:=QuotedStr(edTel.Text);
        Semail_fourn:=QuotedStr(edEmail.Text);
        Sadresse_froun:=QuotedStr(mAdresse.Text);
      end;

//      with cmpt do {Insertion dans la table des comptes}
//        begin
//          Scode_clt:=QuotedStr(trim(edcodeclt.Text));
//          SNom_clt:=QuotedStr(trim(edNom.Text));
//          SNum_cc:=QuotedStr(trim(edcodeclt.Text));
//          RSolde:=0;
//        end;
//
//        sqlCc:='update tb_compte_client set nom_clt = '+Clt.SnomClt
//                            +' where code_clt = '+Clt.SCodeClt;
//
//        sqlCcd:='update tb_compte_client_detail set nom_clt = '+Clt.SnomClt
//                            +' where code_clt = '+Clt.SCodeClt;
//
//        SqlUpFact := ' update tb_facturation set nom_clt = '+QuotedStr(edNom.Text)
//                            +' where code_clt = '+Clt.SCodeClt;
//
//        SqlUpFactd := ' update tb_facturation_detail set nom_clt = '+QuotedStr(edNom.Text)
//                            +' where code_clt = '+Clt.SCodeClt;

  if ChkSaisie=True then
    begin
      if (ExistClt=False) and (SpeedButton1.Caption='Ajouter') then
        begin
          dm.InsertFournisseur(Fourn);
//          dm.InsertCompteClt(cmpt);
        end
      else if (ExistClt=True) and (SpeedButton1.Caption='Modifier') then
        begin
          if MessageDlg('Voulez-vous modifier les informations de ce client ?',mtInformation,[mbYes,mbNo],0)=mrYes then
           begin
            dm.UpdateFourn(fourn);  {Modification dans la table client}
//            dm.UpdateTable(sqlCc); {Modification dans la table des compte client}
//            dm.UpdateTable(sqlccd);{ Modification dans la table details des comptes clients}
//            dm.UpdateTable(SqlUpFact);{Modification dans la table facture}
//            dm.UpdateTable(SqlUpFactd);{Modification dans la table du dtail de la facture}
           end;
        end
      else if (ExistClt=True) and (SpeedButton1.Caption='Ajouter') then
        begin
          MessageDlg('Il exite d�j� un client avec ce code',mtError,[mbRetry],0);
        end;
    end else
      begin
        MessageDlg('Les champs marqu� (*) sont obligatoires',mtError,[mbRetry],0);
        exit
      end;
  SpeedButton2.Click;
  Self.OnShow(sender);
end;

procedure TfrmAddFournisseur.SpeedButton2Click(Sender: TObject);
begin
edNom.Clear;
edTel.Text := 'A COMPLETER';
edEmail.Clear;
mAdresse.Clear;
edcodefourn.Clear;


edcodefourn.SetFocus;
SpeedButton1.Caption:='Ajouter';
edcodefourn.ReadOnly:=false;
end;

procedure TfrmAddFournisseur.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
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