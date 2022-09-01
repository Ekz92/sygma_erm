unit UIntegrateur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.Menus, Vcl.Buttons,
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
    Edition1: TMenuItem;
    Annulation1: TMenuItem;
    BL1: TMenuItem;
    Chargement1: TMenuItem;
    Mission1: TMenuItem;
    ChargementBL1: TMenuItem;
    Modification1: TMenuItem;
    Reimpression1: TMenuItem;
    Facture1: TMenuItem;
    BL3: TMenuItem;
    Caisse2: TMenuItem;
    Reudecaisse1: TMenuItem;
    Bordereeaudedcaissement1: TMenuItem;
    Bordereaudencaissement1: TMenuItem;
    Commande2: TMenuItem;
    Fichedecommande1: TMenuItem;
    Chargement3: TMenuItem;
    Fichedispatching1: TMenuItem;
    BC1: TMenuItem;
    Outils1: TMenuItem;
    Opration1: TMenuItem;
    Dchargementdevhicule1: TMenuItem;
    ImportationdeBL1: TMenuItem;
    Cltureouverture1: TMenuItem;
    Contrle1: TMenuItem;
    Retourbouteille1: TMenuItem;
    Listedecontrle1: TMenuItem;
    Saisie1: TMenuItem;
    Saisie2: TMenuItem;
    Mission2: TMenuItem;
    Retourmissionspciale1: TMenuItem;
    Liste1: TMenuItem;
    Missionretour1: TMenuItem;
    Listedesmissions1: TMenuItem;
    Spciale1: TMenuItem;
    Missionparchauffeur1: TMenuItem;
    Missionpardate1: TMenuItem;
    Voir1: TMenuItem;
    Listedeschauffeur1: TMenuItem;
    Listedechargements1: TMenuItem;
    Parc1: TMenuItem;
    Client1: TMenuItem;
    Livreur1: TMenuItem;
    Nouveau3: TMenuItem;
    Liste5: TMenuItem;
    Clients1: TMenuItem;
    Pointdevente1: TMenuItem;
    Listedeclient1: TMenuItem;
    Listedesointdevente1: TMenuItem;
    Zone1: TMenuItem;
    Consultationdecompte1: TMenuItem;
    RelevdoprationsClient1: TMenuItem;
    Magasin2: TMenuItem;
    ypedebouteil1: TMenuItem;
    Magasin1: TMenuItem;
    Entreeenmagasin1: TMenuItem;
    Sortiedumagasin1: TMenuItem;
    Etat1: TMenuItem;
    Etatdesentreenstock1: TMenuItem;
    Etatdesentreenstock2: TMenuItem;
    Etatdustock1: TMenuItem;
    ListeMagasin1: TMenuItem;
    Mouvementdustock1: TMenuItem;
    Pararticle1: TMenuItem;
    Etatdesentresannuls1: TMenuItem;
    ypearticle1: TMenuItem;
    Listedesarticles1: TMenuItem;
    Oprationsdivers1: TMenuItem;
    Entre1: TMenuItem;
    Sortie1: TMenuItem;
    Chargement2: TMenuItem;
    ChargementBL2: TMenuItem;
    Saisieduchargement1: TMenuItem;
    Listeduchargement1: TMenuItem;
    Chargementcamio1: TMenuItem;
    Saisiedechargement1: TMenuItem;
    Consultationdestock1: TMenuItem;
    Consultationdechargement1: TMenuItem;
    Listedechargement1: TMenuItem;
    Listedelots1: TMenuItem;
    Cumuledelaquantit1: TMenuItem;
    Chargerunelivraison1: TMenuItem;
    Etat2: TMenuItem;
    Diagrammedechargement1: TMenuItem;
    Retourbouteilles1: TMenuItem;
    Commande1: TMenuItem;
    Dclarer1: TMenuItem;
    Liste4: TMenuItem;
    Statistique1: TMenuItem;
    Chargeparclient1: TMenuItem;
    Graphclienttop1: TMenuItem;
    Cumuledachat1: TMenuItem;
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
    Caisse1: TMenuItem;
    Listefacture1: TMenuItem;
    Nouvelcaisse1: TMenuItem;
    Historiquedecaisse1: TMenuItem;
    Forage1: TMenuItem;
    Avancefacture1: TMenuItem;
    S1: TMenuItem;
    Listedesavancesreus1: TMenuItem;
    Dcaissement1: TMenuItem;
    Saisidedpense1: TMenuItem;
    Listededpense1: TMenuItem;
    Encaissement1: TMenuItem;
    Saisie3: TMenuItem;
    Liste3: TMenuItem;
    Solde1: TMenuItem;
    Versementparcommande1: TMenuItem;
    Versement1: TMenuItem;
    Listedeversement1: TMenuItem;
    BL2: TMenuItem;
    CrerunBL1: TMenuItem;
    RappeldeBL1: TMenuItem;
    ListedesBL1: TMenuItem;
    Pardate1: TMenuItem;
    ParNBL1: TMenuItem;
    BondeComBC1: TMenuItem;
    CrerunBC1: TMenuItem;
    ListedeBC1: TMenuItem;
    Banque1: TMenuItem;
    Nouveau2: TMenuItem;
    Liste2: TMenuItem;
    Admin1: TMenuItem;
    Sauvegarde1: TMenuItem;
    frxFiche_mission_spec: TfrxReport;
    frxFiche_mission_ord: TfrxReport;
    procedure Saisieduchargement1Click(Sender: TObject);
    procedure Listeduchargement1Click(Sender: TObject);
    procedure Saisiedechargement1Click(Sender: TObject);
    procedure Consultationdestock1Click(Sender: TObject);
    procedure Consultationdechargement1Click(Sender: TObject);
    procedure Listedechargement1Click(Sender: TObject);
    procedure Listedelots1Click(Sender: TObject);
    procedure Cumuledelaquantit1Click(Sender: TObject);
    procedure Etat2Click(Sender: TObject);
    procedure Diagrammedechargement1Click(Sender: TObject);
    procedure Retourbouteilles1Click(Sender: TObject);
    procedure Dclarer1Click(Sender: TObject);
    procedure Liste4Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmIntegrateur: TfrmIntegrateur;

