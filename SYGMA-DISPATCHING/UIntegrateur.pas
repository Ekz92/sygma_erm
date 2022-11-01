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
    Admin1: TMenuItem;
    Sauvegarde1: TMenuItem;
    frxFiche_mission_spec: TfrxReport;
    frxFiche_mission_ord: TfrxReport;
    ransfertintercamion1: TMenuItem;
    Rgulstockcamion1: TMenuItem;
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
    procedure FormShow(Sender: TObject);
    procedure ransfertintercamion1Click(Sender: TObject);
    procedure Rgulstockcamion1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmIntegrateur: TfrmIntegrateur;

implementation

{$R *.dfm}

uses UChargement_veh, UListe_chargement, UvteChargVeh, UStockcamion,
  UListeChargCamion, UListeChargementCamion, UListeLotLivraison,
  UCumulQteChargeCam, UEtatLivraison, UDiagrammeChargement, URetourBouteille,
  UAddCommandeCamion, UListeCommandeCamion, records, UDM, UTransfertInterCamion,
  UReguleStockCamion;

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
      MessageDlg('Erreur, Merci de vérifier si vous aviez clôturer la journée d''hier',mtError,[mbOK],0);
      with frmIntegrateur do
        begin
          Fichier1.Enabled:=false;
//          Facturation1.Enabled:=false;
//          Caisse1.Enabled:=false;
//          Magasin2.Enabled:=false;
//          BL2.Enabled:=False;
          Saisie1.Enabled:=False;
          Chargement2.Enabled:=False;
        end;
    end else
    begin
          Fichier1.Enabled:=True;
//          Facturation1.Enabled:=True;
//          Caisse1.Enabled:=True;
//          Magasin2.Enabled:=True;
//          BL2.Enabled:=True;
          Saisie1.Enabled:=True;
          Chargement2.Enabled:=True;
    end;
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

procedure TfrmIntegrateur.ransfertintercamion1Click(Sender: TObject);
begin
frmTransfertInterCamion.ShowModal;
end;

procedure TfrmIntegrateur.Retourbouteilles1Click(Sender: TObject);
begin
frmRetourBouteille.ShowModal;
end;

procedure TfrmIntegrateur.Rgulstockcamion1Click(Sender: TObject);
begin
frmReguleStockCamion.ShowModal;
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
