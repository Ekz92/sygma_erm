unit UParametreNumFacture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ExtCtrls;

type
  TfrmParamNumFact = class(TForm)
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edCodeMag: TEdit;
    edDesignationMag: TEdit;
    edPrefixe: TEdit;
    Button1: TButton;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    Supprimer1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Supprimer1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmParamNumFact: TfrmParamNumFact;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmParamNumFact.Button1Click(Sender: TObject);
var
  Parametre : TParametreNumFacture;
  Parametres : TParametreNumFactureArray;
  I: Integer;
  Psql,SelSql,
  code_mag:string;

begin
  SelSql := 'Where code_mag = '+QuotedStr(edCodeMag.Text) ;

  Parametres := dm.SelectParamNumFact(SelSql);

  with Parametre do
    begin
      Scode_mag:=edCodeMag.Text;
      Sdesignation_mag:=edDesignationMag.Text;
      Sprefix_fact:=edPrefixe.Text;
    end;

    for I := Low(Parametres) to High(Parametres) do
      begin
        code_mag := Parametres[i].Scode_mag;
      end;

  if code_mag.IsEmpty then
    dm.InsertParametreNumFacture(Parametre)
  else
    MessageDlg('Il existe d�j� une configuration sur ce magasin',mtError,[mbRetry],0);

//************
  FormShow(sender);
end;

procedure TfrmParamNumFact.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Code mag';
    Cells[1,0]:='D�signation mag';
    Cells[2,0]:='Prefix Fact';
  end;

end;

procedure TfrmParamNumFact.FormShow(Sender: TObject);
var
  Parametres : TParametreNumFactureArray;
  I: Integer;
  Psql :string;
begin
  Psql:='Order by idParamNumFact desc';

  Parametres := dm.SelectParamNumFact(Psql);
  StringGrid1.RowCount:=Length(Parametres)+1;

  for I := Low(Parametres) to High(Parametres) do
    begin
      StringGrid1.Cells[0,i+1]:= Parametres[i].Scode_mag;
      StringGrid1.Cells[1,i+1]:= Parametres[i].Sdesignation_mag;
      StringGrid1.Cells[2,i+1]:= Parametres[i].Sprefix_fact;
    end;
end;

procedure TfrmParamNumFact.StringGrid1DrawCell(Sender: TObject; ACol,
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

procedure TfrmParamNumFact.Supprimer1Click(Sender: TObject);
Var
  Psql : string;
begin
  with StringGrid1 do
    begin
      Psql := 'Delete from tb_paramnumfacture '
            +' where code_mag = '+QuotedStr(Cells[0,Row] )
            +' and prefixe_fact = '+QuotedStr(Cells[2,Row]);
    end;

    if MessageDlg('Voulez vous supprimer ce pr�fixe ?', mtConfirmation,[mbyes,mbNo],0) = mrYes then
      begin
        dm.DeleteFromTable(Psql);
        FormShow(sender);
      end;

end;

end.
