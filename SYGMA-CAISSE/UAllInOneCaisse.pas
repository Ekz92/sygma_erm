unit UAllInOneCaisse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmAllInOneCaisse = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edCode: TEdit;
    edNom: TEdit;
    Label2: TLabel;
    st_CsArtListe: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure st_CsArtListeDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure edNomChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmAllInOneCaisse: TfrmAllInOneCaisse;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmAllInOneCaisse.edNomChange(Sender: TObject);
var
  Articles : TarticleArray;
  Psql : string;
  I: Integer;
begin
  Psql := ' where code_art like  '+QuotedStr('%'+edNom.Text+'%');
  Articles := dm.selectArticles(Psql);
  st_CsArtListe.RowCount := Length(Articles)+1;

  for I := Low(Articles) to High(Articles) do
    begin
      st_CsArtListe.Cells[0,i+1] := Articles[i].Scode_art;
      st_CsArtListe.Cells[1,i+1] := Articles[i].Sdesignation_art;
    end;
end;

procedure TfrmAllInOneCaisse.FormCreate(Sender: TObject);
begin
with st_CsArtListe do
  begin
    Cells[0,0]:='Code';
    Cells[1,0]:='Nom';
  end;
end;

procedure TfrmAllInOneCaisse.FormShow(Sender: TObject);
var
  Articles : TarticleArray;
  Psql : string;
  I: Integer;
begin
  Psql := '';
  Articles := dm.selectArticles(Psql);
  st_CsArtListe.RowCount := Length(Articles)+1;

  for I := Low(Articles) to High(Articles) do
    begin
      st_CsArtListe.Cells[0,i+1] := Articles[i].Scode_art;
      st_CsArtListe.Cells[1,i+1] := Articles[i].Sdesignation_art;
    end;

end;

procedure TfrmAllInOneCaisse.st_CsArtListeDrawCell(Sender: TObject; ACol,
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
