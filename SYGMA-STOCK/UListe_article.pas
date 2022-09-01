unit UListe_article;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls,
  Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TfrmListe_article = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    Dfiniruncotdachat1: TMenuItem;
    Voirlafichedestock1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmListe_article: TfrmListe_article;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmListe_article.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0] := 'Code';
    Cells[1,0] := 'D�signation';
    Cells[2,0] := 'Type';
    Cells[3,0] := 'Co�t d''achat'
  end;
end;

procedure TfrmListe_article.FormShow(Sender: TObject);
var
  Qliste :   TSQLQuery;
  i :integer;
begin

  Qliste:=TSQLQuery.Create(self);
  Qliste.SQLConnection :=dm.SQLConnection1;

  with Qliste,SQL do
    begin
      Add('select * from tb_article a, tb_stock s'
          +' where a.code_art = s.code_art');
    end;

    try
      Qliste.Open;
      StringGrid1.RowCount:=Qliste.RowsAffected+1;
      for I := 1 to Qliste.RowsAffected+1 do
        with StringGrid1, Qliste do
          begin
            Cells[0,i] := FieldByName('code_art').AsString;
            Cells[1,i] := FieldByName('designation_art').AsString;
            Cells[2,i] := FieldByName('type_art').AsString;
            Cells[3,i] := FieldByName('cout_achat').AsString;
            Qliste.Next;
          end;
    finally
      Qliste.Free;
    end;
end;

procedure TfrmListe_article.StringGrid1DrawCell(Sender: TObject; ACol,
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
