unit records;

interface
type
TEtatJournal = record
	Nid_ej : integer ;
  Sdate_ej,
	Snum_ope ,
	Snum_piece ,
	Slibelle ,
	Sdebit ,
	Scredit ,
  Ssens,
  Susager: string;
end;
TEtatJournalArray = array of TEtatJournal;

TDette_fourn = record
	Nid_detf : integer;
	Sdate_detf ,
	Scode_fourn ,
	Stype_detf ,
	Slibelle_detf ,
	Rmontant  ,
	Sstatut ,
	Suser_val : string;
	Ncanc : integer;
end;
TDette_fournArray = array of TDette_fournArray;

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


TDateSys = record
  Nid_cd : integer;
  Sdate_cd : string;
end;

TCatalogueCaisse = record
  Nid_cat : integer;
  Sdate_cat,
  Scompte : string;
  RSolde : Real;
end;
TTCatalogueCaisseArray = array of TCatalogueCaisse;

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

TCatalogueStock = record
  Nid_cs : integer;
	Sdate_cs : String;
	Scode_art :string;
	Nqte_vide ,
	Nqte_mag ,
	Nqte_totale : integer;
end;
TCatalogueStockArray = array of TCatalogueStock;


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

TCaisse = record
  Nid_caisse :integer;
  Scompte,
  Snom_caisse :string;
  RSolde : Real;
end;
TCaisseArray = array of TCaisse;

TTypeEncaissement = record
  Nid_tenc :integer;
  Scode_tenc,
  Slibelle_tenc : string;
end;
TTypeEncaissementArray = array of TTypeEncaissement;

TBank = record
  NId_bk : integer;
  Scode_bk,
  SNom_bk  ,
  SCompte_bk: string;
  RSolde : real;
end;
TBankArray = Array of TBank;

TUser = record
  Nid_user : integer;
  Snom_user,
  Sprenom_user,
  Susager,
  Spwd,
  Sprofil,
  Snum_caisse : string;
  NStatut : integer;
end;
TUserArray = Array of TUser;

TMaxOpeCaisse = record
  NMaxOpe : integer;
end;

TCompteClient = record
  Nid_cc :integer;
  Scode_clt ,
  SNom_clt,
  SNum_cc : String;
  RSolde : Real;
end;
TCompteClientArray = array of TCompteClient;


TPayement_caisse=record
    NidPaye : integer ;
    Sdate_paye ,
    Snum_fact ,
    Scode_clt ,
    Snom_clt ,
    Scode_ope,
    Snom_caisse ,
    Scompte_caisse : string;
    Rmontant_paye:Real ;
    NStatut_canc : integer;
end;
TPayement_caisseArray = array of TPayement_caisse;

THistoriqueCaisse = record
    Nid_hisc : integer;
    Ddate_hisc ,
    Snum_piece ,
    Scode_cli ,
    Snom_cli ,
    STypEnc,
    SCaisse ,
    Sope ,
    Ssens :String;
    Rmontant :real;
    Susager : string;
    Nstatut_canc : integer;
end;
THistoriqueCaisseArray = array of THistoriqueCaisse;

TReleve_client = record
  NId_rc : integer;
  SCode_client,
  Snom_client,
  SDate_rs,
  SOperation,
  SCaisse,
  SPiece :string;
  SAvance_credit,
  SAvance_debit,
  SFactRet_debit,
  SFactRet_credit,
  SLibelle : string;
end;
TReleve_clientArray = array of TReleve_client;


TAvanceDetail = record
    Nid_ccd :integer;
    Sdate_ccd : string;
    Nope :integer;
    Scode_clt ,
    Snom_clt ,
    Scompte_clt :string;
    Rmontant : real;
    Scode_user : string;
    Nstatut_canc : integer;
end;
TAvanceDetailArray = Array of TAvanceDetail;

TMaxIdAvance = record
  NMaxId : integer;
end;

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

TSoldeHistorique = record
  Rsolde : Real;
end;

TPayementCanc =record
    Spiece ,
    Sope ,
    ScodeClt:String ;
    Rmontant : REAL;
    Smotif ,
    Sdate_canc ,
    Suser_canc : string;
end;
TPayementCancArray = Array of TPayementCanc;

TEncaissement = record
  Nid_enc : integer;
  Sope,
  SdateEnc,
  SNumCaisse,
  SPiece,
  SLibelle : string;
  RMontant : real;
  SUsager : string;
  Nstatut_canc :integer ;
end;
TEncaissementArray = array of TEncaissement;


TDepense = record
  Nid_dep : integer;
  Sope,
  SdateDep,
  SNumCaisse,
  STypDep,
  SPiece,
  SLibelle : string;
  RMontant : real;
  SUsager : string;
  Nstatut_canc :integer ;
end;
TDepenseArray = array of TDepense;

TTypeDepense = record
  Nid_td : integer;
  Scodetdep,
  Sdesigntdep : string;
end;
TTypeDepenseArray = array of TTypeDepense ;


implementation

end.
