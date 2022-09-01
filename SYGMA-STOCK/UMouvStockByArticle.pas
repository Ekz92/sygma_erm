unit UMouvStockByArticle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, frxClass, frxDBSet,
  Data.DB, Data.SqlExpr, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmMouvStockByArticle = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    cbarticle: TComboBox;
    edcode_art: TRichEdit;
    Button1: TButton;
    cbMagasin: TComboBox;
    edcode_mag: TRichEdit;
    ckTout: TCheckBox;
    frxMouv_stockArticle: TfrxReport;
    SQLQuery1: TSQLQuery;
    frxDBDataset1: TfrxDBDataset;
    QHeader: TSQLQuery;
    frxDBDataset2: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ckToutClick(Sender: TObject);
    procedure cbarticleClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmMouvStockByArticle: TfrmMouvStockByArticle;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmMouvStockByArticle.Button1Click(Sender: TObject);
var
  sql,sql2 : string;
  Memo: TfrxMemoView;
  Component: TfrxComponent;
begin
  if ckTout.Checked = True then
    begin
        sql := ' select * from tb_mouvement_stock mv'
              +' inner join tb_article ta on ta.code_art = mv.code_art '
              +' where date_mouv between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
              +                        ' and '+ QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
              +                        ' order by date_mouv desc';



          sql2 := ' select * from tb_article A, tb_stock S where A.code_art = S.code_art'
                      +' and A.code_mag = S.code_mag '
                      +' and A.code_art = '+QuotedStr(edcode_art.Text)
                      +' and A.code_mag = '+QuotedStr(edcode_mag.Text);

    end else
    begin
        sql := ' select * from tb_mouvement_stock mv'
              +' inner join tb_article ta on ta.code_art = mb.code_art '
              +' where code_art = '+QuotedStr(edcode_art.Text)
              +' and date_mouv between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
              +                        ' and '+ QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
              +                        ' and code_mag = '+ QuotedStr(edcode_mag.Text)
              +                        ' order by date_mouv desc';

        sql2 := ' select * from tb_article A, tb_stock S where A.code_art = S.code_art'
                    +' and A.code_mag = S.code_mag '
                    +' and A.code_art = '+QuotedStr(edcode_art.Text)
                    +' and A.code_mag = '+QuotedStr(edcode_mag.Text);
    end;
//----------------date debut--------------------------
Component := frxMouv_stockArticle.FindObject('md1');
  if Component is TfrxMemoView then
    begin
      Memo := Component as TfrxMemoView;
      Memo.Text :=DateToStr(d1.Date);
    end;
//----------------date fin--------------------------
Component := frxMouv_stockArticle.FindObject('md2');
  if Component is TfrxMemoView then
    begin
      Memo := Component as TfrxMemoView;
      Memo.Text :=DateToStr(d2.Date);
    end;

  try
    SQLQuery1.SQl.Clear;
    QHeader.SQL.Clear;
    SQLQuery1.SQL.Add(sql);
    QHeader.SQL.Add(sql2);

    SQLQuery1.Open;
    if ckTout.Checked = False then
      QHeader.Open;
    frxMouv_stockArticle.ShowReport();
  finally
    SQLQuery1.Close;
    QHeader.Close;
  end;

end;

procedure TfrmMouvStockByArticle.cbarticleClick(Sender: TObject);
Var
  article : TArticle;
  nom_art : string;
begin
  nom_art := cbarticle.Text;
  article:=dm.selectArticleByNom(nom_art);
  edcode_art.Text := article.Scode_art;
end;

procedure TfrmMouvStockByArticle.ckToutClick(Sender: TObject);
begin
  if ckTout.Checked = False then
    begin
      cbarticle.Enabled:=True;
      cbMagasin.Enabled:=True;

      edcode_art.Enabled:=True;
      edcode_mag.Enabled:=True;
    end else
    begin
      cbarticle.Enabled:=False;
      cbMagasin.Enabled:=False;

      edcode_art.Enabled:=False;
      edcode_mag.Enabled:=False;

    end;

end;

procedure TfrmMouvStockByArticle.FormShow(Sender: TObject);
var
  articles : TarticleArray;
  magasins : TMagasinArray;
  I,j: Integer;
  Psql,sql_art : string;
begin
  sql_art := '';
  d2.Date := Now;

  articles := dm.selectArticles(sql_art);

  for I := Low(articles) to High(articles) do
  begin
    cbarticle.Items.Add(articles[i].Sdesignation_art);
  end;

  Psql := '';
  magasins := dm.selectMagasins(Psql);
  for j := Low(magasins) to High(magasins) do
  begin
    cbMagasin.Items.Add(magasins[j].Sdesignation_mag);
  end;
//******************************

cbarticle.Enabled:=False;
cbMagasin.Enabled:=False;
edcode_art.Enabled:=False;
edcode_mag.Enabled:=False;
end;

end.
