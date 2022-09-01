unit UrechVenteChargVeh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmrechVenteChargVeh = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edcode_art: TEdit;
    edDesignation: TEdit;
    St_Art: TStringGrid;
    procedure edcode_artExit(Sender: TObject);
    procedure edDesignationExit(Sender: TObject);
    procedure St_ArtDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure St_ArtDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmrechVenteChargVeh: TfrmrechVenteChargVeh;
  vAlias_art,
  vAlias_ret,
  vkilo : string;


implementation

{$R *.dfm}

uses records, UDM, UvteChargVeh;

procedure TfrmrechVenteChargVeh.edcode_artExit(Sender: TObject);
var
  Psql: string;
  articles : TarticleArray;
  I: Integer;
begin
  if edcode_art.Text<>'' then
    Psql := ' where code_art like '+QuotedStr('%'+edcode_art.Text+'%')
  else if edDesignation.Text<>'' then
    Psql := ' where designation_art like '+QuotedStr('%'+edDesignation.Text+'%');

   articles := dm.selectArticles(Psql);
   St_Art.RowCount := Length(articles)+1;

   for I := Low(articles) to High(articles) do
      begin
        with St_Art do
          begin
            Cells[0,i+1]:=articles[i].Scode_art;
            Cells[1,i+1]:=articles[i].Sdesignation_art;
            Cells[2,i+1]:=FloatToStr(articles[i].Rkilo);
            Cells[3,i+1]:=articles[i].Salias_art;
            Cells[4,i+1]:=articles[i].Salias_ret;
          end;
      end;
      if St_Art.RowCount>1 then St_Art.FixedRows := 1;
end;

procedure TfrmrechVenteChargVeh.edDesignationExit(Sender: TObject);
var
  Psql: string;
  articles : TarticleArray;
  I: Integer;
begin

   Psql := ' where designation_art like '+QuotedStr('%'+edDesignation.Text+'%');

   articles := dm.selectArticles(Psql);
   St_Art.RowCount := Length(articles)+1;

   for I := Low(articles) to High(articles) do
      begin
        with St_Art do
          begin
            Cells[0,i+1]:=articles[i].Scode_art;
            Cells[1,i+1]:=articles[i].Sdesignation_art;
            Cells[2,i+1]:=FloatToStr(articles[i].Rkilo);
            Cells[3,i+1]:=articles[i].Salias_art;
            Cells[4,i+1]:=articles[i].Salias_ret;
          end;
      end;
      if St_Art.RowCount>1 then St_Art.FixedRows := 1;
end;

procedure TfrmrechVenteChargVeh.FormCreate(Sender: TObject);
begin
with St_Art do
  begin
    Cells[0,0] := 'Code' ;
    Cells[1,0] := 'Désignation' ;
    Cells[2,0] := 'Kilo' ;
    Cells[3,0] := 'Alias' ;
  end;

end;

procedure TfrmrechVenteChargVeh.St_ArtDblClick(Sender: TObject);
begin
 with frmvteChargVeh do
  begin
    v_edcodeArt.Text:=St_Art.Cells[0,St_Art.Row];
    v_edDesign.Text:=St_Art.Cells[1,St_Art.Row];
    vkilo := St_Art.Cells[2,St_Art.Row];
    vAlias_art:=St_Art.Cells[3,St_Art.Row];
    vAlias_ret :=St_Art.Cells[4,St_Art.Row];
    edqte.SetFocus;
  end;
  Close;
end;

procedure TfrmrechVenteChargVeh.St_ArtDrawCell(Sender: TObject; ACol,
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
