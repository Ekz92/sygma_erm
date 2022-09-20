program SYGMA_FACTURATION;

uses
  Vcl.Forms,
  UIntegrateur in 'UIntegrateur.pas' {frmIntegrateur},
  records in 'records.pas',
  UDM in 'UDM.pas' {DM: TDataModule},
  USaisieFacture in 'USaisieFacture.pas' {frmSaisieFacture},
  UConnexion in 'UConnexion.pas' {frmconnexion},
  USelectClientFacturation in 'USelectClientFacturation.pas' {frmSelectClientFacturation},
  USaisieFactureService in 'USaisieFactureService.pas' {frmSaisieFactureService},
  UFacturation_rech_magasin in 'UFacturation_rech_magasin.pas' {frmFacturationRech_mag},
  Ufacture_rech_art in 'Ufacture_rech_art.pas' {frmfacture_rech_art},
  UListeParamPrix in 'UListeParamPrix.pas' {frmListeTarif},
  UTarif_update in 'UTarif_update.pas' {frmTarifUpdate},
  UListeFacture in 'UListeFacture.pas' {frmListeFacture},
  UrechClientFacture in 'UrechClientFacture.pas' {frmRechClientFacture},
  UFactureCanc in 'UFactureCanc.pas' {frmFactureCanc},
  UListeFactureAnnulee in 'UListeFactureAnnulee.pas' {frmListeFactureAnnulee},
  UListeFactureCommande in 'UListeFactureCommande.pas' {frmListeFactureCommande},
  URechCommandeLFactures in 'URechCommandeLFactures.pas' {frmRechCommandeLFactures},
  UParametreNumFacture in 'UParametreNumFacture.pas' {frmParamNumFact},
  UParametrage_prix_clt in 'UParametrage_prix_clt.pas' {frmTarifDef},
  URechTypeClientFacturer in 'URechTypeClientFacturer.pas' {frmRechTarif},
  URechArticleFacturer in 'URechArticleFacturer.pas' {frmRechArticleFacturer},
  Uadd_type_client in 'Uadd_type_client.pas' {frmAddTarif},
  UBeneficeVente in 'UBeneficeVente.pas' {frmBeneficeVente},
  UTypeService in 'UTypeService.pas' {frmtypeService},
  URapportParClient in 'URapportParClient.pas' {frmRapportParClient},
  UCumuleVenteBl in 'UCumuleVenteBl.pas' {frmCumuleVenteBL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmconnexion, frmconnexion);
  Application.CreateForm(TfrmIntegrateur, frmIntegrateur);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmSaisieFacture, frmSaisieFacture);
  Application.CreateForm(TfrmSelectClientFacturation, frmSelectClientFacturation);
  Application.CreateForm(TfrmSaisieFactureService, frmSaisieFactureService);
  Application.CreateForm(TfrmFacturationRech_mag, frmFacturationRech_mag);
  Application.CreateForm(Tfrmfacture_rech_art, frmfacture_rech_art);
  Application.CreateForm(TfrmListeTarif, frmListeTarif);
  Application.CreateForm(TfrmTarifUpdate, frmTarifUpdate);
  Application.CreateForm(TfrmListeFacture, frmListeFacture);
  Application.CreateForm(TfrmRechClientFacture, frmRechClientFacture);
  Application.CreateForm(TfrmFactureCanc, frmFactureCanc);
  Application.CreateForm(TfrmListeFactureAnnulee, frmListeFactureAnnulee);
  Application.CreateForm(TfrmListeFactureCommande, frmListeFactureCommande);
  Application.CreateForm(TfrmRechCommandeLFactures, frmRechCommandeLFactures);
  Application.CreateForm(TfrmParamNumFact, frmParamNumFact);
  Application.CreateForm(TfrmTarifDef, frmTarifDef);
  Application.CreateForm(TfrmRechTarif, frmRechTarif);
  Application.CreateForm(TfrmRechArticleFacturer, frmRechArticleFacturer);
  Application.CreateForm(TfrmAddTarif, frmAddTarif);
  Application.CreateForm(TfrmBeneficeVente, frmBeneficeVente);
  Application.CreateForm(TfrmtypeService, frmtypeService);
  Application.CreateForm(TfrmRapportParClient, frmRapportParClient);
  Application.CreateForm(TfrmCumuleVenteBL, frmCumuleVenteBL);
  Application.Run;
end.
