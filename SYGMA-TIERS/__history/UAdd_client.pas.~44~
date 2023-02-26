unit UAdd_client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmAdd_client = class(TForm)
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label10: TLabel;
    Label9: TLabel;
    MemoComment: TMemo;
    edNom: TEdit;
    edAdresse: TEdit;
    edTel: TEdit;
    edEmail: TEdit;
    edcodeclt: TEdit;
    cbTarif: TComboBox;
    edCodeTarif: TEdit;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    edNomRech: TEdit;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    Consulter1: TMenuItem;
    Modifier1: TMenuItem;
    Supprimer1: TMenuItem;
    cbtclient: TComboBox;
    Label11: TLabel;
    edcodetclt: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Modifier1Click(Sender: TObject);
    procedure Supprimer1Click(Sender: TObject);
    procedure cbTarifCloseUp(Sender: TObject);
    procedure edNomRechChange(Sender: TObject);
    procedure cbtclientCloseUp(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmAdd_client: TfrmAdd_client;

implementation

{$R *.dfm}

uses UDM, records, UConnexion;

procedure TfrmAdd_client.cbTarifCloseUp(Sender: TObject);
var
  Tarifs : TTarifArray;
  Psql : string;
  I: Integer;
begin
   Psql := ' where designation_tarif = '+QuotedStr(cbTarif.Text);

   Tarifs:=dm.SelectTarif(Psql);

   for I := Low(Tarifs) to High(Tarifs) do
      begin
        edCodeTarif.Text:=Tarifs[i].SCode_tarif;
      end;
end;

procedure TfrmAdd_client.cbtclientCloseUp(Sender: TObject);
var
  TClients : TTypeClientArray;
  Psql : string;
  I: Integer;
begin
   Psql := ' where designation_tclt = '+QuotedStr(cbtclient.Text);

   TClients:=dm.selectTypeClients(Psql);

   for I := Low(TClients) to High(TClients) do
      begin
        edcodetclt.Text:=TClients[i].Scode_tclt;
      end;

end;

procedure TfrmAdd_client.edNomRechChange(Sender: TObject);
var
  Clients : TClientArray;
  Psql : string;
  I: Integer;
begin
  Psql :=' where nom_clt like '+QuotedStr(edNomRech.Text+'%');
  Clients:=dm.selectClients(Psql);
  StringGrid1.RowCount := Length(Clients)+1;
  for I := Low(Clients) to High(Clients) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := Clients[i].SCodeClt;
          Cells[1,i+1] := Clients[i].SnomClt;
          Cells[2,i+1] := Clients[i].StelClt;
          Cells[3,i+1] := Clients[i].SadresseClt;
          Cells[4,i+1] := Clients[i].Smail;
          Cells[5,i+1] := Clients[i].ScommentClt;
          Cells[6,i+1] := Clients[i].STarif;
        end;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows:=1;
end;

procedure TfrmAdd_client.FormActivate(Sender: TObject);
begin
MemoComment.Clear;
edcodeclt.SetFocus;

end;

procedure TfrmAdd_client.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cbTarif.Clear;
cbtclient.Clear;
end;

procedure TfrmAdd_client.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Code';
    Cells[1,0]:='Nom';
    Cells[2,0]:='Tel';
    Cells[3,0]:='Adresse';
    Cells[4,0]:='E-mail';
    Cells[5,0]:='Comment.';
    Cells[6,0]:='Tarif'  ;
    Cells[7,0]:='Type Clt'
  end;
end;

procedure TfrmAdd_client.FormShow(Sender: TObject);
var
  Clients : TClientArray;
  TCLients : TTypeClientArray;
  Psql : string;
  I: Integer;

  Tarifs : TTarifArray;
  Psql_tarif,PSqlTClt :string;


begin
//************** Selection de type client ******

  PSqlTClt := '';
  TCLients:=dm.selectTypeClients(PSqlTClt);

  for I := Low(TCLients) to High(TCLients) do
    begin
      cbtclient.Items.Add(TCLients[i].Sdesignation_tclt);
    end;

//************* Selection de lient**************
  Psql :=' order by id_clt desc';
  Clients:=dm.selectClients(Psql);
  StringGrid1.RowCount := Length(Clients)+1;
  for I := Low(Clients) to High(Clients) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := Clients[i].SCodeClt;
          Cells[1,i+1] := Clients[i].SnomClt;
          Cells[2,i+1] := Clients[i].StelClt;
          Cells[3,i+1] := Clients[i].SadresseClt;
          Cells[4,i+1] := Clients[i].Smail;
          Cells[5,i+1] := Clients[i].ScommentClt;
          Cells[6,i+1] := Clients[i].STarif;
          Cells[7,i+1] := Clients[i].STypeclt;
        end;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
//************** Affichage du tarif********

  Psql_tarif :='';

  Tarifs := DM.SelectTarif(Psql_tarif);

  for I := Low(Tarifs) to High(Tarifs) do
    begin
      cbTarif.Items.Add(Tarifs[i].SDesignation_tarif);
    end;
end;

procedure TfrmAdd_client.Modifier1Click(Sender: TObject);
begin

  SpeedButton1.Caption:='Modifier';
  edcodeclt.ReadOnly:=True;

  with StringGrid1 do
    begin
      edcodeclt.Text:=Cells[0,Row];
      edNom.Text:=Cells[1,Row];
      edAdresse.Text:=Cells[3,Row];
      edTel.Text:=Cells[2,Row];
      edEmail.Text:=Cells[4,Row];
      MemoComment.Text:=Cells[5,Row];
      edCodeTarif.Text :=Cells[6,Row];
      edcodetclt.Text :=Cells[7,Row];
    end;

end;

procedure TfrmAdd_client.SpeedButton1Click(Sender: TObject);
var
  Clt : TClient;
  cmpt :TCompteClient;
  Clts : TClientArray;
  Psql,
  sqlCc,
  sqlccd,
  SqlUpFact,
  SqlUpFactd : string;

  I: Integer;
  ExistClt,
  ChkSaisie : Boolean;
begin
// Vérification des chanmps

  if (edcodeclt.Text<>'') and (edNom.Text<>'') and
      (edAdresse.Text<>'')and(edTel.Text<>'')
        and (edCodeTarif.Text<>'') and (edcodetclt.Text<>'') then

      ChkSaisie:= True else ChkSaisie := False;

  Psql := '';
  Clts := dm.selectClients(Psql);
  ExistClt:=False;

  for I := Low(Clts) to High(Clts) do
    begin
      if Clts[i].SCodeClt = edcodeclt.Text then
          begin
            ExistClt := True;
          end;
    end;

    with Clt do    {Insertion dans la table client}
      begin
        SCodeClt:=QuotedStr(Trim(edcodeclt.Text));
        SnomClt:=QuotedStr(trim(edNom.Text));
        SadresseClt:=QuotedStr(trim(edAdresse.Text));
        StelClt:=QuotedStr(edTel.Text);
        Smail:=QuotedStr(edEmail.Text);
        ScommentClt:=QuotedStr(MemoComment.Text);
        SZone:=QuotedStr('');
        STarif:=QuotedStr(edCodeTarif.Text);
        STypeclt:=QuotedStr(edcodetclt.Text);
      end;

      with cmpt do {Insertion dans la table des comptes}
        begin
          Scode_clt:=QuotedStr(trim(edcodeclt.Text));
          SNom_clt:=QuotedStr(trim(edNom.Text));
          SNum_cc:=QuotedStr(trim(edcodeclt.Text));
          RSolde:=0;
        end;

        sqlCc:='update tb_compte_client set nom_clt = '+Clt.SnomClt
                            +' where code_clt = '+Clt.SCodeClt;

        sqlCcd:='update tb_compte_client_detail set nom_clt = '+Clt.SnomClt
                            +' where code_clt = '+Clt.SCodeClt;

        SqlUpFact := ' update tb_facturation set nom_clt = '+QuotedStr(edNom.Text)
                            +' where code_clt = '+Clt.SCodeClt;

        SqlUpFactd := ' update tb_facturation_detail set nom_clt = '+QuotedStr(edNom.Text)
                            +' where code_clt = '+Clt.SCodeClt;

  if ChkSaisie=True then
    begin
      if (ExistClt=False) and (SpeedButton1.Caption='Ajouter') then
        begin
          dm.InsertClient(Clt);
          dm.InsertCompteClt(cmpt);
        end
      else if (ExistClt=True) and (SpeedButton1.Caption='Modifier') then
        begin
          if MessageDlg('Voulez-vous modifier les informations de ce client ?',mtInformation,[mbYes,mbNo],0)=mrYes then
           begin
            dm.UpdateClient(Clt);  {Modification dans la table client}
            dm.UpdateTable(sqlCc); {Modification dans la table des compte client}
            dm.UpdateTable(sqlccd);{ Modification dans la table details des comptes clients}
            dm.UpdateTable(SqlUpFact);{Modification dans la table facture}
            dm.UpdateTable(SqlUpFactd);{Modification dans la table du dtail de la facture}
           end;
        end
      else if (ExistClt=True) and (SpeedButton1.Caption='Ajouter') then
        begin
          MessageDlg('Il exite déjà un client avec ce code',mtError,[mbRetry],0);
        end;
    end else
      begin
        MessageDlg('Les champs marqué (*) sont obligatoires',mtError,[mbRetry],0);
        exit
      end;
  SpeedButton2.Click;
  Self.OnShow(sender);
end;

procedure TfrmAdd_client.SpeedButton2Click(Sender: TObject);
begin
edNom.Clear;
edAdresse.Text:='LOME';
edTel.Text := 'A COMPLETER';
edEmail.Clear;
MemoComment.Clear;
edcodeclt.Clear;
edCodeTarif.Text :='TNORG';
edcodetclt.Text :='CN01';

cbTarif.Clear;
cbtclient.Clear;

edcodeclt.SetFocus;
SpeedButton1.Caption:='Ajouter';
edcodeclt.ReadOnly:=false;
end;

procedure TfrmAdd_client.StringGrid1DrawCell(Sender: TObject; ACol,
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

procedure TfrmAdd_client.Supprimer1Click(Sender: TObject);
var
  Psql_cl,
  Psql_cc : string;
begin
  if vUsager='1001' then
    begin
      with StringGrid1 do
        begin
          Psql_cl := 'Delete from tb_client where code_clt = '+QuotedStr(Cells[0,Row]);
          Psql_cc := 'Delete from tb_compte_client where code_clt = '+QuotedStr(Cells[0,Row]);
        end;

        if MessageDlg('Voulez-vous supprimer ce client ?',
                      mtWarning,[mbYes,mbNo],0) = mrYes then
        begin
          dm.Delete(Psql_cl);
          dm.Delete(Psql_cc);
          FormShow(sender);
        end;
    end else
    MessageDlg('Vous n''avez pas d''autorisation pour cette action',mtError,[mbOK],0);
end;

end.
