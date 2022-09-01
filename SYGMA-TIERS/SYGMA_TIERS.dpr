program SYGMA_TIERS;

uses
  Vcl.Forms,
  UIntegrateur in 'UIntegrateur.pas' {frmIntegrateur},
  UConnexion in 'UConnexion.pas' {frmconnexion},
  UDM in 'UDM.pas' {DM: TDataModule},
  ULivreur in 'ULivreur.pas' {frmLivreur},
  records in 'records.pas',
  UAdd_client in 'UAdd_client.pas' {frmAdd_client},
  UPoint_vente in 'UPoint_vente.pas' {frmPointDeVente},
  UListe_client in 'UListe_client.pas' {frmListeClient},
  UListePointVente in 'UListePointVente.pas' {frmListePointdeVente},
  UNew_zone in 'UNew_zone.pas' {frmNew_zone},
  UConsultCompteClient in 'UConsultCompteClient.pas' {frmComnsultCompteClient},
  UReleveClient in 'UReleveClient.pas' {frmReleveOpClient},
  UVehicule in 'UVehicule.pas' {frmvehicule},
  UType_vehicule in 'UType_vehicule.pas' {frmtype_vehicule},
  UChauffeur in 'UChauffeur.pas' {frmchauffeur},
  UClotureDay in 'UClotureDay.pas' {frmClotureDay};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmconnexion, frmconnexion);
  Application.CreateForm(TfrmIntegrateur, frmIntegrateur);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmLivreur, frmLivreur);
  Application.CreateForm(TfrmAdd_client, frmAdd_client);
  Application.CreateForm(TfrmPointDeVente, frmPointDeVente);
  Application.CreateForm(TfrmListeClient, frmListeClient);
  Application.CreateForm(TfrmListePointdeVente, frmListePointdeVente);
  Application.CreateForm(TfrmNew_zone, frmNew_zone);
  Application.CreateForm(TfrmComnsultCompteClient, frmComnsultCompteClient);
  Application.CreateForm(TfrmReleveOpClient, frmReleveOpClient);
  Application.CreateForm(Tfrmvehicule, frmvehicule);
  Application.CreateForm(Tfrmtype_vehicule, frmtype_vehicule);
  Application.CreateForm(Tfrmchauffeur, frmchauffeur);
  Application.CreateForm(TfrmClotureDay, frmClotureDay);
  Application.Run;
end.