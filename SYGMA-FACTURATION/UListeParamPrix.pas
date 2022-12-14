unit UListeParamPrix;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ExtCtrls;

type
  TfrmListeTarif = class(TForm)
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Label1: TLabel;
    cbTarif: TComboBox;
    PopupMenu1: TPopupMenu;
    Modifierleprix1: TMenuItem;
    procedure cbTarifCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Modifierleprix1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeTarif: TfrmListeTarif;

implementation

{$R *.dfm}

uses records, UDM, UTarif_update;

procedure TfrmListeTarif.cbTarifCloseUp(Sender: TObject);
var
  unParams : TTarif_defPrixArray;
  i:integer;
  Psql : string;
begin
  Psql := ' Where designation_tarif = '+QuotedStr(cbTarif.Text);

  unParams:=DM.SelectParametragePrixclt(Psql);
  StringGrid1.RowCount := Length(unParams)+1;

  if StringGrid1.RowCount > 1 then StringGrid1.FixedRows := 1;


  for I := Low(unParams) to High(unParams) do
    begin
      StringGrid1.Cells[0,i+1]:=unParams[i].Sdesignation_tarif;
      StringGrid1.Cells[1,i+1]:=unParams[i].Sdesignation_art;
      StringGrid1.Cells[2,i+1]:=FloatToStr(unParams[i].Rprix);
    end;
end;

procedure TfrmListeTarif.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cbTarif.Items.Clear;
end;

procedure TfrmListeTarif.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Tarif';
    Cells[1,0]:='Article';
    Cells[2,0]:='Prix';
  end;
end;

procedure TfrmListeTarif.FormShow(Sender: TObject);
var
  Tarifs : TTarifArray;
  I: Integer;
  Psql :string;
begin
  Psql :='';

  Tarifs := DM.SelectTarif(Psql);

  for I := Low(Tarifs) to High(Tarifs) do
    begin
      cbTarif.Items.Add(Tarifs[i].SDesignation_tarif);
    end;
end;

procedure TfrmListeTarif.Modifierleprix1Click(Sender: TObject);
begin
with StringGrid1, frmTarifUpdate do
  begin
    edtarif.Text := Cells[0,Row];
    edArticle.Text := Cells[1,Row];
    edPrix.Text := Cells[2,Row];
    ShowModal;
  end;
end;

procedure TfrmListeTarif.StringGrid1DrawCell(Sender: TObject; ACol,
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
