unit records;

interface
type

TDiagramDayBC = record
	Nid_dbc  : integer ;
	Sdate_dbc : String;
	Rtkg : real;
end;
TDiagramDayBC_Array = Array of TDiagramDayBC;

TDiagramDayFact = record
	Nid_dbf : integer ;
	Sdate_dbf : string;
	Rmontant : real;
	Slibelle : string;
end;
TDiagramDayFact_Array = Array of TDiagramDayFact;

TMaxNumRappel = record
  Nnumrappel : integer;
end;

TLivraisonCamion = record
  Nid_cc : integer;
	Sdate_charg,
  Slettrage :string;
	Nnum_charg :integer;
  Scode_liv,
  Snom_liv,
	Scode_clt ,
	Snom_clt ,
	Scamion ,
	Spi?ce ,
	SB3A ,
	SB3  ,
	SB6  ,
	SB6R ,
	SB12 ,
	SB50 ,
	SB25 ,
	SB6E ,
	SB12E ,
	SRB3A ,
	SRB3  ,
	SRB6  ,
	SRB6R ,
	SRB12 ,
	SRB50 ,
	SRB25 ,
	SRB6E ,
	SRB12E,
  SType :string;
	Rmontant,
  Rkilo_t :real;
	Szone_liv :string;
	Rprix_zone ,
	Rprix_liv : real  ;
	Susager : string;
end;
TLivraisonCamionArray = array of TLivraisonCamion;


TvteChargVeh = record
  Slettrage : string;
  NnumCharg ,
  NSrc_charg: integer;
  ScodClient,
  SnomClient,
  SPiece,
  SVehicule : string;
  NnumMatChauf : integer;
  SnomChauf   ,
  SdateCharg : string;
  NTboutteille : integer;
  RTKilo ,
  RMontant : Real;
  SUsager : string;
  NStatut_canc,
  NStatut_com : integer;
end;
TvteChargVehArray = Array of TvteChargVeh;

TVteChargVehd = record
  NnumCharg : integer;
  ScodeArt,
  SdesignationArt : string;
  Nqte : integer;
  Rkilo,
  RTkilo :real;
end;
TVteChargVehdArray = Array of TVteChargVehd;

TMaxVteChargVeh = record
  NnumMax : integer;
end;

TStockCamion = record
  Nid_stock :integer;
  Svehicule,
  Scode_art,
  SDesignation_art : String ;
  NQte_vide,
  NQte_mag ,
  Nqte_total : Integer;
end;
TStockCamionArray = Array of TStockCamion;

TStockGene = record
  Nid_sg :integer;
  Scode_art,
  SDesignation_art : String ;
  NQte_vide,
  NQte_mag ,
  Nqte_total : Integer;
end;
TStockGeneArray = Array of TStockGene;


TFacturation_detail =record
  NId_fact : integer;
  Sdate_fact,
  Snum_fact ,
  Scode_mag,
  Sdesignation_mag,
  Scode_tarif,
  Sdesignation_tarif,
  Scode_clt,
  Snom_clt,
  Scode_art,
  Sdesignation_art: string;
  Nqte_art : integer;
  RPrixU,
  RPrixT :real;
end;
TFacturation_detailArray = Array of TFacturation_detail;

TFacturation = record
  NId_fact: integer;
  Sdate_fact ,
  SNum_fact,
  Scode_clt,
  Snom_clt : string;
  NQte_total : integer;
  Rmnt_t,
  Rmnt_p,
  Rmnt_r : real;
  Sstatut,
  Stype_fact ,
  Snum_comc ,
  Svehicule : string;
  NStatut_canc : integer;
  SUsager : String;
end;
TFacturationArray = Array of TFacturation;

TCommandeCamion = record
	Nid_comc : integer ;
	Nnum_comc :integer;
	Sdate_com : string;
	Nchargement : Integer;
	Spiece ,
	Svehicule : string;
	Rmontant,
  Rmontant_p,
  Rmontant_r : real;
  Nstatut_cmd : integer;
end;
TCommandeCamionArray = array of TCommandeCamion;

TMaxBc = record
  NnumMax : integer;
end;

TArticle = record
  Nid_art : integer;
  Scode_art,
  Sdesignation_art,
  Salias_art,
  Salias_ret,
  Stype_art : String;
  Rkilo : real;
  Scode_mag : string;
  Nordre : integer;
end;
TarticleArray = array of TArticle;


TBLDetail = record
  Nid_bl : integer;
  Snum_bl,
  SCode_clt,
  Snom_clt,
  Scode_mag,
  SDesignation_mag,
  Scode_art,
  SDesignation_art : string;
  RKilo : Real;
  NQte_art,
  NQte_liv : integer;
  RKiloTotal : real;
  NControle,
  NLivPart : integer;
end;
TBLDetailArray = Array of TBLDetail;

