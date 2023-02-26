unit UChangeProfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmChangeProfiluser = class(TForm)
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edRechNom: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edcode: TEdit;
    edprenom: TEdit;
    Label4: TLabel;
    cbProfil: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure edRechNomChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmChangeProfiluser: TfrmChangeProfiluser;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmChangeProfiluser.Button1Click(Sender: TObject);
var
  Psql
   : string;
begin
  Psql := 'Update tb_user '
          +' set profil = '+QuotedStr(cbProfil.Text)
          +' where usager = '+QuotedStr(edcode.Text);

  if MessageDlg('Voulez-vous modifier le profil de cet utilisateur ?',mtConfirmation,[mbYes,mbNo],0)=mryes then
    begin
      dm.UpdateTable(Psql);
      Button2.Click;
    end;
end;

procedure TfrmChangeProfiluser.Button2Click(Sender: TObject);
begin
edRechNom.Clear;
edcode.Clear;
edprenom.Clear;
cbProfil.ItemIndex:=-1;
FormShow(sender);
end;

procedure TfrmChangeProfiluser.edRechNomChange(Sender: TObject);
var
  Users : TUserArray;
  Psql : string;
  I: Integer;
begin
  Psql := ' where nom_user like '+QuotedStr(edRechNom.Text);
  Users := dm.SelectUsers(Psql);

  for I := Low(Users) to High(Users) do
  begin
    with StringGrid1 do
      begin
        Cells[0,i+1] := Users[i].Snom_user;
        Cells[1,i+1] := Users[i].Sprenom_user;
        Cells[2,i+1] := Users[i].Susager;
        Cells[3,i+1] := Users[i].Sprofil;
      end;
  end;
end;

procedure TfrmChangeProfiluser.FormCreate(Sender: TObject);
begin
  with StringGrid1 do
    begin
      Cells[0,0]:='Nom';
      Cells[1,0]:='Prenom';
      Cells[2,0]:='Login';
      Cells[3,0]:='Profil';
    end;
end;

procedure TfrmChangeProfiluser.FormShow(Sender: TObject);
var
  Users : TUserArray;
  Psql : string;
  I: Integer;
begin
  Psql := '';
  Users := dm.SelectUsers(Psql);
  StringGrid1.RowCount := Length(Users)+1;

  for I := Low(Users) to High(Users) do
  begin
    with StringGrid1 do
      begin
        Cells[0,i+1] := Users[i].Snom_user;
        Cells[1,i+1] := Users[i].Sprenom_user;
        Cells[2,i+1] := Users[i].Susager;
        Cells[3,i+1] := Users[i].Sprofil;
      end;
  end;
end;

procedure TfrmChangeProfiluser.StringGrid1DblClick(Sender: TObject);
begin
with StringGrid1 do
  begin
    edcode.Text := Cells[2,Row];
    edprenom.Text := Cells[1,Row];
//    ednom.Text := Cells[0,Row];
  end;
end;

procedure TfrmChangeProfiluser.StringGrid1DrawCell(Sender: TObject; ACol,
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