implementation

{$R *.dfm}

uses UChargement_veh, UListe_chargement, UvteChargVeh, UStockcamion,
  UListeChargCamion, UListeChargementCamion, UListeLotLivraison,
  UCumulQteChargeCam, UEtatLivraison, UDiagrammeChargement, URetourBouteille,
  UAddCommandeCamion, UListeCommandeCamion;

procedure TfrmIntegrateur.Consultationdechargement1Click(Sender: TObject);
begin
frmListeChargCamion.ShowModal;
end;

procedure TfrmIntegrateur.Consultationdestock1Click(Sender: TObject);
begin
frmStockcamion.ShowModal;
end;

procedure TfrmIntegrateur.Cumuledelaquantit1Click(Sender: TObject);
begin
frmCumulQteChargeCam.ShowModal;
end;

procedure TfrmIntegrateur.Dclarer1Click(Sender: TObject);
begin
frmAddCommandeCamion.ShowModal;
end;

procedure TfrmIntegrateur.Diagrammedechargement1Click(Sender: TObject);
begin
frmDiagrammeChargement.showmodal;
end;

procedure TfrmIntegrateur.Etat2Click(Sender: TObject);
begin
frmEtatLivraison.ShowModal;
end;

procedure TfrmIntegrateur.Liste4Click(Sender: TObject);
begin
frmListeCommandeCamion.ShowModal;
end;

procedure TfrmIntegrateur.Listedechargement1Click(Sender: TObject);
begin
frmListeChargementCamion.ShowModal;
end;

procedure TfrmIntegrateur.Listedelots1Click(Sender: TObject);
begin
frmListeLotLivraison.ShowModal;
end;

procedure TfrmIntegrateur.Listeduchargement1Click(Sender: TObject);
begin
frmListe_chargement.ShowModal;
end;

procedure TfrmIntegrateur.Retourbouteilles1Click(Sender: TObject);
begin
frmRetourBouteille.ShowModal;
end;

procedure TfrmIntegrateur.Saisiedechargement1Click(Sender: TObject);
begin
frmvteChargVeh.ShowModal;
end;

procedure TfrmIntegrateur.Saisieduchargement1Click(Sender: TObject);
begin
frmChargement_veh.ShowModal;
end;

end.