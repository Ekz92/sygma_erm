unit URechCltChargCamion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmRechCltChargCamion = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edrech_nom: TEdit;
    Edit1: TEdit;
    St_Rech: TStringGrid;
    procedure edrech_nomChange(Sender: TObject);
    procedure St_RechDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure St_RechDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmRechCltChargCamion: TfrmRechCltChargCamion;
  vFormSource_clt :string;

implementation

{$R *.dfm}

uses records, UDM, UvteChargVeh, UImportBl;

procedure TfrmRechCltChargCamion.edrech_nomChange(Sender: TObject);
var
  Psql : string;
  Clts : TClientArray;
  I: Integer;
begin
  Psql := ' where nom_clt like '+QuotedStr(edrech_nom.Text+'%');

  Clts := DM.selectClients(Psql);

  St_Rech.RowCount := Length(Clts)+1;

  for I := Low(Clts) to High(Clts) do
    begin
      with St_Rech do
        begin
          Cells[0,i+1]:=Clts[i].SCodeClt;
          Cells[1,i+1]:=Clts[i].SnomClt;
        end;
    end;
    if St_Rech.RowCount>1 then St_Rech.FixedRows:=1;
    
end;

procedure TfrmRechCltChargCamion.FormCreate(Sender: TObject);
begin
with St_Rech do
  begin
    cells[0,0] := 'Code';
    cells[1,0] := 'Nom';
  end;
end;

procedure TfrmRechCltChargCamion.FormShow(Sender: TObject);
var
  Psql : string;
  Clts : TClientArray;
  I: Integer;
begin
  Psql := ' ';

  Clts := DM.selectClients(Psql);

  St_Rech.RowCount := Length(Clts)+1;

  for I := Low(Clts) to High(Clts) do
    begin
      with St_Rech do
        begin
          Cells[0,i+1]:=Clts[i].SCodeClt;
          Cells[1,i+1]:=Clts[i].SnomClt;
        end;
    end;
end;

procedure TfrmRechCltChargCamion.St_RechDblClick(Sender: TObject);
var
  points : TPointVenteArray;
  Psql : string;
  I: integer;
begin
  Psql := ' Where code_client = '+QuotedStr(St_Rech.Cells[0,St_Rech.Row]);
  points := dm.selectPoints(Psql);

  if vFormSource_clt = 'frmvteChargVeh' then
    with frmvteChargVeh do
      begin
        edcodeClt.Text := St_Rech.Cells[0,St_Rech.Row];
        edNomClt.Text := St_Rech.Cells[1,St_Rech.Row];

        cbPoint.Items.Clear;
        edzone.Clear;
        edPrixZone.Clear;

        for I := Low(points) to High(points) do
          begin
            cbPoint.Items.Add(points[i].Snom_pint);
          end;
      end else

  if vFormSource_clt = 'frmImportBl' then
    with frmImportBl do
      begin
        edcodeClt.Text := St_Rech.Cells[0,St_Rech.Row];
        edNomClt.Text := St_Rech.Cells[1,St_Rech.Row];

        cbPoint.Items.Clear;
        edzone.Clear;
        edPrixZone.Clear;

        for I := Low(points) to High(points) do
          begin
            cbPoint.Items.Add(points[i].Snom_pint);
          end;
      end;

    close;
end;

procedure TfrmRechCltChargCamion.St_RechDrawCell(Sender: TObject; ACol,
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
