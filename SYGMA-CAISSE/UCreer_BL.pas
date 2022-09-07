unit UCreer_BL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfrm_nouveau_BL = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Bevel1: TBevel;
    Label11: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    lbcodeClt: TLabel;
    Label22: TLabel;
    lbTot_ligne: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    lbTotKg: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    lbPrixLiv: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    lbTotBlle: TLabel;
    Label31: TLabel;
    SG_import: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    cbPointVente: TComboBox;
    edzone: TEdit;
    edprix: TEdit;
    edcodeClt: TEdit;
    ednomClient: TEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    ednumFacture: TEdit;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BtCreer: TSpeedButton;
    BtAnnuler: TSpeedButton;
    Label12: TLabel;
    lbtkilo: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lbTBouteille: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    lbprixlivraison: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    ednumBL: TEdit;
    edClient: TEdit;
    edcodeMag: TEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BtAjouter: TSpeedButton;
    edCode_art: TEdit;
    edDesign_Art: TEdit;
    edkilo: TEdit;
    edQte: TEdit;
    edDegn_mag: TEdit;
    StringGrid1: TStringGrid;
    ednom_zone: TEdit;
    edPrix_zone: TEdit;
    edCodeClt_man: TEdit;
    cbPointVente_man: TComboBox;
    PopupMenu1: TPopupMenu;
    Modifier1: TMenuItem;
    frxBL: TfrxReport;
    frxDBBL: TfrxDBDataset;
    QBL: TSQLQuery;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frm_nouveau_BL: Tfrm_nouveau_BL;

implementation

{$R *.dfm}

end.
