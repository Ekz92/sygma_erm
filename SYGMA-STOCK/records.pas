unit records;

interface
type

TficheEs_recap = record
	Nid_fes ,
	Nnum_fes : integer;
	Sdate_fes ,
	Scode_clt ,
	Snom_clt ,
	Smatricule_veh ,
	Smarque_veh ,
	SB3A_Iv ,
	SB3A_Ip ,
	SB3A_If ,
	SB3_Iv  ,
	SB3_Ip  ,
	SB3_If  ,
	SB6_Iv ,
	SB6_Ip ,
	SB6_If ,
	SB6R_Iv ,
	SB6R_Ip ,
	SB6R_If ,
	SB12_Iv ,
	SB12_Ip ,
	SB12_If ,
	SB50_Iv ,
	SB50_Ip ,
	SB50_If ,
	SB25_Iv ,
	SB25_Ip ,
	SB25_If ,
	SB6E_Iv ,
	SB6E_Ip ,
	SB6E_If ,
	SB12E_Iv ,
	SB12E_Ip ,
	SB12E_If ,
	SB3A_Ov ,
	SB3A_Op ,
	SB3A_Of ,
	SB3_Ov  ,
	SB3_Op  ,
	SB3_Of  ,
	SB6_Ov ,
	SB6_Op ,
	SB6_Of ,
	SB6R_Ov ,
	SB6R_Op ,
	SB6R_Of ,
	SB12_Ov ,
	SB12_Op ,
	SB12_Of ,
	SB50_Ov ,
	SB50_Op ,
	SB50_Of ,
	SB25_Ov ,
	SB25_Op ,
	SB25_Of ,
	SB6E_Ov ,
	SB6E_Op ,
	SB6E_Of ,
	SB12E_Ov ,
	SB12E_Op ,
	SB12E_Of : string;
end;
TficheEs_recapArray = array of TficheEs_recap;

TFiche_es = record
	Nid_fes ,
	Nnum_fes :integer;
	Sdate_fes ,
	Scode_clt ,
	Snom_clt ,
	Smatricule_veh ,
	Scode_art ,
	Sdesignation_art :string;
	Nqte_vide ,
	Nqte_fuite ,
	Nqte_pleine:integer;
  RkgArt ,
  RkgFuite,
  RkgPleine : real;
	Ntype_fes : integer;
	Susager :string;
	Nstatut_canc :integer;
end;
TFiche_esArray = array of TFiche_es;

TFicheEsTotal = record
	Nid_ft ,
	Nnum_ft : integer;
	Sdate_ft ,
	Scode_clt ,
	Snom_clt ,
	Smatricule_veh ,
	Smarque_veh : string;
	SB3A_I ,
	SB3_I ,
	SB6_I ,
	SB6R_I ,
	SB12_I ,
	SB25_I ,
	SB50_I ,
	SB6E_I ,
	SB12E_I ,
	SB14_I ,
	SB20_I ,
	SB35_I ,

	SB3A_S ,
	SB3_S ,
	SB6_S ,
	SB6R_S ,
	SB12_S ,
	SB25_S ,
	SB50_S ,
	SB6E_S ,
	SB12E_S ,
	SB14_S ,
	SB20_S ,
	SB35_S : string;

	Ntype_ft : integer;
	Susager :string;
	Nstatut_canc : integer;
end;
TFicheEsTotalArray = array of TFicheEsTotal;

TCaisse = record
  Nid_caisse :integer;
  Scompte,
  Snom_caisse :string;
  RSolde : Real;
end;
TCaisseArray = array of TCaisse;

TClient = record
  NidClt : integer;
  SCodeClt,
  SnomClt,
  SadresseClt,
  StelClt,
  Smail,
  ScommentClt,
  SZone,
  STarif : string;
end;
TClientArray = Array of TClient;

TVehicule = record
  SMarque ,
  SNum_mat : string;
  NCompteur ,
  NPTAC : integer;
  SDate_sce :string;
  NDispo_parc : integer;
end;
TVehiculeArray = array of TVehicule;


TCatalogueCaisse = record
  Nid_cat : integer;
  Sdate_cat,
  Scompte : string;
  RSolde : Real;
end;
TTCatalogueCaisseArray = array of TCatalogueCaisse;

TCatalogueStock = record
  Nid_cs : integer;
	Sdate_cs : String;
	Scode_art :string;
	Nqte_vide ,
	Nqte_mag ,
	Nqte_totale : integer;
end;
TCatalogueStockArray = array of TCatalogueStock;


TEntreeCanc = record
  Snum_piece,
  Scode_art,
  Smotif : string;
  Nqte : integer;
  Sdate_canc,
  Suser_canc : string;
end;
TEntreeCancArray = array of TEntreeCanc;

TDateSys = record
  Nid_cd : integer;
  Sdate_cd : string;
end;

TMagasin =record
  Nid_mag : integer;
  SCode_mag,
  Sdesignation_mag : string;
end;
TMagasinArray = Array of TMagasin;

TArticle = record
  Nid_art : integer;
  Scode_art,
  Sdesignation_art,
  Salias_art,
  Salias_ret,
  Stype_art : String;
  Rkilo : real;
  Scode_mag : string;
end;
TarticleArray = array of TArticle;

TStock = record
  Nid_stock :integer;
  Scode_art,
  Scode_mag : String ;
  NQte_vide,
  NQte_mag ,
  Nqte_total : Integer;
  Rcoutachat : real;
end;
TStockArray = Array of TStock;

TEntree = record
  Nid_entree : integer;
  Scode_art_src,
  SCode_art,
  Scode_mag :String    ;
  NQte_entree ,
  NType_entree : integer;
  SUsager,
  Ddate_entree ,
  SPiece: String;
  Nstatut_canc : integer;
end;
TEntreeArray = Array of TEntree;

TMouvStock = record
  NidMouvStock :integer;
  Ddate_mouv,
  Scode_art,
  Scode_mag :string;
  Nqte_entree,
  Nqte_sortie : integer;
end;
TMouvStockArray = Array of TMouvStock;

TSortie = record
  Nid_sortie : integer;
  Scode_art_src,
  SCode_art,
  Scode_mag :String    ;
  NQte_sortie,
  NType_Sortie : integer;
  SUsager,
  Ddate_sortie : String;
  SPiece: String;
  Nstatut_canc : integer;
end;
TSortieArray = Array of TSortie;


implementation



end.