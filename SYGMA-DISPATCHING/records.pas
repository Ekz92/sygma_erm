unit records;

interface

type
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

TMaxCommandeCam =record
  NnumMax : Integer;
end;

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


TRetourBouteille = record
  Nid_rb : integer;
	Slot ,
	Scamion ,
	Schauf ,
	Sdate_charg ,
	Sdate_ret ,
	ScodeArt ,
	SdesignationArt : string;
	Nqte_ch ,
	Nqte_ret ,
  Nqte_eq :integer;
	Susager :string;
end;
TRetourBouteilleArray = array of TRetourBouteille;

TChauffeur = record
  Nnum_mat_chauf : integer;
  Snom_chauf,
  Sprenom_chauf,
  Stel_chauf,
  Smail_chauf,
  Sadresse_chauf: string;
end;
TChauffeurArray = array of TChauffeur;


TMaxVteChargVeh = record
  NnumMax : integer;
end;

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

TVteChargVehd = record
  NnumCharg : integer;
  ScodeArt,
  SdesignationArt : string;
  Nqte : integer;
  Rkilo,
  RTkilo :real;
end;
TVteChargVehdArray = Array of TVteChargVehd;

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
	Spi�ce ,
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


TPointVente = record
  Nid_pv : integer;
  Snom_pint,
  Snom_zone,
  Scode_clt,
  Sadresse : string
end;
TPointVenteArray =Array of TPointVente;

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


TChargement = record
  Nid_Chargemet :integer;
  Snum_chargement,
  Snum_immat_veh :string   ;
  NTotal_bouteille : integer ;
  Ntotal_kilo ,
  Rprix_livraison:real;
  Ddate_chargement ,
  SUsager           : string;
  Nstatut_chargement,
  Nstatut_controle : integer;
end;
TChargementArray = array of TChargement;

TMaxLettrage = record
  numLettrage : integer;
end;

TLivreur = record
  Nid_liv : integer ;
  SCode_liv ,
	Snom_liv ,
	Stel_liv ,
	Sadresse_liv ,
	Smail_liv : string;
end;
TLivreurArray = array of TLivreur;



implementation

end.
