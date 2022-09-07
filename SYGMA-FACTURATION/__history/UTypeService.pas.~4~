unit UTypeService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmtypeService = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edCode_ts: TEdit;
    edDesign_ts: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmtypeService: TfrmtypeService;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmtypeService.Button1Click(Sender: TObject);
var
  Ts : TTypeService;
begin

  with Ts do
    begin
      Scode_ts := edCode_ts.Text;
      Sdesign_ts:=edDesign_ts.Text;
    end;
    if (Trim(edCode_ts.Text)<>'') and( Trim(edDesign_ts.Text)<>'') then
      begin
        dm.InsertTypeService(Ts);
        Button2.Click;
      end
    else
      MessageDlg('Veuillez renseiger tous les champs ',mtError,[mbOK],0);

end;

end.
