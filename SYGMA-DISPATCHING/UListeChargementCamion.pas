unit UListeChargementCamion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmListeChargementCamion = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    cbVehicule: TComboBox;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    StringGrid1: TStringGrid;
    cbStatut: TComboBox;
    Panel2: TPanel;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Consulter1: TMenuItem;
    Modifier1: TMenuItem;
    Annuler1: TMenuItem;
    frxChargementVeiw: TfrxReport;
    frxDBChargementView: TfrxDBDataset;
    QChargementView: TSQLQuery;
    RChargement: TfrxReport;
    QChargement: TSQLQuery;
    frxDBChargement: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Consulter1Click(Sender: TObject);
    procedure Modifier1Click(Sender: TObject);
    procedure Annuler1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmListeChargementCamion: TfrmListeChargementCamion;

implementation

{$R *.dfm}

uses records, UDM, UModifChargement;

procedure TfrmListeChargementCamion.Annuler1Click(Sender: TObject);
var
  Sql,
  SqlDel,
  Pchd,
  PsqlUp,
  PsqlStockCam,vVeh :string;
  chd : TVteChargVehdArray;
  StockCam : TStockCamion;
  i : integer;

  SaveSql : TextFile;
begin
if MessageDlg('Attention ! Cette action va annuler le chargement et dininuer le stock dans le camion. Voulez-vous continuer ?',
              mtWarning,[mbYes,mbNo],0)= mrYes then
  begin
    { Modification du statut du chargement}
      with StringGrid1 do
        begin
          sql := 'Update tb_vte_chargveh set'
                  +' statut_canc = 1'
                  +' where numCharg = '+QuotedStr(Cells[1,Row]);

          SqlDel := 'delete from tb_livraison_camion '
                    +' where num_charg = '+StringGrid1.Cells[1,StringGrid1.Row];

          Pchd := ' where numCharg = '+QuotedStr(Cells[1,Row]);

          vVeh :=Cells[2,Row];
        end;
       dm.UpdateTable(Sql); //Changement du statut canc
       dm.Delete(SqlDel); // Suppression de ligne sur la fiche dispatching

        chd := dm.selectChargementDetailCamion(Pchd); {Selection du chargement}

