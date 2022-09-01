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
    Admin1: TMenuItem;
    Sauvegarde1: TMenuItem;
    procedure Nouveau3Click(Sender: TObject);
    procedure Clients1Click(Sender: TObject);
    procedure Pointdevente1Click(Sender: TObject);
    procedure Listedeclient1Click(Sender: TObject);
    procedure Listedesointdevente1Click(Sender: TObject);
    procedure Zone1Click(Sender: TObject);
    procedure Consultationdecompte1Click(Sender: TObject);
    procedure RelevdoprationsClient1Click(Sender: TObject);
    procedure Vhicule1Click(Sender: TObject);
    procedure ypevhicule1Click(Sender: TObject);
    procedure Chauffeur1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Cltureouverture1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmIntegrateur: TfrmIntegrateur;

implementation

{$R *.dfm}

uses ULivreur, UAdd_client, UPoint_vente, UListe_client, UListePointVente,
  UNew_zone, UConsultCompteClient, UReleveClient, UVehicule, UType_vehicule,
  UChauffeur, records, UDM, UClotureDay;

procedure TfrmIntegrateur.Chauffeur1Click(Sender: TObject);
begin
frmchauffeur.ShowModal;
end;

procedure TfrmIntegrateur.Clients1Click(Sender: TObject);
begin
frmAdd_client.ShowModal;
end;

procedure TfrmIntegrateur.Cltureouverture1Click(Sender: TObject);
begin
if MessageDlg('Voulez-vous clôturer la journée ?', mtConfirmation,[mbYes,mbNo],0)=mryes then
   frmClotureDay.ShowModal;
end;

procedure TfrmIntegrateur.Consultationdecompte1Click(Sender: TObject);
begin
frmComnsultCompteClient.ShowModal;
end;

procedure TfrmIntegrateur.FormShow(Sender: TObject);
var
  dd : TDateSys ;
begin
//st_SideMenu.Cells[0,0]:='Sous-menu';
//st_SideMenu.RowCount:=2;
//st_SideMenu.Rows[1].Clear;
//vBtn :=0;

  dd := dm.selectCatDate;
  lbdate.Caption := dd.Sdate_cd;

 if lbdate.Caption <> DateToStr(now) then
    begin
      MessageDlg('Erreur, Merci de vérifier si vous aviez clôturer la journée d''hier',mtError,[mbOK],0);
      with frmIntegrateur do
        begin
          Fichier1.Enabled:=false;
          Client1.Enabled:=False;
//          Magasin2.Enabled:=false;
//          Image7.Enabled:=False;
//          Image4.Enabled:=False;
//          Image3.Enabled:=False;
//          Image2.Enabled:=False;
//          Image8.Enabled:=False;
        end;
    end else
    begin
          Fichier1.Enabled:=True;
          Client1.Enabled:=True;
//          Magasin2.Enabled:=True;
//          Image7.Enabled:=True;
//          Image4.Enabled:=True;
//          Image3.Enabled:=True;
//          Image2.Enabled:=True;
//          Image8.Enabled:=True;

    end;

end;

procedure TfrmIntegrateur.Listedeclient1Click(Sender: TObject);
begin
frmListeClient.ShowModal;
end;

procedure TfrmIntegrateur.Listedesointdevente1Click(Sender: TObject);
begin
frmListePointdeVente.ShowModal;
end;

procedure TfrmIntegrateur.Nouveau3Click(Sender: TObject);
begin
frmLivreur.ShowModal;
end;

procedure TfrmIntegrateur.Pointdevente1Click(Sender: TObject);
begin
frmPointDeVente.ShowModal;
end;

procedure TfrmIntegrateur.RelevdoprationsClient1Click(Sender: TObject);
begin
frmReleveOpClient.ShowModal;
end;

procedure TfrmIntegrateur.Vhicule1Click(Sender: TObject);
begin
frmvehicule.ShowModal;
end;

procedure TfrmIntegrateur.ypevhicule1Click(Sender: TObject);
begin
frmtype_vehicule.ShowModal;
end;

procedure TfrmIntegrateur.Zone1Click(Sender: TObject);
begin
frmNew_zone.ShowModal;
end;

end.
