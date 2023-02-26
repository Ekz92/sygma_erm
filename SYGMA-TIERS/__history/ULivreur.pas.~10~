unit ULivreur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmLivreur = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edNom: TEdit;
    edTel: TEdit;
    edAdresse: TEdit;
    edMail: TEdit;
    Button1: TButton;
    Button2: TButton;
    edcode_liv: TEdit;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    Modifier1: TMenuItem;
    Consulter1: TMenuItem;
    Supprimer1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmLivreur: TfrmLivreur;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmLivreur.Button1Click(Sender: TObject);
var
  Livreur : TLivreur;
begin
  if (Trim(edNom.Text)<>'') and (trim(edcode_liv.Text)<>'') then
    begin
      with Livreur do
        begin
          SCode_liv := QuotedStr(trim(edcode_liv.Text));
          Snom_liv := QuotedStr(trim(edNom.Text));
          Stel_liv := QuotedStr(edTel.Text);
          Sadresse_liv := QuotedStr(edAdresse.Text);
          Smail_liv := QuotedStr(edMail.Text);
        end;
        if MessageDlg('Valider la création de ce livreur ?',mtConfirmation,[mbYes,mbNo],0) = mryes then
          begin
            dm.InsertLivreur(Livreur);
            Button2.Click;
          end;
    end else
    MessageDlg('Veillez renseigner le code et le nom du livreur',mtError,[mbRetry],0);
end;

procedure TfrmLivreur.Button2Click(Sender: TObject);
begin
edcode_liv.Clear;
edNom.Clear;
edTel.Clear;
edAdresse.Clear;
edMail.Clear;

FormShow(sender);

end;

procedure TfrmLivreur.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0] := 'Nom';
    Cells[1,0] := 'Tel';
    Cells[2,0] := 'Adresse';
    Cells[3,0] := 'Email';
  end;
end;

procedure TfrmLivreur.FormShow(Sender: TObject);
var
  Lvs : TLivreurArray;
  Psql : String;
  I: Integer;
begin
  Psql := '';
  Lvs := dm.selectLivreur(Psql);

  StringGrid1.RowCount := Length(Lvs)+1;

  for I := Low(Lvs) to High(Lvs) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := Lvs[i].Snom_liv;
          Cells[1,i+1] := Lvs[i].Stel_liv;
          Cells[2,i+1] := Lvs[i].Sadresse_liv;
          Cells[3,i+1] := Lvs[i].Smail_liv;
        end;
    end;
end;

procedure TfrmLivreur.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
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
