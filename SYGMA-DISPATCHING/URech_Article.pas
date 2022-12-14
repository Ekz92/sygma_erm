unit URech_Article;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Data.FMTBcd,
  Data.DB, Data.SqlExpr;

type
  Tfrmrech_article = class(TForm)
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edcode_art: TEdit;
    edDesignation: TEdit;
    StringGrid1: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure edcode_artChange(Sender: TObject);
    procedure edDesignationChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmrech_article: Tfrmrech_article;
  vFormSource_art : string;

implementation

{$R *.dfm}

uses UDM, records, UReguleStockCamion;

procedure Tfrmrech_article.edcode_artChange(Sender: TObject);
var
  i : integer;
  articles : TarticleArray;
  Psql : string;
begin
  Psql :=' Where code_art like '+QuotedStr('%'+edcode_art.Text+'%');
  articles := dm.selectArticles(Psql);
    StringGrid1.RowCount := Length(articles)+1;


  for I := Low(articles) to High(articles) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1]:= articles[i].Scode_art;
          Cells[1,i+1]:= articles[i].Sdesignation_art;
          Cells[2,i+1]:= articles[i].Stype_art;
        end;
    end;
end;

procedure Tfrmrech_article.edDesignationChange(Sender: TObject);
var
  i : integer;
  articles : TarticleArray;
  Psql : string;
begin
  Psql :=' Where designation_art like '+QuotedStr('%'+edDesignation.Text+'%');
  articles := dm.selectArticles(Psql);
    StringGrid1.RowCount := Length(articles)+1;


  for I := Low(articles) to High(articles) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1]:= articles[i].Scode_art;
          Cells[1,i+1]:= articles[i].Sdesignation_art;
          Cells[2,i+1]:= articles[i].Stype_art;
        end;
    end;
end;

procedure Tfrmrech_article.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0] := 'Code' ;
    Cells[1,0] := 'Désignation' ;
    Cells[2,0] := 'Type' ;
  end;

end;

procedure Tfrmrech_article.FormShow(Sender: TObject);
var
  i : integer;
  articles : TarticleArray;
  Psql : string;
begin
  Psql :='';
  articles := dm.selectArticles(Psql);
  StringGrid1.RowCount := Length(articles)+1;

  for I := Low(articles) to High(articles) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1]:= articles[i].Scode_art;
          Cells[1,i+1]:= articles[i].Sdesignation_art;
          Cells[2,i+1]:= articles[i].Stype_art;
        end;
    end;
end;

procedure Tfrmrech_article.StringGrid1DblClick(Sender: TObject);
var
  stock :TStock;
  code_art : string;
begin
  code_art := StringGrid1.Cells[0,StringGrid1.Row];
  stock := dm.selectStockByArticle(code_art);

  if vFormSource_art = 'frmReguleStockCamion'then
    with frmReguleStockCamion ,StringGrid1 do
      begin
        edArticle.Text:= Cells[0,Row];
        edDesignation.Text :=Cells[1,row];
      end;

  close;
end;

procedure Tfrmrech_article.StringGrid1DrawCell(Sender: TObject; ACol,
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
