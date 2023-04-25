unit UCreanceClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmCreanceClient = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cdate: TDateTimePicker;
    edClient: TEdit;
    cTypCrea: TComboBox;
    edLibelleCrea: TEdit;
    edmontant: TEdit;
    Button1: TButton;
    Button2: TButton;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmCreanceClient: TfrmCreanceClient;

implementation

{$R *.dfm}

end.