Tb_bl_his= record
  Nid_bhis ,
  Nnum_blhis : integer;
  Snum_bl ,
  Sdate_blhis ,
  Scode_art ,
  Sdesignation_art : string;
  Nqte_his : Integer;
end;
Tb_bl_hisArray = array of Tb_bl_his;


TBL = record
  Nid_bl : integer;
  Snum_bl : string;
  Nnum_bl_his : integer ;
  SCode_clt,
  Snom_clt,
  SpointVente,
  Scode_mag,
  SDesignation_mag : string;
  RTotKilo : real;
  Sdate_bl : String;
  NTotBlle :integer;
  RPrixLiv : real;
  SUsager :String;
  Nstatut_bl,
  NLivPart:integer;
end;
TBLArray = Array of TBL;



TImport= record
  Nnum_import : integer;
  Snom_client,
  Ddate,
  Hheure,
  Snum_bl,
  Scode_art,
  Sdesignation_art,
  Nqte : String;
end;
TImportArray = array of TImport;

TPointVente = record
  Nid_pv : integer;
  Snom_pint,
  Snom_zone,
  Scode_clt,
  Sadresse : string
end;
TPointVenteArray =Array of TPointVente;

TZone = record
  Nid_zone :integer;
  Snom_zone  : String;
  Rprix_zone : Real;
  SComment : String;
end;
TZoneArray = Array of TZone;


Tfichei_recap = record
	Nid_fes ,
	Nnum_fes ,
  Nnum_his : integer;
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
	SB14_Iv ,
	SB14_Ip ,
	SB14_If ,
  SB20_Iv ,
	SB20_Ip ,
	SB20_If ,
  SB35_Iv ,
	SB35_Ip ,
	SB35_If,
  SB6M_Iv ,
  SB6M_Ip ,
  SB6M_If ,
  SB12M_Iv,
  SB12M_Ip,
  SB12M_If,
  SB6T_Iv,
  SB6T_Ip,
  SB6T_If,
  SB12T_Iv,
  SB12T_Ip,
  SB12T_If : string;
end;
Tfichei_recapArray = array of Tfichei_recap;

Tficheo_recap = record
	Nid_fes ,
	Nnum_fes ,
  Nnum_his : integer;
	Sdate_fes ,
	Scode_clt ,
	Snom_clt ,
	Smatricule_veh ,
	Smarque_veh ,
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
	SB12E_Of,
  SB14_Ov ,
	SB14_Op ,
	SB14_Of ,
  SB20_Ov ,
	SB20_Op ,
	SB20_Of ,
  SB35_Ov ,
	SB35_Op ,
	SB35_Of,
  SB6M_Ov ,
  SB6M_Op ,
  SB6M_Of ,
  SB12M_Ov,
  SB12M_Op,
  SB12M_Of,
  SB6T_Ov,
  SB6T_Op,
  SB6T_Of,
  SB12T_Ov,
  SB12T_Op,
  SB12T_Of : string;

end;
Tficheo_recapArray = array of Tficheo_recap;

TFiche_es = record
	Nid_fes ,
	Nnum_fes ,
  Nnum_his :integer;
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
	Nnum_ft ,
  Nnum_his : integer;
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
  SB6M_I,
  SB12M_I,
  SB6T_I,
  SB12T_I,

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
	SB35_S,
  SB6M_S,
  SB12M_S,
  SB6T_S,
  SB12T_S : string;

//	Ntype_ft : integer;
//	Susager :string;
//	Nstatut_canc : integer;
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
  STarif,
  STypeclt : string;
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

TBonCom = record
  Nid_bc :integer;
  Sdate_bc,
  Sdate_val : string;
  Nnum_bc :Integer;
  Scode_four,
  Snom_four: String;
  Rmontant_bc : real;
  Susager_init ,
  Susager_val,
  SVehicule,
  SnomVehicule: string;
  Nstatut_bc : integer;
  SDest : string;
  NTBout: integer;
  RTkg : real;
end;
TBonComArray = array of TBonCom;

TMaxLettrage = record
  numLettrage : integer;
end;

TFicheEsH = record
  NidFh,
	Nnum_fh ,
  Nnum_his : integer;
	Sdate_fh ,
	Scode_clt ,
	Snom_clt ,
	Snum_veh ,
	Snom_veh,
  Scomment : string;
  NType_fs : integer;
  Susager : string;
	Nstatut_canc : integer;
end;
TFicheEsHArray  = array of TFicheEsH;

TBonCom_detail = record
  Nid_bc : integer;
  Nnum_bc :integer;
  Scode_art ,
  Sdesignation_art :string;
  Rpu : real;
  Nqte : integer;
  Rpt : real;
end;
TBonCom_detailArray = array of TBonCom_detail;


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

TJounalCaisse = record
	Nid_jcd : integer;
	Sdate_jcd :string;
	Rdebit ,
	Rcredit ,
	Rsolde : real
end;
TJounalCaisseArray = array of TJounalCaisse;

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
