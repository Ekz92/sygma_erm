unit UChangePwd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmChangePwd = class(TForm)
    Bevel1: TBevel;
    Button2: TButton;
    Button1: TButton;
    edConfirm: TEdit;
    edNewPwd: TEdit;
    edpwd: TEdit;
    edlogin: TEdit;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmChangePwd: TfrmChangePwd;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmChangePwd.Button1Click(Sender: TObject);
var
  Check : Boolean;
  Psql,vLogin,vPwd : String;
begin
  if (edlogin.Text<>'') and (edpwd.Text<>'') then
    begin
      vLogin := edlogin.Text;
      vPwd := edpwd.Text;

      Psql := ' Where usager = '+QuotedStr(vLogin)
              +' and password = '+QuotedStr(vPwd);

      Check:=DM.CheckUser(Psql);

      if Check = True then
        begin
            if edNewPwd.Text = edConfirm.Text then
                begin
                   Psql := ' Update tb_user set '
                            +' password = '+QuotedStr(edNewPwd.Text)
                            +' where usager = '+QuotedStr(vLogin)  ;

                   if MessageDlg('Etes-vous sur de vouloir changer votre mot de passe ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                    begin
                     dm.UpdatePwd(Psql);
//                     ShowMessage('Modification bien prise en compte');
                    end;

                   MessageDlg('Le programme doit être redemarré pour prendre en compte les nouvelle modifications',mtWarning,[mbOK],0);
                   Application.Terminate;
                end else
                begin
                    MessageDlg('Le nouveau mot de pass n''est pas conforme avec la confirmation',mtError,[mbRetry],0);
                end;

        end else
        begin
          MessageDlg('Votre login ou password incorrect',mtError,[mbRetry],0);
        end;


    end else
    begin
      MessageDlg('Veillez saisir votre login et votre mot de pass',mtError,[mbYes],0);
    end;
end;

end.
