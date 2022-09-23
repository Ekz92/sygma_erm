program SYGMA_DISPATCHING;

uses
  Vcl.Forms,
  UIntegrateur in 'UIntegrateur.pas' {frmIntegrateur},
  UChargement_veh in 'UChargement_veh.pas' {frmChargement_veh},
  UChargement_rech_veh in 'UChargement_rech_veh.pas' {frmchargement_Rech_veh},
  UDM in 'UDM.pas' {DM: TDataModule},
  UChargement_rech_bl in 'UChargement_rech_bl.pas' {frmChargement_rech_bl},
  UConnexion in 'UConnexion.pas' {frmconnexion},
  UListe_chargement in 'UListe_chargement.pas' {frmListe_chargement},
  records in 'records.pas',
  UvteChargVeh in 'UvteChargVeh.pas' {frmvteChargVeh},
  URechLivreurChargement in 'URechLivreurChargement.pas' {frmRechLivreurChargement},
  UImportBl in 'UImportBl.pas' {frmImportBl},
  UVteChargVehRechVeh in 'UVteChargVehRechVeh.pas' {frmVteChargVehRechVeh},
  URechCltChargCamion in 'URechCltChargCamion.pas' {frmRechCltChargCamion},
  UrechVenteChargVeh in 'UrechVenteChargVeh.pas' {frmrechVenteChargVeh},
  URechChaufVteChargCeh in 'URechChaufVteChargCeh.pas' {frmRechChaufVteChargCeh},
  UStockcamion in 'UStockcamion.pas' {frmStockcamion},
  UListeChargCamion in 'UListeChargCamion.pas' {frmListeChargCamion},
  UListeChargementCamion in 'UListeChargementCamion.pas' {frmListeChargementCamion},
  UModifChargement in 'UModifChargement.pas' {frmModifChargement},
  UListeLotLivraison in 'UListeLotLivraison.pas' {frmListeLotLivraison},
  UCumulQteChargeCam in 'UCumulQteChargeCam.pas' {frmCumulQteChargeCam},
  UEtatLivraison in 'UEtatLivraison.pas' {frmEtatLivraison},
  URechLotElivraison in 'URechLotElivraison.pas' {frmRechLotElivraison},
  UDiagrammeChargement in 'UDiagrammeChargement.pas' {frmDiagrammeChargement},
  URetourBouteille in 'URetourBouteille.pas' {frmRetourBouteille},
  URechLotRetourBout in 'URechLotRetourBout.pas' {frmRechLotRetourBout},
  UAddCommandeCamion in 'UAddCommandeCamion.pas' {frmAddCommandeCamion},
  URechChargCom in 'URechChargCom.pas' {frmRechChargCom},
  UListeCommandeCamion in 'UListeCommandeCamion.pas' {frmListeCommandeCamion},
  UTransfertInterCamion in 'UTransfertInterCamion.pas' {frmTransfertInterCamion};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmconnexion, frmconnexion);
  Application.CreateForm(TfrmIntegrateur, frmIntegrateur);
  Application.CreateForm(TfrmChargement_veh, frmChargement_veh);
  Application.CreateForm(Tfrmchargement_Rech_veh, frmchargement_Rech_veh);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmChargement_rech_bl, frmChargement_rech_bl);
  Application.CreateForm(TfrmListe_chargement, frmListe_chargement);
  Application.CreateForm(TfrmvteChargVeh, frmvteChargVeh);
  Application.CreateForm(TfrmRechLivreurChargement, frmRechLivreurChargement);
  Application.CreateForm(TfrmImportBl, frmImportBl);
  Application.CreateForm(TfrmVteChargVehRechVeh, frmVteChargVehRechVeh);
  Application.CreateForm(TfrmRechCltChargCamion, frmRechCltChargCamion);
  Application.CreateForm(TfrmrechVenteChargVeh, frmrechVenteChargVeh);
  Application.CreateForm(TfrmRechChaufVteChargCeh, frmRechChaufVteChargCeh);
  Application.CreateForm(TfrmStockcamion, frmStockcamion);
  Application.CreateForm(TfrmListeChargCamion, frmListeChargCamion);
  Application.CreateForm(TfrmListeChargementCamion, frmListeChargementCamion);
  Application.CreateForm(TfrmModifChargement, frmModifChargement);
  Application.CreateForm(TfrmListeLotLivraison, frmListeLotLivraison);
  Application.CreateForm(TfrmCumulQteChargeCam, frmCumulQteChargeCam);
  Application.CreateForm(TfrmEtatLivraison, frmEtatLivraison);
  Application.CreateForm(TfrmRechLotElivraison, frmRechLotElivraison);
  Application.CreateForm(TfrmDiagrammeChargement, frmDiagrammeChargement);
  Application.CreateForm(TfrmRetourBouteille, frmRetourBouteille);
  Application.CreateForm(TfrmRechLotRetourBout, frmRechLotRetourBout);
  Application.CreateForm(TfrmAddCommandeCamion, frmAddCommandeCamion);
  Application.CreateForm(TfrmRechChargCom, frmRechChargCom);
  Application.CreateForm(TfrmListeCommandeCamion, frmListeCommandeCamion);
  Application.CreateForm(TfrmTransfertInterCamion, frmTransfertInterCamion);
  Application.Run;
end.
