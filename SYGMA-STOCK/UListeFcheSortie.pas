unit UListeFcheSortie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.Menus;

type
  TfrmListeFcheSortie = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    cbClient: TComboBox;
    edcodeClt: TEdit;
    cbVeh: TComboBox;
    edMarque: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    frxLFicheSortie: TfrxReport;
    frxDBFicheSortie: TfrxDBDataset;
    QFicheSortie: TSQLQuery;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    Consulter1: TMenuItem;
    Supprimer1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbVehChange(Sender: TObject);
    procedure cbClientCloseUp(Sender: TObject);
    procedure cbVehCloseUp(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Consulter1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmListeFcheSortie: TfrmListeFcheSortie;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmListeFcheSortie.Button1Click(Sender: TObject);
var
  Sql : string;
  Fhs : TFicheEsHArray;
  i:integer;
begin
if (edcodeClt.Text='') and (edMarque.Text='') then
  begin
    Sql := ' where typeFs = 1 '
          +' and date_fh between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' and statut_canc = 0 '
          +' order by id_fh desc ';
  end else
  if edcodeClt.Text<>'' then
  begin
    Sql := ' where typeFs= 1 '
          +' and date_fh between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' and code_clt = '+QuotedStr(edcodeClt.Text)
          +' and statut_canc = 0 '
          +' order by id_fh desc ';
  end else
  if edMarque.Text<>'' then
    begin
      Sql := ' where typeFs = 1 '
                +' and date_fh between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                +' and matricule_veh = '+QuotedStr(cbVeh.Text)
                +' and statut_canc = 0 '
                +' order by id_fh desc ';
    end;

    Fhs := dm.SelectFicheEsH(Sql);
    StringGrid1.RowCount := Length(Fhs)+1;

    for I := Low(Fhs) to High(Fhs) do
      with StringGrid1 do
        begin
          Cells[0,i+1] := Fhs[i].Sdate_fh;
          Cells[1,i+1] := IntToStr(Fhs[i].Nnum_fh);
          Cells[2,i+1] := Fhs[i].Scode_clt;
          Cells[3,i+1] := Fhs[i].Snom_clt;
          Cells[4,i+1] := Fhs[i].Snum_veh;
          Cells[5,i+1] := Fhs[i].Snom_veh;
        end;

//  QFicheSortie.SQL.Clear;
//  QFicheSortie.SQL.Add(Sql);
//  QFicheSortie.Open;

//  frxLFicheSortie.ShowReport();
end;

procedure TfrmListeFcheSortie.cbClientCloseUp(Sender: TObject);
var
  Psql : string;
  Clts : TClientArray;
  I: Integer;
begin

    Psql := ' where nom_clt = '+QuotedStr(cbClient.Text);

    Clts := DM.selectClients(Psql);

    for I := Low(Clts) to High(Clts) do
      begin
        edcodeClt.Text:=Clts[i].SCodeClt;
      end;

      edMarque.Clear;
end;

procedure TfrmListeFcheSortie.cbVehChange(Sender: TObject);
begin
edMarque.Clear;
cbVehCloseUp(sender);
end;

procedure TfrmListeFcheSortie.cbVehCloseUp(Sender: TObject);
var
  vehs : TVehiculeArray;
  Psql_veh : string;
  i: integer;
begin
//selection du v�hicule
    Psql_veh := ' where Num_Immat_veh = '+QuotedStr(cbVeh.Text) ;

    vehs:=dm.SelectVehicule(Psql_veh);
    for I := Low(vehs) to High(vehs) do
      begin
        edMarque.Text := vehs[i].SMarque;
      end;

      edcodeClt.Clear;
end;

procedure TfrmListeFcheSortie.Consulter1Click(Sender: TObject);
var
  Sql : string;
begin
if (edcodeClt.Text='') and (edMarque.Text='') then
  begin
    Sql := ' Select * from tb_fiche_esh '
          +' inner join tb_fiche_es on tb_fiche_es.num_fes = tb_fiche_esh.num_fh'
          +' where typeFs = 1 '
          +' and date_fh between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' and tb_fiche_esh.num_fh = '+QuotedStr(StringGrid1.Cells[1,StringGrid1.Row])
  end else
  if edcodeClt.Text<>'' then
  begin
    Sql := ' Select * from tb_fiche_esh '
          +' inner join tb_fiche_es on tb_fiche_es.num_fes = tb_fiche_esh.num_fh'
          +' where typeFs= 1 '
          +' and date_fh between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' and code_clt = '+QuotedStr(edcodeClt.Text)
          +' and tb_fiche_esh.num_fh = '+QuotedStr(StringGrid1.Cells[1,StringGrid1.Row])
  end else
  if edMarque.Text<>'' then
    begin
    Sql := ' Select * from tb_fiche_esh '
          +' inner join tb_fiche_es on tb_fiche_es.num_fes = tb_fiche_esh.num_fh'
          +' where typeFs = 1 '
          +' and date_fh between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
          +' and matricule_veh = '+QuotedStr(cbVeh.Text)
          +' and tb_fiche_esh.num_fh = '+QuotedStr(StringGrid1.Cells[1,StringGrid1.Row])
    end;


  QFicheSortie.SQL.Clear;
  QFicheSortie.SQL.Add(Sql);
  QFicheSortie.Open;
//
  frxLFicheSortie.ShowReport();
end;

procedure TfrmListeFcheSortie.FormCreate(Sender: TObject);
begin
cbClient.Clear;
cbVeh.Clear;

with StringGrid1 do
  begin
    Cells[0,0] := 'Date';
    Cells[1,0] := 'N�';
    Cells[2,0] := 'Client';
    Cells[3,0] := 'Nom';
    Cells[4,0] := 'V�hicule';
    Cells[5,0] := 'Nom';
  end;
end;

procedure TfrmListeFcheSortie.FormShow(Sender: TObject);
var
  Psql,Psql_veh : string;
  Clts : TClientArray;
  I: Integer;
  vehs : TVehiculeArray;
begin
  d2.Date := Now;
  Psql := '';

  Clts := DM.selectClients(Psql);

  for I := Low(Clts) to High(Clts) do
    begin
      cbClient.Items.Add(Clts[i].SnomClt);
    end;

//selection du v�hicule
  Psql_veh := '';

  vehs:=dm.SelectVehicule(Psql_veh);
  for I := Low(vehs) to High(vehs) do
    begin
      cbVeh.Items.Add(vehs[i].SNum_mat);
    end;
end;

procedure TfrmListeFcheSortie.StringGrid1DrawCell(Sender: TObject; ACol,
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
