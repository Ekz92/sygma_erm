unit UImportBl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Grids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmImportBl = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    cbSource: TComboBox;
    edLot: TEdit;
    Panel3: TPanel;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label3: TLabel;
    lbChauf: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    edCodeLivreur: TEdit;
    edNomLivreur: TEdit;
    edChauf: TEdit;
    edPiece: TEdit;
    edNumMat: TEdit;
    edNomCamion: TEdit;
    edPtac: TEdit;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    edcodeClt: TEdit;
    edNomClt: TEdit;
    edzone: TEdit;
    edPrixZone: TEdit;
    cbPoint: TComboBox;
    StringGrid1: TStringGrid;
    ProgressBar1: TProgressBar;
    Panel4: TPanel;
    label11: TLabel;
    lbTbout: TLabel;
    Label5: TLabel;
    lbTkilo: TLabel;
    Label10: TLabel;
    lbMontant: TLabel;
    Label6: TLabel;
    lbChargmt: TLabel;
    OpenDialog1: TOpenDialog;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmImportBl: TfrmImportBl;

implementation

{$R *.dfm}

end.