{        AssignFile(SaveSql, 'G:\SaveSql.txt');
        Rewrite(SaveSql); //Pour la cr�ation du fichier s'il n'existe pas }

        for I := Low(chd) to High(chd) do
          with StringGrid1 do
            begin
              PsqlStockCam := ' where vehicule = '+QuotedStr(vVeh)
                              +' and code_art = '+QuotedStr(chd[i].ScodeArt);
              StockCam := dm.selectStockCamion(PsqlStockCam);{selection du stock d'article dans le camion}

              PsqlUp := 'Update tb_stock_camion set '
                        +' qte_vide = '+IntToStr(StockCam.NQte_vide + chd[i].Nqte)+','
                        +' qte_mag ='+IntToStr(StockCam.NQte_mag - chd[i].Nqte)
                        +' where code_art = '+QuotedStr(chd[i].ScodeArt)
                        +' and vehicule = '+QuotedStr(vVeh) ;

              dm.UpdateTable(PsqlUp); {Modification des quantit�s dans les v�hicules}

          {Enregistrement de la requete dans un fichier txt
              Append(SaveSql);
              Writeln(SaveSql, PsqlUp);
              CloseFile(SaveSql);                       }
            end;
            SpeedButton1.Click;
  end;
end;

procedure TfrmListeChargementCamion.Consulter1Click(Sender: TObject);
var
  sql :string;

  mVehicule,mMontant: TfrxMemoView;
  Component: TfrxComponent;
begin
  with StringGrid1 do
    begin
      sql := 'select * from tb_vte_chargveh ch, tb_vte_chargvehd chd '
             +' where chd.numCharg = '+QuotedStr(Cells[1,Row])
             +' and chd.numCharg = ch.numCharg'
             +' order by ch.numCharg desc ';
    end;

  QChargementView.SQL.Clear;
  QChargementView.SQL.Add(sql);
  QChargementView.Open;

//----------------N� du v�hicule--------------------------
Component := frxChargementVeiw.FindObject('mVehicule');
  if Component is TfrxMemoView then
    begin
      mVehicule := Component as TfrxMemoView;
      mVehicule.Text :=StringGrid1.Cells[2,StringGrid1.Row];
    end;
//----------------Montant du chargement--------------------------
Component := frxChargementVeiw.FindObject('mMontant');
  if Component is TfrxMemoView then
    begin
      mMontant := Component as TfrxMemoView;
      mMontant.Text :=StringGrid1.Cells[3,StringGrid1.Row];
    end;

  frxChargementVeiw.ShowReport();
end;

procedure TfrmListeChargementCamion.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Date';
    Cells[1,0]:='N�Charg';
    Cells[2,0]:='Src';
    Cells[3,0]:='Client';
    Cells[4,0]:='Nom';
    Cells[5,0]:='V�hicule';
    Cells[6,0]:='Montant';
    Cells[7,0]:='Pi�ce';
    Cells[8,0]:='Chauf';
    Cells[9,0]:='Nom';
    Cells[10,0]:='User'
  end;

end;

procedure TfrmListeChargementCamion.FormShow(Sender: TObject);
var
  Psql : string;
  vehs : TVehiculeArray;
  i:integer;
begin
  Psql := ' ';
  d2.Date := Now;

  vehs:=dm.SelectVehicule(Psql);

  for I := Low(vehs) to High(vehs) do
    begin
      cbVehicule.Items.Add(vehs[i].SNum_mat) ;
    end;
end;

procedure TfrmListeChargementCamion.Modifier1Click(Sender: TObject);
begin
with frmModifChargement do
  begin
    edNumCharg.Text := StringGrid1.Cells[1,StringGrid1.Row] ;
    edPiece.Text :=StringGrid1.Cells[7,StringGrid1.Row] ;
    ShowModal;
  end;
end;

procedure TfrmListeChargementCamion.SpeedButton1Click(Sender: TObject);
var
  Chs : TvteChargVehArray;
  sql : string;
  I: Integer;
begin
  if Trim(cbVehicule.Text)='' then
    sql := ' where dateCharg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
            +' and statut_canc = 0'
            +' order by numCharg desc'
  else
    sql := ' where dateCharg between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
            +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
            +' and vehicule = '+QuotedStr(cbVehicule.Text)
            +' and statut_canc = 0'
            +' order by numCharg desc';


  Chs := dm.selectChargementCamion(sql);
  StringGrid1.RowCount := Length(Chs)+1;
  for I := Low(Chs) to High(Chs) do
    begin
       with StringGrid1 do
        begin
          Cells[0,i+1]:=Chs[i].SdateCharg;
          Cells[1,i+1]:=IntToStr(Chs[i].NnumCharg);
          Cells[2,i+1]:=IntToStr(Chs[i].NSrc_charg);
          Cells[3,i+1]:=chs[i].ScodClient;
          Cells[4,i+1]:=chs[i].SnomClient;
          Cells[5,i+1]:=Chs[i].SVehicule;
          Cells[6,i+1]:=FloatToStrF(Chs[i].RMontant,ffNumber,15,2);
          Cells[7,i+1]:=Chs[i].SPiece;
          Cells[8,i+1]:=IntToStr(chs[i].NnumMatChauf);
          Cells[9,i+1]:=chs[i].SnomChauf;
          Cells[10,i+1]:=chs[i].SUsager;
        end;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmListeChargementCamion.StringGrid1DblClick(Sender: TObject);
begin
Self.Consulter1Click(Sender);
end;

procedure TfrmListeChargementCamion.StringGrid1DrawCell(Sender: TObject; ACol,
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