unit UTransfertInterCamion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TfrmTransfertInterCamion = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cbVehS: TComboBox;
    edVehS: TEdit;
    Label2: TLabel;
    cbVehD: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    edVehD: TEdit;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    cbMag: TComboBox;
    btSave: TButton;
    Annuler: TButton;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbVehSCloseUp(Sender: TObject);
    procedure cbVehDCloseUp(Sender: TObject);
    procedure cbMagCloseUp(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSaveClick(Sender: TObject);
    procedure AnnulerClick(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmTransfertInterCamion: TfrmTransfertInterCamion;
  vCodeMag : string;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmTransfertInterCamion.AnnulerClick(Sender: TObject);
begin
cbVehS.Text:='';
edVehS.Clear;
cbVehD.Text:='';
edVehD.Clear;
StringGrid1.RowCount:=1;
btSave.Enabled:=False;
end;

procedure TfrmTransfertInterCamion.btSaveClick(Sender: TObject);
var
  StockS,
  StockD : TStockCamion;

  sqlVehS,sqlVehD,
  sqlUpS,sqlUpD : string;
  I: Integer;
begin
if Trim(edVehS.Text)='' then
  begin
    MessageDlg('Merci de selectionner le camion source',mtError,[mbRetry],0);
    exit
  end else
if Trim(edVehD.Text)='' then
  begin
    MessageDlg('Merci de selectionner le camion destination',mtError,[mbRetry],0);
    exit
  end;

if MessageDlg('Voulez-vous valider ce transfert ?',mtWarning,[mbYes,mbNo],0) = mrYes then
  begin
    for I := 0 to StringGrid1.RowCount -1 do
      with StringGrid1 do
        begin
          sqlVehS := ' Where vehicule = '+QuotedStr(edVehS.Text)
                    +' and code_art = '+QuotedStr(Cells[1,i+1]);

          sqlVehD := ' Where vehicule = '+QuotedStr(edVehD.Text)
                    +' and code_art = '+QuotedStr(Cells[1,i+1]);

          StockS := dm.selectStockCamion(sqlVehS);
          StockD := dm.selectStockCamion(sqlVehD);


          sqlUpS := 'update tb_stock_camion set '
                    +' qte_vide = '+IntToStr(StockS.NQte_vide - StrToInt(Cells[3,i+1]))+','
                    +' qte_mag = '+IntToStr(StockS.NQte_mag - StrToInt(Cells[4,i+1]))+','
                    +' qte_total = '+IntToStr(StockS.Nqte_total - (StrToInt(Cells[3,i+1]) + StrToInt(Cells[4,i+1])))
                    +' where vehicule = '+QuotedStr(edVehS.Text)
                    +' and code_art = '+QuotedStr(Cells[1,i+1]);
          dm.UpdateTable(sqlUpS);

          if StockD.Scode_art.IsEmpty then {Insertion dans la table stock camion si l'article inexistant}
            begin
              with StockD,StringGrid1 do
                begin
                  Svehicule:=edVehD.Text;
                  Scode_art:=Cells[1,i+1];
                  SDesignation_art := Cells[2,i+1];
                  NQte_vide := 0;
                  NQte_mag := StrToInt(Cells[4,i+1]);
                  Nqte_total := StrToInt(Cells[4,i+1]);
                end;
                dm.InsertStockCamion(StockD);
            end else
            begin
              sqlUpD := 'update tb_stock_camion set '
                        +' qte_vide = '+IntToStr(StockD.NQte_vide + StrToInt(Cells[3,i+1]))+','
                        +' qte_mag = '+IntToStr(StockD.NQte_mag + StrToInt(Cells[4,i+1]))+','
                        +' qte_total = '+IntToStr(StockD.Nqte_total + (StrToInt(Cells[3,i+1]) + StrToInt(Cells[4,i+1])))
                        +' where vehicule = '+QuotedStr(edVehD.Text)
                        +' and code_art = '+QuotedStr(Cells[1,i+1]);
              dm.UpdateTable(sqlUpD);
            end;
        end;
    MessageDlg('Transfert valid� avec succ�s !',mtInformation,[mbok],0);
    Annuler.Click;
  end;
end;

procedure TfrmTransfertInterCamion.cbMagCloseUp(Sender: TObject);
var
  Magasins : TMagasinArray;
  PsqlMag,PsqlArt: string;
  I: Integer;
  articles : TarticleArray;
begin
  PsqlMag := ' where designation_mag = '+QuotedStr(cbMag.Text) ;
  Magasins :=dm.selectMagasins(PsqlMag);

  for I := Low(Magasins) to High(Magasins) do
    begin
      vCodeMag:=Magasins[i].SCode_mag;
    end;

//Selection d'article

  PsqlArt := ' where code_mag = '+QuotedStr(vCodeMag); //where code_mag = '+QuotedStr('PFGB');
  articles := DM.selectArticles(PsqlArt)      ;
  StringGrid1.RowCount := Length(articles)+1;

  for I := Low(articles) to High(articles) do
    begin
       with StringGrid1 do
          begin
            Cells[1,i+1] := articles[i].Scode_art;
            Cells[2,i+1] := articles[i].Sdesignation_art;
          end;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows:=1;

    StringGrid1.Enabled := True;

end;

procedure TfrmTransfertInterCamion.cbVehDCloseUp(Sender: TObject);
var
  vehs : TVehiculeArray;
  Psql_veh : string;
  i: integer;
begin
//selection du v�hicule
    Psql_veh := ' where marque_veh = '+QuotedStr(cbVehD.Text) ;

    vehs:=dm.SelectVehicule(Psql_veh);
    for I := Low(vehs) to High(vehs) do
      begin
        edVehD.Text := vehs[i].SNum_mat;
      end;
end;

procedure TfrmTransfertInterCamion.cbVehSCloseUp(Sender: TObject);
var
  vehs : TVehiculeArray;
  Psql_veh : string;
  i: integer;
begin
//selection du v�hicule
    Psql_veh := ' where marque_veh = '+QuotedStr(cbVehS.Text) ;

    vehs:=dm.SelectVehicule(Psql_veh);
    for I := Low(vehs) to High(vehs) do
      begin
        edVehS.Text := vehs[i].SNum_mat;
      end;
end;

procedure TfrmTransfertInterCamion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
cbVehS.Clear;
cbVehD.Clear;
cbMag.Clear;
edVehS.Clear;
edVehD.Clear;
end;

procedure TfrmTransfertInterCamion.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='N�';
    Cells[1,0]:='Article';
    Cells[2,0]:='D�signation';
    Cells[3,0]:='Qte vide';
    Cells[4,0]:='Qte pleine';
  end;
end;

procedure TfrmTransfertInterCamion.FormShow(Sender: TObject);
var
  Psql_veh : string;
  I: Integer;
  vehs : TVehiculeArray;

  Magasins : TMagasinArray;
  PsqlMag,PsqlArt: string;

begin

btSave.Enabled := False;
//selection du v�hicule
  Psql_veh := '';

  vehs:=dm.SelectVehicule(Psql_veh);
  for I := Low(vehs) to High(vehs) do
    begin
      cbVehS.Items.Add(vehs[i].SMarque);
      cbVehD.Items.Add(vehs[i].SMarque);
    end;

// selection du magasin

  PsqlMag := '';
  Magasins :=dm.selectMagasins(PsqlMag);

  for I := Low(Magasins) to High(Magasins) do
    begin
      cbMag.Items.Add(Magasins[i].Sdesignation_mag);
    end;

end;

procedure TfrmTransfertInterCamion.StringGrid1DrawCell(Sender: TObject; ACol,
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

procedure TfrmTransfertInterCamion.StringGrid1KeyPress(Sender: TObject;
  var Key: Char);
var
  cellEmpty : Boolean;
  I: Integer;
  j: Integer;
begin
if key = #13 then
  begin
    for I := 3 to StringGrid1.ColCount do
      for j := 0 to StringGrid1.RowCount do
        if Trim(StringGrid1.Cells[i,j]) = '' then
          begin
            StringGrid1.Cells[i,j] := '0';
          end;
          btSave.Enabled:=true;
//          btClot.Enabled:=false;
  end;
end;

procedure TfrmTransfertInterCamion.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
    if (Acol=0) or (Acol=1) or (Acol=2) then
        CanSelect:=false
      else
        canselect:=true;
end;

end.
