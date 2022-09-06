unit URechCommandeLFactures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls;

type
  TfrmRechCommandeLFactures = class(TForm)
    Panel1: TPanel;
    StRech: TStringGrid;
    procedure StRechDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure StRechDblClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmRechCommandeLFactures: TfrmRechCommandeLFactures;

implementation

{$R *.dfm}

uses UListeFactureCommande;

procedure TfrmRechCommandeLFactures.StRechDblClick(Sender: TObject);
begin
  with frmListeFactureCommande , StRech do
    begin
      edCommande.Text := Cells[1,Row];
      edvehicule.Text := Cells[3,Row];
      edStatutCmd.Text := Cells[4,Row];
    end;
    Close;
end;

procedure TfrmRechCommandeLFactures.StRechDrawCell(Sender: TObject; ACol, ARow: Integer;
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
