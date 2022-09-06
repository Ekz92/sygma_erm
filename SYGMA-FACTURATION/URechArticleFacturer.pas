unit URechArticleFacturer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmRechArticleFacturer = class(TForm)
    st_article: TStringGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormShow(Sender: TObject);
    procedure st_articleDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure st_articleDblClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmRechArticleFacturer: TfrmRechArticleFacturer;

implementation

{$R *.dfm}

uses records, UDM, UParametrage_prix_clt;

procedure TfrmRechArticleFacturer.FormShow(Sender: TObject);
var
  Articles : TarticleArray;
  j:integer;
  sql_art : string;
begin
//******************
  sql_art := '';
  Articles := dm.selectArticles(sql_art);
  st_article.RowCount := Length(Articles)+1;

  for j := Low(Articles) to High(Articles) do
    begin
      st_article.Cells[0,j+1] := Articles[j].Scode_art;
      st_article.Cells[1,j+1] := Articles[j].Sdesignation_art;
    end;
end;

procedure TfrmRechArticleFacturer.st_articleDblClick(Sender: TObject);
begin
  with frmTarifDef do
    begin
      edcodeart.Text:=st_article.Cells[0,st_article.Row];
      edDesignation_art.Text:=st_article.Cells[1,st_article.Row];
      edprix.SetFocus;
    end;
    close;
end;

procedure TfrmRechArticleFacturer.st_articleDrawCell(Sender: TObject; ACol,
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
