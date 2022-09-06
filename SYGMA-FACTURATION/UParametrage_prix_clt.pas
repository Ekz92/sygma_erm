unit UParametrage_prix_clt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmTarifDef = class(TForm)
    Bevel1: TBevel;
    Label4: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    edDesignationTypeClt: TEdit;
    edtypeclt: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    edcodeart: TEdit;
    edDesignation_art: TEdit;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    edprix: TEdit;
    procedure edtypecltDblClick(Sender: TObject);
    procedure edcodeartDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmTarifDef: TfrmTarifDef;

implementation

{$R *.dfm}

uses URechTypeClientFacturer, URechArticleFacturer, records, UDM;

procedure TfrmTarifDef.Button1Click(Sender: TObject);
var
  unParam : TTarif_defPrix;
  StatSearch :Boolean;
  code_art,
  code_tarif : string;
begin
  code_tarif := edtypeclt.Text;
  code_art := edcodeart.Text;

  StatSearch:=dm.SelectUnParamPrix(code_art,code_tarif);

if StatSearch=False then
  begin
    with unParam do
      begin
        Scode_tarif := Trim(edtypeclt.Text);
        Sdesignation_tarif:=Trim(edDesignationTypeClt.Text);
        Scode_art := Trim(edcodeart.Text);
        Sdesignation_art := Trim(edDesignation_art.Text);
        Rprix:=strtofloat(edprix.Text);
      end;
    if MessageDlg('Voulez-vous parametrer ce prix sur ce type client ?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
      begin
        DM.InsertParametragePrixClt(unParam);
        edcodeart.Clear;
        edDesignation_art.Clear;
        edprix.Clear;
      end;
  end else
  begin
    MessageDlg('Il existe déjà un parametrage de cet article sur ce client',mtError,[mbOK],0);
    Button2.Click;
  end;
end;

procedure TfrmTarifDef.Button2Click(Sender: TObject);
begin
edcodeart.Clear;
edtypeclt.Clear;
edDesignation_art.Clear;
edDesignationTypeClt.Clear;
edprix.Clear;
end;

procedure TfrmTarifDef.edcodeartDblClick(Sender: TObject);
begin
frmRechArticleFacturer.ShowModal;
end;

procedure TfrmTarifDef.edtypecltDblClick(Sender: TObject);
begin
frmRechTarif.ShowModal;
end;

end.
