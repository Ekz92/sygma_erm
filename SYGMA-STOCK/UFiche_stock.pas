unit UFiche_stock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, frxClass, frxExportHTML,
  frxExportBaseDialog, frxExportText, frxDBSet, Data.DB, Data.SqlExpr,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmFiche_stock = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    cb_magasin: TComboBox;
    edcode_mag: TEdit;
    CheckBox1: TCheckBox;
    Button2: TButton;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Button1: TButton;
    QFiche_stock: TSQLQuery;
    frxFiche_stock: TfrxDBDataset;
    frxMAgasin: TfrxDBDataset;
    QMagasin: TSQLQuery;
    frxE_Fiche_stock: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure cb_magasinCloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmFiche_stock: TfrmFiche_stock;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmFiche_stock.Button1Click(Sender: TObject);
var
  sql : string;
begin
  if CheckBox1.Checked then
    begin
      sql := 'select * from tb_article A, tb_stock S'
             +' where A.code_art = S.code_art '
    end else
    begin
      sql :='select * from tb_article A, tb_stock S'
        +' where A.code_art = S.code_art '
        +' and s.code_mag = '+QuotedStr(edcode_mag.Text);
    end;



    try
      QFiche_stock.SQL.Clear;
      QFiche_stock.SQL.Add(sql);
      QFiche_stock.Open;
      QMagasin.Open;
      frxE_Fiche_stock.ShowReport();
    finally
//      QFiche_stock.Free;
//      QMagasin.Free;
    end;
end;

procedure TfrmFiche_stock.Button2Click(Sender: TObject);
var
  QSelect_stock : TSQLQuery;
  I: integer;
  sql : string;
begin
  QSelect_stock:=TSQLQuery.Create(self);
  QSelect_stock.SQLConnection := dm.SQLConnection1;

  if CheckBox1.Checked then
    begin
      sql := 'select * from tb_article A, tb_stock S'
             +' where A.code_art = S.code_art '
    end else
    begin
      sql:='select * from tb_article A, tb_stock S'
        +' where A.code_art = S.code_art '
        +' and s.code_mag = (select code_mag from tb_magasin where designation_mag = '+QuotedStr(cb_magasin.Text)+')'
    end;

    try
      QSelect_stock.SQL.Add(sql);
      QSelect_stock.Open;

      if QSelect_stock.IsEmpty then
        begin
          StringGrid1.RowCount := 2;
          StringGrid1.Rows[1].Clear;
        end else
        begin
          for I := 1 to QSelect_stock.RowsAffected +1 do
            with StringGrid1, QSelect_stock do
             begin
                RowCount:=RowsAffected+1;
                Cells[0,i] := FieldByName('code_art').AsString;
                Cells[1,i] := FieldByName('designation_art').AsString;
                Cells[2,i] := FieldByName('code_mag').AsString;
                Cells[3,i] := IntToStr(FieldByName('qte_vide').AsInteger);
                Cells[4,i] := IntToStr(FieldByName('qte_mag').AsInteger);
                Cells[5,i] := IntToStr(FieldByName('qte_totale').AsInteger);
                QSelect_stock.Next;
             end;
            end;
      finally
          QSelect_stock.Free;
      end;

end;

procedure TfrmFiche_stock.cb_magasinCloseUp(Sender: TObject);
var
  Code_mag : string;
  magasin : TMagasin;
  nom_mag : string;
begin
  nom_mag := cb_magasin.Text;

  magasin := dm.selectMagasinBynom(nom_mag) ;
  edcode_mag.Text := magasin.SCode_mag;
end;

procedure TfrmFiche_stock.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
  begin
    edcode_mag.Enabled:=false;
    cb_magasin.Enabled:=false;
  end else
  begin
    edcode_mag.Enabled:=True;
    cb_magasin.Enabled:=True;
  end;

end;

procedure TfrmFiche_stock.FormCreate(Sender: TObject);
var
  QSelect_mag : TSQLQuery;
  i:integer;
begin

  QSelect_mag:=TSQLQuery.Create(self);
  QSelect_mag.SQLConnection := dm.SQLConnection1;

  with QSelect_mag,SQL do
    begin
      Add('select * from tb_magasin');
    end;

    try
      QSelect_mag.Open;
      for i:=0 to QSelect_mag.RowsAffected -1 do
        begin
          cb_magasin.Items.Add(QSelect_mag.FieldByName('designation_mag').AsString);
          QSelect_mag.Next;
        end;
    finally
      QSelect_mag.Free;
    end;

with StringGrid1 do
  begin
    Cells[0,0]:='Code art';
    Cells[1,0]:='Désignation';
    Cells[2,0]:='Code mag';
    Cells[3,0]:='Qte vide';
    Cells[4,0]:='Qte Chargé';
    Cells[5,0]:='Qte totale';
  end;
end;

procedure TfrmFiche_stock.FormShow(Sender: TObject);
begin
  StringGrid1.RowCount := 2;
  StringGrid1.Rows[1].Clear;

  edcode_mag.Enabled:=false;
  cb_magasin.Enabled:=false;

end;

procedure TfrmFiche_stock.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
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
