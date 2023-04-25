unit UTypeDepense;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmTypeDepense = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edCode: TEdit;
    edDesignation: TEdit;
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmTypeDepense: TfrmTypeDepense;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmTypeDepense.Button1Click(Sender: TObject);
var
  tdep : TTypeDepense;
  Psql : string;
begin
  if (Trim(edCode.Text)='') and (Trim(edDesignation.Text)='') then
    begin
      MessageDlg('Vous devez renseigner le code et la d�signation',mtError,[mbOk],0);
    end else
    begin
      with tdep do
        begin
          Scodetdep :=QuotedStr(edCode.Text);
          Sdesigntdep:=QuotedStr(edDesignation.Text);
        end;
        dm.InsertTypeDepense(tdep);
        edCode.Clear;
        edDesignation.Clear;

        FormShow(sender);
    end;
end;

procedure TfrmTypeDepense.Button2Click(Sender: TObject);
begin
edCode.Clear;
edDesignation.Clear;
close;
end;

procedure TfrmTypeDepense.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Code';
    Cells[1,0]:='D�signation'
  end;
end;

procedure TfrmTypeDepense.FormShow(Sender: TObject);
var
  Psql : string;
  tdeps :TTypeDepenseArray;
  I: Integer;
begin
  Psql := '' ;
  tdeps:=DM.SelectTypeDep(Psql);

  StringGrid1.RowCount := Length(tdeps)+1;

  for I := Low(tdeps) to High(tdeps) do
    begin
      StringGrid1.Cells[0,i+1]:=tdeps[i].Scodetdep;
      StringGrid1.Cells[1,i+1]:=tdeps[i].Sdesigntdep;
    end;
end;

procedure TfrmTypeDepense.StringGrid1DrawCell(Sender: TObject; ACol,
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