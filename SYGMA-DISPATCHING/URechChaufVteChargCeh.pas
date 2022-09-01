unit URechChaufVteChargCeh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids;

type
  TfrmRechChaufVteChargCeh = class(TForm)
    st_chauf: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure st_chaufDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure st_chaufDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmRechChaufVteChargCeh: TfrmRechChaufVteChargCeh;
  vFormSource : string;

implementation

{$R *.dfm}

uses UvteChargVeh, UImportBl, records, UDM;

procedure TfrmRechChaufVteChargCeh.FormCreate(Sender: TObject);
begin
 with st_chauf do
  begin
    Cells[0,0]:='N� Matricule';
    Cells[1,0]:='Nom';
    Cells[2,0]:='Pr�nom';
  end;
end;

procedure TfrmRechChaufVteChargCeh.FormShow(Sender: TObject);
var
  I : integer;
  Chauffs : TChauffeurArray;
  Psql:string;
begin
  Psql :='';
  Chauffs := dm.SelectChauffeur(Psql);
  st_chauf.RowCount:= Length(Chauffs)+1;

  for I := Low(Chauffs) to High(Chauffs) do
    begin
      with st_chauf do
        begin
          Cells[0,i+1] := IntToStr(Chauffs[i].Nnum_mat_chauf);
          Cells[1,i+1] := Chauffs[i].Snom_chauf;
          Cells[2,i+1] := Chauffs[i].Sprenom_chauf;
        end;
    end;
end;

procedure TfrmRechChaufVteChargCeh.st_chaufDblClick(Sender: TObject);
begin
  if vFormSource = 'frmvteChargVeh' then
    with frmvteChargVeh do
      begin
         edChauf.Text := st_chauf.Cells[0,st_chauf.Row];
         lbChauf.Caption := st_chauf.Cells[1,st_chauf.Row];
      end else
  if vFormSource = 'frmImportBl' then
    with frmImportBl do
      begin
         edChauf.Text := st_chauf.Cells[0,st_chauf.Row];
         lbChauf.Caption := st_chauf.Cells[1,st_chauf.Row];
      end;
  Close;
end;

procedure TfrmRechChaufVteChargCeh.st_chaufDrawCell(Sender: TObject; ACol,
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
