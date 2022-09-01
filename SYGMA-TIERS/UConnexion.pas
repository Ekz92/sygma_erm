unit UConnexion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  Tfrmconnexion = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Panel2: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lberreur: TLabel;
    Image1: TImage;
    edlogin: TEdit;
    edpwd: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure edpwdKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmconnexion: Tfrmconnexion;
  vUsager : string;

implementation

{$R *.dfm}

uses UIntegrateur, UDM;

procedure Tfrmconnexion.edpwdKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
SpeedButton1.Click;

end;

procedure Tfrmconnexion.FormActivate(Sender: TObject);
begin
lberreur.Visible := false;
end;

procedure Tfrmconnexion.Image2Click(Sender: TObject);
begin
if edpwd.PasswordChar = '*' then edpwd.PasswordChar := #0 else edpwd.PasswordChar := '*';
end;

procedure Tfrmconnexion.SpeedButton1Click(Sender: TObject);
var
  RUser : TSQLQuery;
  Conn : integer;
begin
    RUser:=TSQLQuery.Create(self);
    RUser.SQLConnection := dm.SQLConnection1;

    with RUser.SQL do
      begin
        Add('select * from tb_user where usager = ' + QuotedStr(edlogin.Text) +' and password = '+QuotedStr(edpwd.Text)+' and statut = 1');
      end;

      try
        RUser.Open;
        if not RUser.IsEmpty then
          Conn := 1
        else
          conn := 0
      finally
        RUser.Free;
        dm.SQLConnection1.Close;
      end;

  if Conn = 1 then
    begin
      vUsager := edlogin.Text;
      edpwd.Clear;
      frmIntegrateur.ShowModal;
    end else
      lberreur.Visible := true;


end;

end.
