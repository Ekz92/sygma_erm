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
    Cltureouverture1: TMenuItem;
    Contrle1: TMenuItem;
    Retourbouteille1: TMenuItem;
    Listedecontrle1: TMenuItem;
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
    BondeComBC1: TMenuItem;
    CrerunBC1: TMenuItem;
    ListedeBC1: TMenuItem;
    Banque1: TMenuItem;
    Nouveau2: TMenuItem;
    Liste2: TMenuItem;
    Admin1: TMenuItem;
    Sauvegarde1: TMenuItem;
    procedure Listefacture1Click(Sender: TObject);
    procedure Nouvelcaisse1Click(Sender: TObject);
    procedure Historiquedecaisse1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure Listedesavancesreus1Click(Sender: TObject);
    procedure Saisidedpense1Click(Sender: TObject);
    procedure Listededpense1Click(Sender: TObject);
    procedure Saisie3Click(Sender: TObject);
    procedure Liste3Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmIntegrateur: TfrmIntegrateur;

implementation

{$R *.dfm}

uses UPayementFacture, UAddCaisse, UJournal_caisse, UAvance, UListe_avance,
  USaisiDepense, UListeDepense, UEncaissement, UListeEncaissement;

procedure TfrmIntegrateur.Historiquedecaisse1Click(Sender: TObject);
begin
frmJournalCaisse.ShowModal;
end;

procedure TfrmIntegrateur.Liste3Click(Sender: TObject);
begin
frmListeEncaissement.ShowModal;
end;

procedure TfrmIntegrateur.Listededpense1Click(Sender: TObject);
begin
frmListeDepense.ShowModal;
end;

procedure TfrmIntegrateur.Listedesavancesreus1Click(Sender: TObject);
begin
frmListeAvance.ShowModal;
end;

procedure TfrmIntegrateur.Listefacture1Click(Sender: TObject);
begin
frmPayementFacture.ShowModal;
end;

procedure TfrmIntegrateur.Nouvelcaisse1Click(Sender: TObject);
begin
frmAddCaisse.showModal;
end;

procedure TfrmIntegrateur.S1Click(Sender: TObject);
begin
frmAddAvance.ShowModal;
end;

procedure TfrmIntegrateur.Saisidedpense1Click(Sender: TObject);
begin
frmSaisiDepense.ShowModal;
end;

procedure TfrmIntegrateur.Saisie3Click(Sender: TObject);
begin
frmEncaissement.ShowModal;
end;

end.