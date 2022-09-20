unit URechLivreurChargement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmRechLivreurChargement = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edCode: TEdit;
    edNom: TEdit;
    St_Livreur: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure St_LivreurDblClick(Sender: TObject);
    procedure St_LivreurDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure edNomChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmRechLivreurChargement: TfrmRechLivreurChargement;
  vSourceForm_liv : string;

implementation

{$R *.dfm}

uses records, UDM, UvteChargVeh, UImportBl;

procedure TfrmRechLivreurChargement.edNomChange(Sender: TObject);
var
  Lvs : TLivreurArray;
  Psql : String;
  I: Integer;
begin
  Psql := ' where nom_liv like '+QuotedStr(edNom.Text+'%');
  Lvs := dm.selectLivreur(Psql);

  St_Livreur.RowCount := Length(Lvs)+1;

  for I := Low(Lvs) to High(Lvs) do
    begin
      with St_Livreur do
        begin
          Cells[0,i+1] := Lvs[i].SCode_liv;
          Cells[1,i+1] := Lvs[i].Snom_liv;
          Cells[2,i+1] := Lvs[i].Stel_liv;
          Cells[3,i+1] := Lvs[i].Sadresse_liv;
          Cells[4,i+1] := Lvs[i].Smail_liv;
        end;
    end;
end;

procedure TfrmRechLivreurChargement.FormCreate(Sender: TObject);
begin
with St_Livreur do
  begin
    Cells[0,0] := 'Code';
    Cells[1,0] := 'Nom';
  end;
end;

procedure TfrmRechLivreurChargement.FormShow(Sender: TObject);
var
  Lvs : TLivreurArray;
  Psql : String;
  I: Integer;
begin
  Psql := '';
  Lvs := dm.selectLivreur(Psql);

  St_Livreur.RowCount := Length(Lvs)+1;

  for I := Low(Lvs) to High(Lvs) do
    begin
      with St_Livreur do
        begin
          Cells[0,i+1] := Lvs[i].SCode_liv;
          Cells[1,i+1] := Lvs[i].Snom_liv;
          Cells[2,i+1] := Lvs[i].Stel_liv;
          Cells[3,i+1] := Lvs[i].Sadresse_liv;
          Cells[4,i+1] := Lvs[i].Smail_liv;
        end;
    end;end;

procedure TfrmRechLivreurChargement.St_LivreurDblClick(Sender: TObject);
begin
  if vSourceForm_liv = 'frmvteChargVeh' then
    begin
      with frmvteChargVeh do
        begin
          edCodeLivreur.Text := St_Livreur.Cells[0,St_Livreur.Row];
          edNomLivreur.Text := St_Livreur.Cells[1,St_Livreur.Row];
        end;
    end else
    if vSourceForm_liv = 'frmImportBl' then
      begin
        with frmImportBl do
          begin
            edCodeLivreur.Text := St_Livreur.Cells[0,St_Livreur.Row];
            edNomLivreur.Text := St_Livreur.Cells[1,St_Livreur.Row];
          end;
      end;
  close;

end;

procedure TfrmRechLivreurChargement.St_LivreurDrawCell(Sender: TObject; ACol, ARow: Integer;
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
