program SYGMA_CAISSE;

uses
  Vcl.Forms,
  UConnexion in 'UConnexion.pas' {frmconnexion},
  UDM in 'UDM.pas' {DM: TDataModule},
  UIntegrateur in 'UIntegrateur.pas' {frmIntegrateur},
  UPayementFacture in 'UPayementFacture.pas' {frmPayementFacture},
  records in 'records.pas',
  UAddCaisse in 'UAddCaisse.pas' {frmAddCaisse},
  UJournal_caisse in 'UJournal_caisse.pas' {frmJournalCaisse},
  Urech_client_journal in 'Urech_client_journal.pas' {frmRehCltJournal},
  UPayementCanc in 'UPayementCanc.pas' {frmPayementCanc},
  UAvance in 'UAvance.pas' {frmAddAvance},
  URechCltAvance in 'URechCltAvance.pas' {frmRechCltAvance},
  UListe_avance in 'UListe_avance.pas' {frmListeAvance},
  USaisiDepense in 'USaisiDepense.pas' {frmSaisiDepense},
  UListeDepense in 'UListeDepense.pas' {frmListeDepense},
  UEncaissement in 'UEncaissement.pas' {frmEncaissement},
  UListeEncaissement in 'UListeEncaissement.pas' {frmListeEncaissement},
  UClotureDay in 'UClotureDay.pas' {frmClotureDay},
  UEtatJournal in 'UEtatJournal.pas' {frmEtatJournal},
  UCreer_BL in 'UCreer_BL.pas' {frm_nouveau_BL},
  UJournalCaisseH in 'UJournalCaisseH.pas' {frmJournalCaisseH},
  UTypeDepense in 'UTypeDepense.pas' {frmTypeDepense},
  UaddBank in 'UaddBank.pas' {frmAddBank},
  UbankListe in 'UbankListe.pas' {frmListeBank},
  UTransfertBkCaisse in 'UTransfertBkCaisse.pas' {frmTransfertBkCaisse},
  UAllInOneCaisse in 'UAllInOneCaisse.pas' {frmAllInOneCaisse},
  Ubkversement in 'Ubkversement.pas' {frmbkversement},
  UCreanceClient in 'UCreanceClient.pas' {frmCreanceClient},
  UDette_fourn in 'UDette_fourn.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmconnexion, frmconnexion);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmIntegrateur, frmIntegrateur);
  Application.CreateForm(TfrmPayementFacture, frmPayementFacture);
  Application.CreateForm(TfrmAddCaisse, frmAddCaisse);
  Application.CreateForm(TfrmJournalCaisse, frmJournalCaisse);
  Application.CreateForm(TfrmRehCltJournal, frmRehCltJournal);
  Application.CreateForm(TfrmPayementCanc, frmPayementCanc);
  Application.CreateForm(TfrmAddAvance, frmAddAvance);
  Application.CreateForm(TfrmRechCltAvance, frmRechCltAvance);
  Application.CreateForm(TfrmListeAvance, frmListeAvance);
  Application.CreateForm(TfrmSaisiDepense, frmSaisiDepense);
  Application.CreateForm(TfrmListeDepense, frmListeDepense);
  Application.CreateForm(TfrmEncaissement, frmEncaissement);
  Application.CreateForm(TfrmListeEncaissement, frmListeEncaissement);
  Application.CreateForm(TfrmClotureDay, frmClotureDay);
  Application.CreateForm(TfrmEtatJournal, frmEtatJournal);
  Application.CreateForm(Tfrm_nouveau_BL, frm_nouveau_BL);
  Application.CreateForm(TfrmJournalCaisseH, frmJournalCaisseH);
  Application.CreateForm(TfrmTypeDepense, frmTypeDepense);
  Application.CreateForm(TfrmAddBank, frmAddBank);
  Application.CreateForm(TfrmListeBank, frmListeBank);
  Application.CreateForm(TfrmTransfertBkCaisse, frmTransfertBkCaisse);
  Application.CreateForm(TfrmAllInOneCaisse, frmAllInOneCaisse);
  Application.CreateForm(Tfrmbkversement, frmbkversement);
  Application.CreateForm(TfrmCreanceClient, frmCreanceClient);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
