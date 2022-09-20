program SYGMA_STOCK;

uses
  Vcl.Forms,
  UIntegrateur in 'UIntegrateur.pas' {frmIntegrateur},
  UNouvel_article in 'UNouvel_article.pas' {frmadd_article},
  UDM in 'UDM.pas' {DM: TDataModule},
  UAdd_Type_article in 'UAdd_Type_article.pas' {frmAdd_Type_article},
  records in 'records.pas',
  UMagasin in 'UMagasin.pas' {frmAdd_magasin},
  UEntree_en_magasin in 'UEntree_en_magasin.pas' {frmEntree_magasin},
  URech_Article_entree in 'URech_Article_entree.pas' {frmrech_article_entree},
  USortieDivers in 'USortieDivers.pas' {frmSortieDivers},
  UConnexion in 'UConnexion.pas' {frmconnexion},
  UTransfertInterMagasin in 'UTransfertInterMagasin.pas' {frmTransfetInterMagasin},
  UListeEntree in 'UListeEntree.pas' {frmListeEntree},
  UEntreeCanc in 'UEntreeCanc.pas' {frmEntreeCanc},
  UListeSortie in 'UListeSortie.pas' {frmListeSortie},
  UFiche_stock in 'UFiche_stock.pas' {frmFiche_stock},
  UMagasin_liste in 'UMagasin_liste.pas' {frmMagasin_liste},
  UMouvStockByArticle in 'UMouvStockByArticle.pas' {frmMouvStockByArticle},
  UEntreeCancListe in 'UEntreeCancListe.pas' {frmEntreeCancListe},
  UListe_article in 'UListe_article.pas' {frmListe_article},
  UClotureDay in 'UClotureDay.pas' {frmClotureDay},
  UFicheEntree in 'UFicheEntree.pas' {frmFicheEntree},
  URechClt in 'URechClt.pas' {frmRechClt},
  UFicheSortie in 'UFicheSortie.pas' {frmFicheSortie},
  UFicheRecap_es in 'UFicheRecap_es.pas' {frmFicheRecap_es},
  UListeFcheEntree in 'UListeFcheEntree.pas' {frmListeFcheEntree},
  UListeFcheSortie in 'UListeFcheSortie.pas' {frmListeFcheSortie},
  URapprochementFicheEs in 'URapprochementFicheEs.pas' {frmRapprochementFicheEs},
  UCreer_BL in 'UCreer_BL.pas' {frm_nouveau_BL},
  URechFacture_BL in 'URechFacture_BL.pas' {frmRechFActureBL},
  UQteLivre in 'UQteLivre.pas' {frmQteLivre},
  UL_BL_par_date in 'UL_BL_par_date.pas' {frmL_BL_par_date},
  UBon_Commande in 'UBon_Commande.pas' {frmbonCommande},
  URechVehBc in 'URechVehBc.pas' {frmRechVehBc},
  URechArt_bc in 'URechArt_bc.pas' {frmRechArt_bc},
  UListeBonCommande in 'UListeBonCommande.pas' {frmListeBonCommande},
  URappelBl in 'URappelBl.pas' {frmRappelBL},
  URechBLRappel in 'URechBLRappel.pas' {frmRechBLRappel},
  UQteLivre2 in 'UQteLivre2.pas' {frmQteLivre2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmconnexion, frmconnexion);
  Application.CreateForm(TfrmIntegrateur, frmIntegrateur);
  Application.CreateForm(Tfrmadd_article, frmadd_article);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmAdd_Type_article, frmAdd_Type_article);
  Application.CreateForm(TfrmAdd_magasin, frmAdd_magasin);
  Application.CreateForm(TfrmEntree_magasin, frmEntree_magasin);
  Application.CreateForm(Tfrmrech_article_entree, frmrech_article_entree);
  Application.CreateForm(TfrmSortieDivers, frmSortieDivers);
  Application.CreateForm(TfrmTransfetInterMagasin, frmTransfetInterMagasin);
  Application.CreateForm(TfrmListeEntree, frmListeEntree);
  Application.CreateForm(TfrmEntreeCanc, frmEntreeCanc);
  Application.CreateForm(TfrmListeSortie, frmListeSortie);
  Application.CreateForm(TfrmFiche_stock, frmFiche_stock);
  Application.CreateForm(TfrmMagasin_liste, frmMagasin_liste);
  Application.CreateForm(TfrmMouvStockByArticle, frmMouvStockByArticle);
  Application.CreateForm(TfrmEntreeCancListe, frmEntreeCancListe);
  Application.CreateForm(TfrmListe_article, frmListe_article);
  Application.CreateForm(TfrmClotureDay, frmClotureDay);
  Application.CreateForm(TfrmFicheEntree, frmFicheEntree);
  Application.CreateForm(TfrmRechClt, frmRechClt);
  Application.CreateForm(TfrmFicheSortie, frmFicheSortie);
  Application.CreateForm(TfrmFicheRecap_es, frmFicheRecap_es);
  Application.CreateForm(TfrmListeFcheEntree, frmListeFcheEntree);
  Application.CreateForm(TfrmListeFcheSortie, frmListeFcheSortie);
  Application.CreateForm(TfrmRapprochementFicheEs, frmRapprochementFicheEs);
  Application.CreateForm(Tfrm_nouveau_BL, frm_nouveau_BL);
  Application.CreateForm(TfrmRechFActureBL, frmRechFActureBL);
  Application.CreateForm(TfrmQteLivre, frmQteLivre);
  Application.CreateForm(TfrmL_BL_par_date, frmL_BL_par_date);
  Application.CreateForm(TfrmbonCommande, frmbonCommande);
  Application.CreateForm(TfrmRechVehBc, frmRechVehBc);
  Application.CreateForm(TfrmRechArt_bc, frmRechArt_bc);
  Application.CreateForm(TfrmListeBonCommande, frmListeBonCommande);
  Application.CreateForm(TfrmRappelBL, frmRappelBL);
  Application.CreateForm(TfrmRechBLRappel, frmRechBLRappel);
  Application.CreateForm(TfrmQteLivre2, frmQteLivre2);
  Application.Run;
end.
