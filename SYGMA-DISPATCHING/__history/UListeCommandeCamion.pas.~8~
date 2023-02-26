unit UListeCommandeCamion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmListeCommandeCamion = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    cbVehicule: TComboBox;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    cbStatut: TComboBox;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Consulter1: TMenuItem;
    Annuler1: TMenuItem;
    frxCommande: TfrxReport;
    frxDBCommande: TfrxDBDataset;
    QCommande: TSQLQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Annuler1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeCommandeCamion: TfrmListeCommandeCamion;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmListeCommandeCamion.Annuler1Click(Sender: TObject);
var
  sql, PsqlFact, SqlComc : string;
  Factures : TFacturationArray;
  chk_fact : Boolean;
  I: Integer;
  Comc : TCommandeCamionArray;
  vmnt_p,vmnt_r : real;
begin
  sql := 'Update tb_commande_camion set statut_cmd = 1'
        +' where num_comc = '+StringGrid1.Cells[1,StringGrid1.Row];

  PsqlFact:= ' where num_comc = '+QuotedStr(StringGrid1.Cells[1,StringGrid1.Row])
              +' and statut_canc = 0 '
              +' and statut = '+QuotedStr('AT')+' or '+ QuotedStr('FO');
  Factures := dm.SelectFactures(PsqlFact); // Selection des factures impayées de la commande

  SqlComc := ' where num_comc = '+QuotedStr(StringGrid1.Cells[1,StringGrid1.Row]);
  Comc := dm.SelectCommandeCamion(SqlComc);

  for I := Low(Comc) to High(Comc) do
    begin
      vmnt_p := Comc[i].Rmontant_p;
      vmnt_r := Comc[i].Rmontant_r;
    end;

  if vmnt_r > 0 then //Si le montant reste à payé est supérieur à 0
    begin
      if MessageDlg('Le montant de cette commande n''est pas encore reçu en totalité. '
                    +'Voulez-vous quand même poursuivre cette opération ?',mtWarning,[mbYes,mbNo],0) = mrYes then
        begin
          if MessageDlg('Voulez-vous clôturer cette commande ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
            begin
//              if Length(Factures) > 0 then // sil exite une facture non cloturé sur la commande
//                begin
//                  MessageDlg('Impossible de clôturer cette commande. Vous devez payer toutes les factures sur cette commande avant de la clôturer',mtError,[mbOK],0);
//                end else
                begin
                  dm.UpdateTable(sql); // cloture de la commande
                end;
            end;
        end;
    end else //Si le montant reste à payé sur la commande est inférieur ou égale à 0
    begin
      if MessageDlg('Voulez-vous clôturer cette commande ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          if Length(Factures) > 0 then // sil exite une facture non cloturé sur la commande
            begin
              MessageDlg('Impossible de clôturer cette commande. Vous devez payer toutes les factures sur cette commande avant de la clôturer',mtError,[mbOK],0);
            end else
            begin
              dm.UpdateTable(sql); // cloture de la commande
            end;
        end;
    end;
  SpeedButton1.Click;
end;

procedure TfrmListeCommandeCamion.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Date';
    Cells[1,0]:='N°Cmd';
    Cells[2,0]:='N°Charg';
    Cells[3,0]:='Véhicule';
    Cells[4,0]:='Montant';
    Cells[5,0]:='Payé';
    Cells[6,0]:='Reste';
    Cells[7,0]:='Statut';
  end;

end;

procedure TfrmListeCommandeCamion.FormShow(Sender: TObject);
var
  Psql : string;
  vehs : TVehiculeArray;
  i:integer;
begin
  Psql := ' ';
  d2.Date := Now;

  StringGrid1.RowCount:=2;
  StringGrid1.Rows[1].Clear;

  vehs:=dm.SelectVehicule(Psql);

  for I := Low(vehs) to High(vehs) do
    begin
      cbVehicule.Items.Add(vehs[i].SNum_mat) ;
    end;
end;

procedure TfrmListeCommandeCamion.SpeedButton1Click(Sender: TObject);
var
  Cmds : TCommandeCamionArray;
  sql : string;
  I: Integer;
begin
  if Trim(cbVehicule.Text)='' then
    sql :=  ' where date_com between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
//            +' and statut_cmd = 0'
            +' order by num_comc desc'
  else
    sql :=  ' tcc inner join tb_vehicule tbv on  tbv.Num_Immat_veh = tcc.vehicule '
            +' where date_com between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
            +' and vehicule = '+QuotedStr(cbVehicule.Text)
//            +' and statut_cmd = 0'
            +' order by num_comc desc';


  Cmds := dm.SelectCommandeCamion(sql);
  StringGrid1.RowCount := Length(Cmds)+1;

  for I := Low(Cmds) to High(Cmds) do
    begin
       with StringGrid1 do
        begin
          Cells[0,i+1]:=Cmds[i].Sdate_com;
          Cells[1,i+1]:=IntToStr(Cmds[i].Nnum_comc);
          Cells[2,i+1]:=IntToStr(Cmds[i].Nchargement);
          Cells[3,i+1]:=Cmds[i].SVehicule;
          Cells[4,i+1]:=FloatToStrF(Cmds[i].Rmontant,ffNumber,15,2);
          Cells[5,i+1]:=FloatToStrF(Cmds[i].Rmontant_p,ffNumber,15,2);
          Cells[6,i+1]:=FloatToStrF(Cmds[i].Rmontant_r,ffNumber,15,2);
          if Cmds[i].Nstatut_cmd = 0  then Cells[7,i+1]:='En cours' else Cells[7,i+1]:='Côturée'
        end;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmListeCommandeCamion.StringGrid1DrawCell(Sender: TObject; ACol,
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
