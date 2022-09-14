unit UIntegrateur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmIntegrateur = class(TForm)
    Label2: TLabel;
    panel1: TPanel;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbdate: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Nouveau1: TMenuItem;
    Vhicule1: TMenuItem;
    ypevhicule1: TMenuItem;
    Chauffeur1: TMenuItem;
    ypeservice1: TMenuItem;
    Fichedemission2: TMenuItem;
    Missionordinaire2: TMenuItem;
    Missionspciale2: TMenuItem;
    Dconnexion1: TMenuItem;
    Quitter1: TMenuItem;
    Outils1: TMenuItem;
    Opration1: TMenuItem;
    Dchargementdevhicule1: TMenuItem;
    Cltureouverture1: TMenuItem;
    Contrle1: TMenuItem;
    Retourbouteille1: TMenuItem;
    Listedecontrle1: TMenuItem;
    Facturation1: TMenuItem;
    Saisiedefacture1: TMenuItem;
    Produit1: TMenuItem;
    Service1: TMenuItem;
    Listedeparamprixlient1: TMenuItem;
    Listedefacture1: TMenuItem;
    Listedefactures1: TMenuItem;
    Factureannule1: TMenuItem;
    Factureparcommande1: TMenuItem;
    Parametrage1: TMenuItem;
    Facturer1: TMenuItem;
    Prixvente1: TMenuItem;
    ypeClient1: TMenuItem;
    Bnficesurvente1: TMenuItem;
    Banque1: TMenuItem;
    Nouveau2: TMenuItem;
    Liste2: TMenuItem;
    Admin1: TMenuItem;
    Sauvegarde1: TMenuItem;
    Statistique1: TMenuItem;
    Rapportparclient1: TMenuItem;
    Diagrammedactivit1: TMenuItem;
    Cumuledachat1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Produit1Click(Sender: TObject);
    procedure Service1Click(Sender: TObject);
    procedure Listedeparamprixlient1Click(Sender: TObject);
    procedure Listedefactures1Click(Sender: TObject);
    procedure Factureannule1Click(Sender: TObject);
    procedure Factureparcommande1Click(Sender: TObject);
    procedure Facturer1Click(Sender: TObject);
    procedure Prixvente1Click(Sender: TObject);
    procedure ypeClient1Click(Sender: TObject);
    procedure ypeservice1Click(Sender: TObject);
    procedure Rapportparclient1Click(Sender: TObject);
    procedure Cumuledachat1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmIntegrateur: TfrmIntegrateur;

implementation

{$R *.dfm}

uses UDM, records, USaisieFacture, USaisieFactureService, UListeParamPrix,
  UListeFacture, UListeFactureAnnulee, UListeFactureCommande,
  UParametreNumFacture, UParametrage_prix_clt, Uadd_type_client, UTypeService,
  URapportParClient, UCumuleVenteBl;

procedure TfrmIntegrateur.Cumuledachat1Click(Sender: TObject);
begin
frmCumuleVenteBL.ShowModal;
end;

procedure TfrmIntegrateur.Factureannule1Click(Sender: TObject);
begin
frmListeFactureAnnulee.ShowModal;
end;

procedure TfrmIntegrateur.Factureparcommande1Click(Sender: TObject);
begin
frmListeFactureCommande.ShowModal;
end;

procedure TfrmIntegrateur.Facturer1Click(Sender: TObject);
begin
frmParamNumFact.ShowModal;

end;

procedure TfrmIntegrateur.FormShow(Sender: TObject);
var
  dd : TDateSys ;
begin
//ShowMessage(IntToStr(Screen.Width));
//ShowMessage(IntToStr(frmIntegrateur.Width));
  dd := dm.selectCatDate;

  lbdate.Caption := dd.Sdate_cd;
 if lbdate.Caption <> DateToStr(now) then
    begin
      MessageDlg('Erreur, Merci de v�rifier si vous aviez cl�turer la journ�e d''hier',mtError,[mbOK],0);
      with frmIntegrateur do
        begin
          Fichier1.Enabled:=false;
          Facturation1.Enabled:=false;
//          Caisse1.Enabled:=false;
//          Magasin2.Enabled:=false;
//          BL2.Enabled:=False;
//          Saisie1.Enabled:=False;
//          Chargement2.Enabled:=False;
        end;
    end else
    begin
          Fichier1.Enabled:=True;
          Facturation1.Enabled:=True;
//          Caisse1.Enabled:=True;
//          Magasin2.Enabled:=True;
//          BL2.Enabled:=True;
//          Saisie1.Enabled:=True;
//          Chargement2.Enabled:=True;
    end;
end;

procedure TfrmIntegrateur.Listedefactures1Click(Sender: TObject);
begin
frmListeFacture.ShowModal;
end;

procedure TfrmIntegrateur.Listedeparamprixlient1Click(Sender: TObject);
begin
frmListeTarif.ShowModal;
end;

procedure TfrmIntegrateur.Prixvente1Click(Sender: TObject);
begin
frmTarifDef.ShowModal;
end;

procedure TfrmIntegrateur.Produit1Click(Sender: TObject);
begin
frmSaisieFacture.ShowModal;
end;

procedure TfrmIntegrateur.Rapportparclient1Click(Sender: TObject);
begin
frmRapportParClient.ShowModal;
end;

procedure TfrmIntegrateur.Service1Click(Sender: TObject);
begin
frmSaisieFactureService.ShowModal;
end;

procedure TfrmIntegrateur.ypeClient1Click(Sender: TObject);
begin
frmAddTarif.ShowModal;

end;

procedure TfrmIntegrateur.ypeservice1Click(Sender: TObject);
begin
frmtypeService.ShowModal;
end;

end.
