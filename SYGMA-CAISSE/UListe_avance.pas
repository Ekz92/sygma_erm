unit UListe_avance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmListeAvance = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    cbClient: TComboBox;
    edCodeClt: TEdit;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Consulterlesolde1: TMenuItem;
    Annuleruneavance1: TMenuItem;
    procedure cbClientCloseUp(Sender: TObject);
    procedure cbClientChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Annuleruneavance1Click(Sender: TObject);
    procedure Consulterlesolde1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeAvance: TfrmListeAvance;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmListeAvance.Annuleruneavance1Click(Sender: TObject);
var
  SqlCanc : string;
  CompteClient : TCompteClientArray;
  Avance : TAvanceDetailArray;
  sql_Cc,sql_UpCc,
  sqlSelAv ,
  SqlDelReleve,SqlDelJrl:string;
  I: Integer;
  solde_cc,mnt_av : real;
begin
if MessageDlg('Voulez-vous annuler cet avance ?',mtWarning,[mbYes,mbNo],0)=mryes then
  begin
//  Modification du statut de l'avance
    SqlCanc := 'update tb_compte_client_detail set statut_canc = 1'
                +' where num_ope = '+StringGrid1.Cells[1,StringGrid1.Row];

    dm.UpdateTable(SqlCanc);

//     selection du solde du compte client
    sql_Cc := ' where num_cc = '+QuotedStr(StringGrid1.Cells[2,StringGrid1.Row]);

    CompteClient := dm.SelectCompteClient(sql_Cc);

    for I := Low(CompteClient) to High(CompteClient) do
      begin
        solde_cc := CompteClient[i].RSolde;
      end;
//      selection de l'avance
      sqlSelAv := ' where num_ope = '+StringGrid1.Cells[1,StringGrid1.Row];
      Avance := dm.SelectAvance(sqlSelAv);

      for I := Low(Avance) to High(Avance) do
        begin
          mnt_av := Avance[i].Rmontant;
        end;

//        Mise à jour du solde compte client

      sql_UpCc := 'Update tb_compte_client set solde = '+FloatToStr(solde_cc - mnt_av)
                  +' where num_cc = '+QuotedStr(StringGrid1.Cells[2,StringGrid1.Row]);

//      suppression dans les relevés dopération du client
      SqlDelReleve := 'delete from tb_releve_client where operation_rc = '+StringGrid1.Cells[1,StringGrid1.Row]
                      +' and piece = '+QuotedStr(StringGrid1.Cells[1,StringGrid1.Row]);
      dm.DeleteFromTable(SqlDelReleve);

//      Suppression dsur le journal de caisse
      SqlDelJrl := 'Delete from tb_etat_journal '
                  +' where num_ope = '+QuotedStr(StringGrid1.Cells[1,StringGrid1.Row]);
      dm.DeleteFromTable(SqlDelJrl);

      dm.UpdateTable(sql_UpCc);
      SpeedButton1.Click;
  end;
end;

procedure TfrmListeAvance.cbClientChange(Sender: TObject);
begin
edCodeClt.Clear;
cbClient.onCloseUp(sender);

end;

procedure TfrmListeAvance.cbClientCloseUp(Sender: TObject);
var
  client : TClient;
  nomClt : String;
begin
  nomClt := cbClient.Text;
  client := DM.selectCodeclt(nomClt);
  edCodeClt.Text := client.SCodeClt;
end;

procedure TfrmListeAvance.Consulterlesolde1Click(Sender: TObject);
var
  ccs : TCompteClientArray;
  Psql :string;
  Solde :real;
  I: Integer;
begin
  Psql := 'where code_clt = '+QuotedStr(StringGrid1.Cells[2,StringGrid1.Row]);
  ccs := dm.SelectCompteClient(Psql) ;

  for I := Low(ccs) to High(ccs) do
    begin
      Solde := ccs[i].RSolde;
    end;
  ShowMessage(FloatToStrF(Solde,ffNumber,15,2));
end;

procedure TfrmListeAvance.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Date';
    Cells[1,0]:='Ope';
    Cells[2,0]:='Client';
    Cells[3,0]:='Nom';
    Cells[4,0]:='Montant';
  end;

end;

procedure TfrmListeAvance.FormShow(Sender: TObject);
var
  Psql : string;
  clients : TClientArray;
  i,j : integer;
begin

  d2.DateTime := Now;

  Psql := '';
  clients := dm.selectClients(Psql);

  for I := Low(clients) to High(clients) do
    begin
       cbClient.Items.Add(clients[i].SnomClt);
    end;

  StringGrid1.RowCount := 1;
end;

procedure TfrmListeAvance.SpeedButton1Click(Sender: TObject);
var
  i : integer;
  avs : TAvanceDetailArray;
  Psql : string;
begin

  if Trim(edCodeClt.Text)<>'' then
    Psql := 'where code_clt = '+QuotedStr(edCodeClt.Text)
            +' and date_ccd between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.DateTime)+' 00:00:00')
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.DateTime)+' 23:59:59')
            +' and statut_canc = 0 '
            +' order by id_ccd desc'
  else
    Psql :=' where date_ccd between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.DateTime)+' 00:00:00')
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.DateTime)+' 23:59:59')
            +' and statut_canc = 0 '
            +' order by id_ccd desc';


  avs := dm.SelectAvance(Psql);
  StringGrid1.RowCount := Length(avs)+1;

  for I := Low(avs) to High(avs) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1]:=avs[i].Sdate_ccd;
          Cells[1,i+1]:=IntToStr(avs[i].Nope);
          Cells[2,i+1]:=avs[i].Scode_clt;
          Cells[3,i+1]:=avs[i].Snom_clt;
          Cells[4,i+1]:=FloatToStrF(avs[i].Rmontant,ffNumber,15,2);
        end;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmListeAvance.StringGrid1DrawCell(Sender: TObject; ACol,
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
