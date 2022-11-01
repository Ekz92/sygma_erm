unit records;

interface

type

TLivreur = record
  Nid_liv : integer ;
  SCode_liv ,
	Snom_liv ,
	Stel_liv ,
	Sadresse_liv ,
	Smail_liv : string;
end;
TLivreurArray = array of TLivreur;

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

TPointVente = record
  Nid_pv : integer;
  Snom_pint,
  Snom_zone,
  Scode_clt,
  Sadresse : string
end;
TPointVenteArray =Array of TPointVente;

TDateSys = record
  Nid_cd : integer;
  Sdate_cd : string;
end;

TCaisse = record
  Nid_caisse :integer;
  Scompte,
  Snom_caisse :string;
  RSolde : Real;
end;
TCaisseArray = array of TCaisse;

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


TTarif=record
  Nid_tarif : integer;
  SCode_tarif,
  SDesignation_tarif : string;
end;
TTarifArray = Array of TTarif;

TZone = record
  Nid_zone :integer;
  Snom_zone  : String;
  Rprix_zone : Real;
  SComment : String;
end;
TZoneArray = Array of TZone;


TCompteClient = record
  Nid_cc :integer;
  Scode_clt ,
  SNom_clt,
  SNum_cc : String;
  RSolde : Real;
end;
TCompteClientArray = array of TCompteClient;



implementation

end.
