unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.FMTBcd, Data.DB,
  Data.SqlExpr, frxClass, frxDBSet,records;

type
  TDM = class(TDataModule)
    frxDBParam: TfrxDBDataset;
    TParam: TSQLTable;
    SQLConnection1: TSQLConnection;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    function selectMagasins(Psql : String) :TMagasinArray ;
    function selectArticles(Psql : string):TarticleArray;
    function selectArticleByCode(var code_art : string):TArticle ;
    function selectMagasinBynom(var nom_mag : string) : TMagasin;
    function selectStockByArticle(var code_art : String) :TStock;
    function selectMouvStock(var code_art : string ; date_mouv : string; code_mag :string):TMouvStock;
    function selectMagasinByCode(var code_mag : string) :TMagasin;
    function selectStockByArticleMagasin(var code_art, code_mag:string) : TStock;
    function selectArticleByNom(var nom_art : string):TArticle ;
    function SelectEntreeCanc(Psql:string):TEntreeCancArray;
    function SelectEntree(Psql : string):TEntree;
    function selectCatDate():TDateSys;
    function SelectCaisses(Psql : string):TCaisseArray;
    function SelectCaisse(Psql :string):TCaisse;
    function selectStock(Psql : String) :TStockArray;
    function selectAllStockCamion(Psql : String) :TStockCamionArray;
    function selectCatalogueStock(Psql:string) : TCatalogueStock;
    function selectClients(Psql : string) : TClientArray;
    function SelectVehicule(Psql:string):TVehiculeArray;
    function selectFichei_recap(Psql : string):Tfichei_recap;
    function selectFicheo_recap(Psql : string):Tficheo_recap;
    function selectMaxNumrappel():TMaxNumRappel;
    function selectCodeclt(var vNomClt : string) : TClient;
    function selectPoints(Psql : string) : TPointVenteArray;
    function SelectFacturesDetail(Psql:string):TFacturation_detailArray;
    function selectZoneByPoint(var nom_point :string): TPointVente;
    function selectZonesByNom_zone(var nom_zone :String) : TZone;
    function SelectFactures(Psql:string):TFacturationArray;
    function SelectBl(Psql : string):TBLArray;
    function SelectCommandeCamion(Psql :string):TCommandeCamionArray;
    function SelectMaxBc():TMaxBc;
    function selectBonCommande(Psql : string):TBonComArray;
    function selectBonCommandeOnce(Psql : string):TBonCom;
    function selectBonCommandeDetail(Psql : string):TBonCom_detailArray;
    function SelectBlDetails(Psql : string):TBLDetailArray;
    function SelectBlDetail(Psql : string):TBLDetail;
    function SelectMaxLettrage():TMaxLettrage;
    function SelectFicheEsH(Psql : string):TFicheEsHArray;
    function SelectFicheEs(Psql : string):TFiche_esArray;
    function selectStockCamion(Psql : string):TStockCamion;
    function selectStockOnceStockGene(Psql : string):TStockGene;
    function SelectMaxCharg():TMaxVteChargVeh;
    function selectDiagramDay(Psql : string):TDiagramDayBC;
    function selectDiagramDayFact(Psql : string):TDiagramDayFact;
    function selectCumulBc(Psql :string):TDiagramDayBC;
    function selectJournalCaisse(Psql:string):TJounalCaisse;
    function SelectUsers(Psql : string):TUserArray;

    function InsertCatalogueStock(cstock : TCatalogueStock):boolean;
    function InsertCatalogueCaisse(cat:TCatalogueCaisse ): Boolean;
    function InsertEntreeCanc(entree : TEntreeCanc):Boolean;
    function insertMouvStock(var mouv : TMouvStock) : Boolean;
    function InitStock(init_stock : TStock):Boolean;
    function InsertArticle(Article : TArticle):Boolean;
    function InsertMagasin(mag : TMagasin):Boolean;
    function InsertEntree( var entree : TEntree):Boolean;
    function InsertSortie( var sortie : TSortie):boolean;
    function InsertStock(var stock : TStock):boolean;
    function InsertFiche_es(var Fiche_es : TFiche_es):boolean;
    function InsertFicheiRecap(FicheiRec : Tfichei_recap):Boolean;
    function InsertFicheoRecap(FicheoRec : Tficheo_recap):Boolean;
    function InsertFicheEsTotal(FicheEsTotal : TFicheEsTotal):Boolean;
    function InsertBLs ( var bls : TBLDetail):Boolean;
    function InsertBL(var bl : TBL):Boolean;
    function InsertblHis(blhis : Tb_bl_his):Boolean;
    function InsertBonCom(boncom : TBonCom):Boolean;
    function InsertBonComDetail(boncomd : TBonCom_detail):Boolean;
    function InsertFicheEsH(FicheEsH : TFicheEsH):Boolean;
    function InsertStockCamion(var stockCam : TStockCamion):Boolean;
    function InsertStockGeneral(var stockGene : TStockGene):Boolean;
    function InsertVteChargVeh(vteChargVeh : TvteChargVeh):Boolean;
    function InsertVteChargVehd(VteChargVehd:TVteChargVehd):Boolean;
    function InsertDiagramDay(Psql:string):Boolean;

    procedure UpdatePwd(Psql : string);
    procedure UpdateTable(var Psql :string);
    procedure Update_moovStock(var mouv : TMouvStock);
    Procedure UpdateStock(var stock : TStock);

    procedure DeleteFromTable(Psql : string);

    function CheckUser(Psql:string):Boolean;

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UFicheRecap_es, UListeBonCommande;



{$R *.dfm}
procedure TDM.UpdatePwd(Psql : string);
var
query : TSQLQuery;
begin
  Query := TSQLQuery.Create(self);
  Query.SQLConnection := DM.SQLConnection1;

  with Query,sql do
    begin
      Add(Psql);
    end;
    try
      Query.ExecSQL();
    finally
      Query.Free;
    end;
end;


function TDM.CheckUser(Psql:string):Boolean;
var
  Query : TSQLQuery;
  sql : string;

begin
  Query := TSQLQuery.Create(self);
  Query.SQLConnection := DM.SQLConnection1;

  sql:='select * from tb_user '+Psql;

  try
    Query.SQL.Add(sql);
    Query.Open;

    if Query.IsEmpty then
      Result:= False
    else
      Result:=True;
  finally
    Query.Free;
  end;

end;



function TDM.InsertDiagramDay(Psql:string):Boolean;
var
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

    try
      query.SQL.Add(Psql);
//      query.SQL.SaveToFile('g:\SQLConnection.txt');
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.InsertVteChargVehd(VteChargVehd:TVteChargVehd):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with VteChargVehd do
    begin
      sql := 'Insert into tb_vte_chargvehd value(null,'
              +IntToStr(NnumCharg) +','
              +ScodeArt+','
              +SdesignationArt+','
              +IntToStr(Nqte) +','
              +FloatToStr(RKilo)+','
              +FloatToStr(RTKilo)
              +');'       ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.InsertVteChargVeh(vteChargVeh : TvteChargVeh):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with vteChargVeh do
    begin
      sql := 'Insert into tb_vte_chargveh value(null,'
              +Slettrage+','
              +IntToStr(NnumCharg) +','
              +IntToStr(NSrc_charg)+','
              +ScodClient+','
              +SnomClient+','
              +SPiece+','
              +SVehicule+','
              +IntToStr(NnumMatChauf) +','
              +SnomChauf+','
              +QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(SdateCharg)))+','
              +IntToStr(NTboutteille) +','
              +FloatToStr(RTKilo)  +','
              +FloatToStr(RMontant)+','
              +QuotedStr(SUsager)+','
              +IntToStr(NStatut_canc)+','
              +IntToStr(NStatut_com)
              +');'       ;
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\tb_vte_chargveh.txt');
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;
function TDM.InsertStockGeneral(var stockGene : TStockGene):Boolean;
  var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with stockGene do
    begin
      sql := 'Insert into tb_stock_gene values(null,'
                +QuotedStr(SCode_art)+','
                +QuotedStr(SDesignation_art)+','
                +IntToStr(NQte_vide)+','
                +IntToStr(NQte_mag) + ','
                +IntToStr(Nqte_total)
                +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.InsertStockCamion(var stockCam : TStockCamion):Boolean;
  var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with stockCam do
    begin
      sql := 'Insert into tb_stock_camion values(null,'
                +QuotedStr(Svehicule)+','
                +QuotedStr(SCode_art)+','
                +QuotedStr(SDesignation_art)+','
                +IntToStr(NQte_vide)+','
                +IntToStr(NQte_mag) + ','
                +IntToStr(Nqte_total)
                +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;


function TDM.SelectMaxCharg():TMaxVteChargVeh;
var
  sql : string;
  query : TSQLQuery;
  MaxVteChargVeh : TMaxVteChargVeh;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select max(numCharg) as numCharg from tb_vte_chargveh';

  try
    query.SQL.Add(sql);
    query.Open;
    MaxVteChargVeh.NnumMax := query.FieldByName('numCharg').AsInteger;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
  Result :=MaxVteChargVeh;
end;
function TDM.selectCumulBc(Psql :string):TDiagramDayBC;
var
  sql : string;
  query : TSQLQuery;
  DiagramDay : TDiagramDayBC;
begin
  sql := 'Select date_val, sum(tkg) as Ttkg from tb_boncom '+Psql;

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\tb_Select_camion.txt');
    query.Open;

    with query, DiagramDay do
      begin
//        Nid_dbc := FieldByName('id_dbc').AsInteger;
        Sdate_dbc := FieldByName('date_val').AsString;
        Rtkg := FieldByName('Ttkg').AsFloat;
      end;
      Result := DiagramDay;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;
function TDM.selectDiagramDayFact(Psql : string):TDiagramDayFact;
var
  sql : string;
  query : TSQLQuery;
  DiagramDayFact : TDiagramDayFact;
begin
  sql := 'Select * from tb_day_diagram_facture '+Psql;

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\tb_Select_camion.txt');
    query.Open;

    with query, DiagramDayFact do
      begin
        Nid_dbf := FieldByName('id_dbf').AsInteger;
        Sdate_dbf := FieldByName('date_dbf').AsString;
        Rmontant := FieldByName('tmontant').AsFloat;
        SLibelle := FieldByName('libelle').AsString;
      end;
      Result := DiagramDayFact;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;


function TDM.selectDiagramDay(Psql : string):TDiagramDayBC;
var
  sql : string;
  query : TSQLQuery;
  DiagramDay : TDiagramDayBC;
begin
  sql := 'Select * from tb_day_diagram_bc '+Psql;

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\tb_Select_camion.txt');
    query.Open;

    with query, DiagramDay do
      begin
        Nid_dbc := FieldByName('id_dbc').AsInteger;
        Sdate_dbc := FieldByName('date_dbc').AsString;
        Rtkg := FieldByName('tkg').AsFloat;
      end;
      Result := DiagramDay;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;
function TDM.selectStockOnceStockGene(Psql : string):TStockGene;
var
  sql : string;
  query : TSQLQuery;
  stockGene : TStockGene;
begin
  sql := 'Select * from tb_stock_gene '+Psql;

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\tb_Select_camion.txt');
    query.Open;

    with query, stockGene do
      begin
        Nid_sg := FieldByName('id_sg').AsInteger;
        Scode_art := FieldByName('code_art').AsString;
        SDesignation_art := FieldByName('designation_art').AsString;
        NQte_vide := FieldByName('qte_vide').AsInteger;
        NQte_mag := FieldByName('qte_mag').AsInteger;
        Nqte_total := FieldByName('qte_totale').AsInteger;
      end;
      Result := stockGene;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

function TDM.selectStockCamion(Psql : string):TStockCamion;
var
  sql : string;
  query : TSQLQuery;
  stockCam : TStockCamion;
begin
  sql := 'Select * from tb_stock_camion '+Psql;

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\tb_Select_camion.txt');
    query.Open;

    with query, stockCam do
      begin
        Nid_stock := FieldByName('id_sc').AsInteger;
        Svehicule := FieldByName('vehicule').AsString;
        Scode_art := FieldByName('code_art').AsString;
        SDesignation_art := FieldByName('designation_art').AsString;
        NQte_vide := FieldByName('qte_vide').AsInteger;
        NQte_mag := FieldByName('qte_mag').AsInteger;
        Nqte_total := FieldByName('qte_total').AsInteger;
      end;
      Result := stockCam;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;


function TDM.SelectFicheEs(Psql : string):TFiche_esArray;
var
  query : TSQLQuery;
  sql : string;
  Fh :TFiche_es;
  Fhs :TFiche_esArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_fiche_es '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
    //query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Fhs,i+1);
            with Fh do
              begin
                Nid_fes:=FieldByName('id_fes').AsInteger;
                Nnum_fes:=FieldByName('num_fes').AsInteger;
                Nnum_his:=FieldByName('num_his').AsInteger;
                Sdate_fes:=FieldByName('date_fes').AsString;
                SCode_clt:=FieldByName('code_clt').AsString;
                Snom_clt:=FieldByName('nom_clt').AsString;
                Smatricule_veh:= FieldByName('matricule_veh').AsString;
                Scode_art:=FieldByName('code_art').AsString;
                Sdesignation_art:=FieldByName('designation_art').AsString;
                Nqte_vide:=FieldByName('qte_vide').AsInteger;
                Nqte_fuite:=FieldByName('qte_fuite').AsInteger;
                Nqte_pleine:=FieldByName('qte_pleine').AsInteger;
                RkgArt:=FieldByName('kgArt').AsFloat;
                RkgFuite:=FieldByName('kgfuite').AsFloat;
                RkgPleine:=FieldByName('kgpleine').AsFloat;
                Ntype_fes:=FieldByName('type_fes').AsInteger;
                Susager:=FieldByName('usager').AsString;
                Nstatut_canc:=FieldByName('statut_canc').AsInteger;
              end;
              Fhs[i]:=Fh;
              Inc(i);
              query.Next;
          end;
          Result := Fhs;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.SelectFicheEsH(Psql : string):TFicheEsHArray;
var
  query : TSQLQuery;
  sql : string;
  Fh :TFicheEsH;
  Fhs :TFicheEsHArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_fiche_esh '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
    //query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Fhs,i+1);
            with Fh do
              begin
                NidFh:=FieldByName('id_fh').AsInteger;
                Nnum_fh:=FieldByName('num_fh').AsInteger;
                Nnum_his:=FieldByName('num_his').AsInteger;
                Sdate_fh:=FieldByName('date_fh').AsString;
                SCode_clt:=FieldByName('code_clt').AsString;
                Snom_clt:=FieldByName('nom_clt').AsString;
                Snum_veh:= FieldByName('num_veh').AsString;
                Snom_veh:=FieldByName('nom_veh').AsString;
                Scomment:=FieldByName('comment').AsString;
                NType_fs:=FieldByName('typeFs').AsInteger;
                Susager:=FieldByName('usager').AsString;
                Nstatut_canc:=FieldByName('statut_canc').AsInteger;
              end;
              Fhs[i]:=Fh;
              Inc(i);
              query.Next;
          end;
          Result := Fhs;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;
function TDM.InsertFicheEsH(FicheEsH : TFicheEsH):Boolean;
var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with FicheEsH do
    begin
      sql := 'Insert into tb_fiche_esH values(null,'
              +IntToStr(Nnum_fh)+','
              +IntToStr(Nnum_his)+','
              +QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(Sdate_fh))) +','
              +QuotedStr(SCode_clt)+','
              +QuotedStr(Snom_clt)+','
              +QuotedStr(Snum_veh)+','
              +QuotedStr(Snom_veh)+','
              +QuotedStr(Scomment)+','
              +IntToStr(NType_fs)+','
              +QuotedStr(SUsager)+','
              +IntToStr(Nstatut_canc)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
     // query.SQL.SaveToFile('G:\bl'+inttostr(i)+'.txt');
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.SelectMaxLettrage():TMaxLettrage;
var
  sql : string;
  query : TSQLQuery;
  MaxLettrage: TMaxLettrage;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select max(id_fh) as numFs from tb_fiche_esH';

  try
    query.SQL.Add(sql);
    query.Open;
    MaxLettrage.numLettrage := query.FieldByName('numFs').AsInteger;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
  Result :=MaxLettrage;
end;

function TDM.SelectUsers(Psql : string):TUserArray;
var
  query : TSQLQuery;
  sql : string;
  user :TUser;
  users :TUserArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_user '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\tb_facturation.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(users,i+1);
            with user do
              begin
                Nid_user:=FieldByName('id_user').AsInteger;
                Snom_user:=FieldByName('nom_user').AsString;
                Sprenom_user:=FieldByName('prenom_user').AsString;
                Susager:=FieldByName('usager').AsString;
                Spwd := FieldByName('password').AsString;
                Snum_caisse := FieldByName('num_caisse').AsString;
                Sprofil:=FieldByName('profil').AsString;
              end;
              users[i]:=user;
              Inc(i);
              query.Next;
          end;
          Result := users;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.selectJournalCaisse(Psql:string):TJounalCaisse;
var
  query : TSQLQuery;
  sql : string;
  JournCais :TJounalCaisse;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_jounalCaisse '+Psql;

  try
    query.SQL.Add(sql);
    //query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        with JournCais do
          begin
            Nid_jcd:=FieldByName('id_jcd').AsInteger;
            Sdate_jcd:=FieldByName('date_jcd').AsString;
            Rdebit:=FieldByName('debit').AsFloat;
            Rcredit:=FieldByName('credit').AsFloat;
            Rsolde:=FieldByName('solde').AsFloat;
          end;
          Result := JournCais;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.SelectBlDetail(Psql : string):TBLDetail;
var
  query : TSQLQuery;
  sql : string;
  Bld :TBLDetail;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_bl_detail '+Psql;

  try
    query.SQL.Add(sql);
    //query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        with Bld do
          begin
            Nid_bl:=FieldByName('id_bl').AsInteger;
            Snum_bl:=FieldByName('num_bl').AsString;
            SCode_clt:=FieldByName('code_client').AsString;
            Snom_clt:=FieldByName('nom_client').AsString;
            //SpointVente:=FieldByName('point_vente').AsString;
            Scode_mag:=FieldByName('code_mag').AsString;
            SDesignation_mag:= FieldByName('designation_mag').AsString;
            Scode_art:=FieldByName('code_art').AsString;
            SDesignation_art:=FieldByName('designation_art').AsString;
            RKilo:=FieldByName('Kilo_art').AsFloat;
            NQte_art:=FieldByName('qte_art').AsInteger;
            NQte_liv:=FieldByName('qte_liv').AsInteger;
            RKiloTotal:=FieldByName('kilo_total').AsFloat;
            NControle := FieldByName('controle').AsInteger;
          end;
          Result := Bld;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;


function TDM.SelectBlDetails(Psql : string):TBLDetailArray;
var
  query : TSQLQuery;
  sql : string;
  Bl :TBLDetail;
  Bls :TBLDetailArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_bl_detail '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
    //query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Bls,i+1);
            with Bl do
              begin
                Nid_bl:=FieldByName('id_bl').AsInteger;
                Snum_bl:=FieldByName('num_bl').AsString;
                SCode_clt:=FieldByName('code_client').AsString;
                Snom_clt:=FieldByName('nom_client').AsString;
                //SpointVente:=FieldByName('point_vente').AsString;
                Scode_mag:=FieldByName('code_mag').AsString;
                SDesignation_mag:= FieldByName('designation_mag').AsString;
                Scode_art:=FieldByName('code_art').AsString;
                SDesignation_art:=FieldByName('designation_art').AsString;
                RKilo:=FieldByName('Kilo_art').AsFloat;
                NQte_art:=FieldByName('qte_art').AsInteger;
                NQte_liv:=FieldByName('qte_liv').AsInteger;
                RKiloTotal:=FieldByName('kilo_total').AsFloat;
                NControle := FieldByName('controle').AsInteger;
              end;
              Bls[i]:=Bl;
              Inc(i);
              query.Next;
          end;
          Result := Bls;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.selectBonCommandeDetail(Psql : string):TBonCom_detailArray;
var
  query : TSQLQuery;
  sql : string;
  BC : TBonCom_detail;
  BCs :TBonCom_detailArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_boncom_detail '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
 //   query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(BCs,i+1);
            with BC do
              begin
                Nid_bc:=FieldByName('id_bcd').AsInteger;
                Nnum_bc:=FieldByName('num_bc').AsInteger;
                Scode_art:=FieldByName('code_art').AsString;
                Sdesignation_art:=FieldByName('designation_art').AsString;
                Rpu:=FieldByName('pu').AsFloat;
                Nqte:=FieldByName('qte').AsInteger;
                Rpt:=FieldByName('pt').AsFloat;
              end;
              BCs[i]:=BC;
              Inc(i);
              query.Next;
          end;
          Result := BCs;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.selectBonCommandeOnce(Psql : string):TBonCom;
var
  query : TSQLQuery;
  sql : string;
  BC : TBonCom;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_boncom '+Psql;

  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query, BC do
      with BC do
        begin
          Nid_bc:=FieldByName('id_bc').AsInteger;
          Sdate_bc:=FieldByName('date_bc').AsString;
          Nnum_bc:=FieldByName('num_bc').AsInteger;
          Snom_four:=FieldByName('nom_fourn').AsString;
          SVehicule:=FieldByName('Vehicule').AsString;
          Rmontant_bc:=FieldByName('montant_bc').AsFloat;
          Susager_init:=FieldByName('user_init').AsString;
          Susager_val:=FieldByName('user_validate').AsString;
          SnomVehicule:=FieldByName('nom_Vehicule').AsString;
          Nstatut_bc:=FieldByName('statut_bc').AsInteger;
        end;
    Result := BC;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;


function TDM.selectBonCommande(Psql : string):TBonComArray;
var
  query : TSQLQuery;
  sql : string;
  BC : TBonCom;
  BCs :TBonComArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_boncom '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
 //   query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(BCs,i+1);
            with BC do
              begin
                Nid_bc:=FieldByName('id_bc').AsInteger;
                Sdate_bc:=FieldByName('date_bc').AsString;
                Sdate_val:=FieldByName('date_val').AsString ;
                Nnum_bc:=FieldByName('num_bc').AsInteger;
                Snom_four:=FieldByName('nom_fourn').AsString;
                SVehicule:=FieldByName('Vehicule').AsString;
                Rmontant_bc:=FieldByName('montant_bc').AsFloat;
                Susager_init:=FieldByName('user_init').AsString;
                Susager_val:=FieldByName('user_validate').AsString;
                SnomVehicule:=FieldByName('nom_Vehicule').AsString;
                Nstatut_bc:=FieldByName('statut_bc').AsInteger;
                SDest:=FieldByName('dest').AsString;
                NTBout:=FieldByName('tbout').AsInteger;
                RTkg := FieldByName('tkg').AsFloat;
              end;
              BCs[i]:=BC;
              Inc(i);
              query.Next;
          end;
          Result := BCs;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;



function TDM.InsertBonComDetail(boncomd : TBonCom_detail):Boolean;
var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with boncomd do
    begin
      sql := 'Insert into tb_boncom_detail values(null,'
                +IntToStr(Nnum_bc)+','
                +Scode_art+','
                +Sdesignation_art+','
                +FloatToStr(Rpu) +','
                +IntToStr(Nqte) +','
                +FloatToStr(Rpt)
                +');' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.InsertBonCom(boncom : TBonCom):Boolean;
var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with boncom do
    begin
      sql := 'Insert into tb_boncom values(null,'
                +Sdate_bc+','
                +Sdate_val+','
                +IntToStr(Nnum_bc)+','
                +Scode_four+','
                +Snom_four+','
                +FloatToStr(Rmontant_bc) +','
                +Susager_init  +','
                +Susager_val+','
                +SVehicule+','
                +SnomVehicule+','
                +IntToStr(Nstatut_bc)+','
                +SDest+','
                +IntToStr(NTBout)+','
                +FloatToStr(RTkg)
                +');' ;
    end;

    try
      query.SQL.Add(sql);
   //   query.SQL.SaveToFile('g:\ff.txt');
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.SelectMaxBc():TMaxBc;
var
  sql : string;
  query : TSQLQuery;
  bc : TMaxBc;
begin
  query := TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;

  sql:='Select max(num_bc) as max_bc from tb_boncom ';

  try
    query.SQL.Add(sql);
    query.Open;

    with bc do
      begin
        NnumMax:=query.FieldByName('max_bc').AsInteger;
      end;

    Result :=bc;
  finally
    query.free;
    SQLConnection1.Close;
  end;
end;
function TDM.SelectCommandeCamion(Psql :string):TCommandeCamionArray;
var
  query : TSQLQuery;
  sql : string;
  Com : TCommandeCamion;
  Coms :TCommandeCamionArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_commande_camion '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Coms,i+1);
            with Com do
              begin
                Nid_comc :=FieldByName('id_comc').AsInteger;
                Nnum_comc:=FieldByName('num_comc').AsInteger;
                Sdate_com:=FieldByName('date_com').AsString;
                Nchargement:=FieldByName('chargement').AsInteger;
                Spiece:=FieldByName('piece').AsString;
                Svehicule:=FieldByName('vehicule').AsString;
                Rmontant:=FieldByName('montant').AsFloat;
                Rmontant_p:=FieldByName('montant_p').AsFloat;
                Rmontant_r:=FieldByName('montant_r').AsFloat;
                Nstatut_cmd :=FieldByName('statut_cmd').AsInteger;
              end;
              Coms[i]:=Com;
              Inc(i);
              query.Next;
          end;
          Result := Coms;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.InsertblHis(blhis : Tb_bl_his):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with blhis do
    begin
      sql := 'Insert into tb_bl_his values(null,'
          +IntToStr(Nnum_blhis) +','
          +QuotedStr(Snum_bl)+ ','
          +QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm', StrToDateTime(Sdate_blhis)))+','
          +QuotedStr(Scode_art)+','
          +QuotedStr(Sdesignation_art)+','
          +IntToStr(Nqte_his)+');'
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.InsertBL(var bl : TBL):Boolean;
var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with bl do
    begin
      sql := 'Insert into tb_bl values(null,'
              +QuotedStr(Snum_bl)+','
              +IntToStr(Nnum_bl_his)+','
              +QuotedStr(SCode_clt)+','
              +QuotedStr(Snom_clt)+','
              +QuotedStr(SpointVente)+','
              +QuotedStr(Scode_mag)+','
              +QuotedStr(SDesignation_mag)+','
              +FloatToStr(RTotKilo)+','
              +QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',StrToDateTime(Sdate_bl))) +','
              +IntToStr(NTotBlle)+','
              +FloatToStr(RPrixLiv)+','
              +QuotedStr(SUsager)+','
              +IntToStr(Nstatut_bl) +','
              +IntToStr(NLivPart)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
     // query.SQL.SaveToFile('G:\bl'+inttostr(i)+'.txt');
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.InsertBLs ( var bls : TBLDetail):Boolean;
var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with bls do
    begin
      sql := 'Insert into tb_bl_detail values(null,'
              +QuotedStr(Snum_bl)+','
              +QuotedStr(SCode_clt)+','
              +QuotedStr(Snom_clt)+','
              +QuotedStr(Scode_mag)+','
              +QuotedStr(SDesignation_mag)+','
              +QuotedStr(Scode_art)+','
              +QuotedStr(SDesignation_art)+','
              +FloatToStr(RKilo)+','
              +IntToStr(NQte_art)+','
              +IntToStr(NQte_liv)+','
              +FloatToStr(RKiloTotal)+','
              +inttostr(NControle) +','
              +IntToStr(NLivPart)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
       //query.SQL.SaveToFile('G:\Bls'+inttostr(i)+'.txt');
    finally
      query.Free;
      SQLConnection1.Close;
    end;

end;

function TDM.SelectBl(Psql : string):TBLArray;
var
  query : TSQLQuery;
  sql : string;
  Bl :TBL;
  Bls :TBLArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_bl '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Bls,i+1);
            with Bl do
              begin
                Nid_bl:=FieldByName('id_bl').AsInteger;
                Snum_bl:=FieldByName('num_bl').AsString;
                Nnum_bl_his:=FieldByName('numbl_his').AsInteger;
                SCode_clt:=FieldByName('code_clt').AsString;
                Snom_clt:=FieldByName('nom_clt').AsString;
                SpointVente:=FieldByName('point_vente').AsString;
                Scode_mag:=FieldByName('code_mag').AsString;
                RTotKilo:=FieldByName('total_kilo').AsFloat;
                Sdate_bl:=FieldByName('date_bl').AsString;
                NTotBlle:=FieldByName('Total_bouteille').AsInteger;
                RPrixLiv:=FieldByName('prix_livraison').AsFloat;
                SUsager:=FieldByName('Usager').AsString;
                Nstatut_bl:=FieldByName('statut_bl').AsInteger;
                NLivPart := FieldByName('livpart').AsInteger;
              end;
              Bls[i]:=Bl;
              Inc(i);
              query.Next;
          end;
          Result := Bls;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.SelectFactures(Psql:string):TFacturationArray;
var
  query : TSQLQuery;
  sql : string;
  facture :TFacturation;
  factures :TFacturationArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_facturation '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\tb_facturation.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(factures,i+1);
            with facture do
              begin
                Sdate_fact:=FieldByName('date_fact').AsString;
                SNum_fact:=FieldByName('num_fact').AsString;
                Scode_clt:=FieldByName('code_clt').AsString;
                Snom_clt:=FieldByName('nom_clt').AsString;
                NQte_total:=FieldByName('qte_total').AsInteger;
                Rmnt_t:=FieldByName('mnt_t').AsFloat;
                Rmnt_p:=FieldByName('mnt_p').AsFloat;
                Rmnt_r:=FieldByName('mnt_r').AsFloat;
                Sstatut:=FieldByName('statut').AsString;
                Stype_fact:=FieldByName('type_fact').AsString;
                Snum_comc :=FieldByName('num_comc').AsString;
                Svehicule:=FieldByName('vehicule').AsString;
                NStatut_canc:=FieldByName('statut_canc').AsInteger;
                SUsager:=FieldByName('Usager').AsString;
              end;
              factures[i]:=facture;
              Inc(i);
              query.Next;
          end;
          Result := factures;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;


function TDM.selectZonesByNom_zone(var nom_zone :String) : TZone;
var
  sql:string;
  query : TSQLQuery;
  zone : TZone;
  i:integer;
begin

  query:=TSQLQuery.Create(self);
  query.SQLConnection:=dm.SQLConnection1;

  sql := 'select * from tb_zone where nom_zone ='+QuotedStr(nom_zone);

  try
    query.SQL.Add(sql);
    //query.SQL.SaveToFile('G:\toto.txt');
    query.Open;

    with query ,zone do
        begin
          Nid_zone := FieldByName('id_zone').AsInteger;
          Snom_zone := FieldByName('nom_zone').AsString;
          Rprix_zone :=  FieldByName('prix_zone').AsFloat;
          SComment := FieldByName('comment_zone').AsString;
        end;
       Result := zone;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.selectZoneByPoint(var nom_point :string): TPointVente;
var
  sql : string;
  query : TSQLQuery;
  point : TPointVente;
begin
  sql := 'Select * from tb_point_vente where nom_point = '+QuotedStr(nom_point);

  query:=TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);

    query.Open;
    with query, point do
      begin
        Nid_pv := FieldByName('id_point').AsInteger;
        Snom_pint := FieldByName('nom_point').AsString;
        Snom_zone :=  FieldByName('zone').AsString;
        Scode_clt := FieldByName('code_client').AsString;
        Sadresse := FieldByName('adresse').AsString;
      end;
      Result := point;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

function TDM.SelectFacturesDetail(Psql:string):TFacturation_detailArray;
var
  query : TSQLQuery;
  sql : string;
  facture_d :TFacturation_detail;
  factures_d :TFacturation_detailArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_facturation_detail '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(factures_d,i+1);
            with facture_d do
              begin
                Sdate_fact:=FieldByName('date_fact').AsString;
                SNum_fact:=FieldByName('num_fact').AsString;
                Scode_mag:=FieldByName('code_mag').AsString;
                Sdesignation_mag:=FieldByName('designation_mag').AsString;
                Scode_clt:=FieldByName('code_clt').AsString;
                Scode_art:=FieldByName('code_art').AsString;
                Sdesignation_art:=FieldByName('designation_art').AsString;
                Snom_clt:=FieldByName('nom_clt').AsString;
                Nqte_art:=FieldByName('qte_art').AsInteger;
                RPrixU:=FieldByName('PrixU').AsInteger;
                RPrixT:=FieldByName('PrixT').AsFloat;
              end;
              factures_d[i]:=facture_d;
              Inc(i);
              query.Next;
          end;
          Result := factures_d;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;


function TDM.selectPoints(Psql : string) : TPointVenteArray;
var
  sql:string;
  query : TSQLQuery;
  point : TPointVente;
  points : TPointVenteArray;
  i:integer;
begin

  query:=TSQLQuery.Create(self);
  query.SQLConnection:=dm.SQLConnection1;

  sql := 'select * from tb_point_vente '+ Psql;
  i:=0;
  try
    query.SQL.Add(sql);
 //   query.SQL.SaveToFile('g:\tt.txt');
    query.Open;

    with query do
      begin
        while not eof do
          begin
          SetLength(points,i+1);
            with point do
              begin
                Nid_pv := FieldByName('id_point').AsInteger;
                Snom_pint := FieldByName('nom_point').AsString;
                Snom_zone :=  FieldByName('zone').AsString;
                Scode_clt := FieldByName('code_client').AsString;
                Sadresse := FieldByName('adresse').AsString;
              end;
            points[i]:=point;
            Inc(i);
            query.Next;
          end;
      end;
       Result := points;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.selectCodeclt(var vNomClt : string) : TClient;
var
  sql : string;
  query : TSQLQuery;
  client : TClient;
begin
  sql := 'Select * from tb_client where nom_clt = '+QuotedStr(vNomClt);

      query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('G:\code.txt');
    query.Open;
    with query, client do
      begin
        NidClt := FieldByName('id_clt').AsInteger;
        SCodeClt := FieldByName('code_clt').AsString;
        SnomClt := FieldByName('nom_clt').AsString;
        SadresseClt := FieldByName('adresse_clt').AsString;
        StelClt := FieldByName('tel_clt').AsString;
        Smail:= FieldByName('email_clt').AsString;
        ScommentClt:= FieldByName('comment_clt').AsString;
      end;
      Result := client;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

function TDM.selectMaxNumrappel():TMaxNumRappel;
var
  sql : string;
  query : TSQLQuery;
  MaxNumRappel : TMaxNumRappel;
begin
  query := TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;

  sql:='Select max(num_blhis) as num_blhis from tb_bl_his';

  try
    query.SQL.Add(sql);
    query.Open;

    with MaxNumRappel do
      begin
        Nnumrappel:=query.FieldByName('num_blhis').AsInteger;
      end;

    Result :=MaxNumRappel;
  finally
    query.free;
    SQLConnection1.Close;
  end;
end;

function TDM.selectFicheo_recap(Psql : string):Tficheo_recap;
var
  sql : string;
  query : TSQLQuery;
  Fiche : Tficheo_recap;
begin
  query := TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;

  sql:='Select * from tb_ficheo_recap '+Psql;

  try
    query.SQL.Add(sql);
    query.Open;

    with Fiche do
      begin
        Nnum_fes:= query.FieldByName('num_fes').AsInteger;
        Sdate_fes := query.FieldByName('date_fes').AsString;
        Scode_clt := query.FieldByName('code_clt').AsString;
        Snom_clt := query.FieldByName('nom_clt').AsString;
        Smatricule_veh := query.FieldByName('matricule_veh').AsString;
        Smarque_veh := query.FieldByName('marque_veh').AsString;
//        SB3A_Iv := query.FieldByName('B3A_Iv').AsString;
//        SB3A_Ip := query.FieldByName('B3A_Ip').AsString;
//        SB3A_If := query.FieldByName('B3A_If').AsString;
//        SB3_Iv := query.FieldByName('B3A_Iv').AsString;
//        SB3_Ip := query.FieldByName('B3A_Ip').AsString;
//        SB3_If := query.FieldByName('B3A_If').AsString;
//        SB6_Iv := query.FieldByName('B3A_Iv').AsString;
//        SB6_Ip := query.FieldByName('B3A_Ip').AsString;
//        SB6_If := query.FieldByName('B3A_If').AsString;
//        SB6R_Iv := query.FieldByName('B6R_Iv').AsString;
//        SB6R_Ip := query.FieldByName('B6R_Ip').AsString;
//        SB6R_If := query.FieldByName('B6R_If').AsString;
//        SB12_Iv := query.FieldByName('B6R_Iv').AsString;
//        SB12_Ip := query.FieldByName('B6R_Ip').AsString;
//        SB12_If := query.FieldByName('B6R_If').AsString;
//        SB50_Iv := query.FieldByName('B50_Iv').AsString;
//        SB50_Ip := query.FieldByName('B50_Ip').AsString;
//        SB50_If := query.FieldByName('B50_If').AsString;
//        SB25_Iv := query.FieldByName('B25_Iv').AsString;
//        SB25_Ip := query.FieldByName('B25_Ip').AsString;
//        SB25_If := query.FieldByName('B25_If').AsString;
//        SB6E_Iv := query.FieldByName('B6E_Iv').AsString;
//        SB6E_Ip := query.FieldByName('B6E_Ip').AsString;
//        SB6E_If := query.FieldByName('B6E_If').AsString;
//        SB12E_Iv := query.FieldByName('B12E_Iv').AsString;
//        SB12E_Ip := query.FieldByName('B12E_Ip').AsString;
//        SB12E_If := query.FieldByName('B12E_If').AsString;
////
        SB3A_Ov := query.FieldByName('B3A_Ov').AsString;
        SB3A_Op := query.FieldByName('B3A_Op').AsString;
        SB3A_Of := query.FieldByName('B3A_Of').AsString;
        SB3_Ov := query.FieldByName('B3A_Ov').AsString;
        SB3_Op := query.FieldByName('B3A_Op').AsString;
        SB3_Of := query.FieldByName('B3A_Of').AsString;
        SB6_Ov := query.FieldByName('B3A_Ov').AsString;
        SB6_Op := query.FieldByName('B3A_Op').AsString;
        SB6_Of := query.FieldByName('B3A_Of').AsString;
        SB6R_Ov := query.FieldByName('B6R_Ov').AsString;
        SB6R_Op := query.FieldByName('B6R_Op').AsString;
        SB6R_Of := query.FieldByName('B6R_Of').AsString;
        SB12_Ov := query.FieldByName('B6R_Ov').AsString;
        SB12_Op := query.FieldByName('B6R_Op').AsString;
        SB12_Of := query.FieldByName('B6R_Of').AsString;
        SB50_Ov := query.FieldByName('B50_Ov').AsString;
        SB50_Op := query.FieldByName('B50_Op').AsString;
        SB50_Of := query.FieldByName('B50_Of').AsString;
        SB25_Ov := query.FieldByName('B25_Ov').AsString;
        SB25_Op := query.FieldByName('B25_Op').AsString;
        SB25_Of := query.FieldByName('B25_Of').AsString;
        SB6E_Ov := query.FieldByName('B6E_Ov').AsString;
        SB6E_Op := query.FieldByName('B6E_Op').AsString;
        SB6E_Of := query.FieldByName('B6E_Of').AsString;
        SB12E_Ov := query.FieldByName('B12E_Ov').AsString;
        SB12E_Op := query.FieldByName('B12E_Op').AsString;
        SB12E_Of := query.FieldByName('B12E_Of').AsString;
      end;
    Result :=Fiche;
  finally
    query.free;
    SQLConnection1.Close;
  end;
end;

Function TDM. SelectFichei_recap(Psql : string):Tfichei_recap;
var
  sql : string;
  query : TSQLQuery;
  Fiche : Tfichei_recap;
begin
  query := TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;

  sql:='Select * from tb_fichei_recap '+Psql;

  try
    query.SQL.Add(sql);
    query.Open;

    with Fiche do
      begin
        Nnum_fes:= query.FieldByName('num_fes').AsInteger;
        Sdate_fes := query.FieldByName('date_fes').AsString;
        Scode_clt := query.FieldByName('code_clt').AsString;
        Snom_clt := query.FieldByName('nom_clt').AsString;
        Smatricule_veh := query.FieldByName('matricule_veh').AsString;
        Smarque_veh := query.FieldByName('marque_veh').AsString;
        SB3A_Iv := query.FieldByName('B3A_Iv').AsString;
        SB3A_Ip := query.FieldByName('B3A_Ip').AsString;
        SB3A_If := query.FieldByName('B3A_If').AsString;
        SB3_Iv := query.FieldByName('B3A_Iv').AsString;
        SB3_Ip := query.FieldByName('B3A_Ip').AsString;
        SB3_If := query.FieldByName('B3A_If').AsString;
        SB6_Iv := query.FieldByName('B3A_Iv').AsString;
        SB6_Ip := query.FieldByName('B3A_Ip').AsString;
        SB6_If := query.FieldByName('B3A_If').AsString;
        SB6R_Iv := query.FieldByName('B6R_Iv').AsString;
        SB6R_Ip := query.FieldByName('B6R_Ip').AsString;
        SB6R_If := query.FieldByName('B6R_If').AsString;
        SB12_Iv := query.FieldByName('B6R_Iv').AsString;
        SB12_Ip := query.FieldByName('B6R_Ip').AsString;
        SB12_If := query.FieldByName('B6R_If').AsString;
        SB50_Iv := query.FieldByName('B50_Iv').AsString;
        SB50_Ip := query.FieldByName('B50_Ip').AsString;
        SB50_If := query.FieldByName('B50_If').AsString;
        SB25_Iv := query.FieldByName('B25_Iv').AsString;
        SB25_Ip := query.FieldByName('B25_Ip').AsString;
        SB25_If := query.FieldByName('B25_If').AsString;
        SB6E_Iv := query.FieldByName('B6E_Iv').AsString;
        SB6E_Ip := query.FieldByName('B6E_Ip').AsString;
        SB6E_If := query.FieldByName('B6E_If').AsString;
        SB12E_Iv := query.FieldByName('B12E_Iv').AsString;
        SB12E_Ip := query.FieldByName('B12E_Ip').AsString;
        SB12E_If := query.FieldByName('B12E_If').AsString;
////
//        SB3A_Ov := query.FieldByName('B3A_Ov').AsString;
//        SB3A_Op := query.FieldByName('B3A_Op').AsString;
//        SB3A_Of := query.FieldByName('B3A_Of').AsString;
//        SB3_Ov := query.FieldByName('B3A_Ov').AsString;
//        SB3_Op := query.FieldByName('B3A_Op').AsString;
//        SB3_Of := query.FieldByName('B3A_Of').AsString;
//        SB6_Ov := query.FieldByName('B3A_Ov').AsString;
//        SB6_Op := query.FieldByName('B3A_Op').AsString;
//        SB6_Of := query.FieldByName('B3A_Of').AsString;
//        SB6R_Ov := query.FieldByName('B6R_Ov').AsString;
//        SB6R_Op := query.FieldByName('B6R_Op').AsString;
//        SB6R_Of := query.FieldByName('B6R_Of').AsString;
//        SB12_Ov := query.FieldByName('B6R_Ov').AsString;
//        SB12_Op := query.FieldByName('B6R_Op').AsString;
//        SB12_Of := query.FieldByName('B6R_Of').AsString;
//        SB50_Ov := query.FieldByName('B50_Ov').AsString;
//        SB50_Op := query.FieldByName('B50_Op').AsString;
//        SB50_Of := query.FieldByName('B50_Of').AsString;
//        SB25_Ov := query.FieldByName('B25_Ov').AsString;
//        SB25_Op := query.FieldByName('B25_Op').AsString;
//        SB25_Of := query.FieldByName('B25_Of').AsString;
//        SB6E_Ov := query.FieldByName('B6E_Ov').AsString;
//        SB6E_Op := query.FieldByName('B6E_Op').AsString;
//        SB6E_Of := query.FieldByName('B6E_Of').AsString;
//        SB12E_Ov := query.FieldByName('B12E_Ov').AsString;
//        SB12E_Op := query.FieldByName('B12E_Op').AsString;
//        SB12E_Of := query.FieldByName('B12E_Of').AsString;
      end;
    Result :=Fiche;
  finally
    query.free;
    SQLConnection1.Close;
  end;
end;
function TDM.InsertFicheEsTotal(FicheEsTotal : TFicheEsTotal):Boolean;
  var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with FicheEsTotal do
    begin
      sql := 'Insert into tb_ficheEs_Total values(null,'
                +IntToStr(Nnum_ft)+','
                +IntToStr(Nnum_his)+','
                +QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(Sdate_ft)))+','
                +QuotedStr(Scode_clt)+','
                +QuotedStr(Snom_clt)+','
                +QuotedStr(Smatricule_veh)+','
                +QuotedStr(Smarque_veh)+','

                +QuotedStr(SB3A_I)+','
                +QuotedStr(SB3_I)+','
                +QuotedStr(SB6_I) + ','
                +QuotedStr(SB6R_I)+','
                +QuotedStr(SB12_I)+','
                +QuotedStr(SB25_I)+','
                +QuotedStr(SB50_I)+','
                +QuotedStr(SB6E_I)+','
                +QuotedStr(SB12E_I)+','
                +QuotedStr(SB14_I)+','
                +QuotedStr(SB20_I)+','
                +QuotedStr(SB35_I)+','
                +QuotedStr(SB6M_I)+','
                +QuotedStr(SB12M_I)+','
                +QuotedStr(SB6T_I)+','
                +QuotedStr(SB12T_I)+','

                //*******
                +QuotedStr(SB3A_S)+','
                +QuotedStr(SB3_S)+','
                +QuotedStr(SB6_S) + ','
                +QuotedStr(SB6R_S)+','
                +QuotedStr(SB12_S)+','
                +QuotedStr(SB25_S)+','
                +QuotedStr(SB50_S)+','
                +QuotedStr(SB6E_S)+','
                +QuotedStr(SB12E_S)+','
                +QuotedStr(SB14_S)+','
                +QuotedStr(SB20_S)+','
                +QuotedStr(SB35_S)+','
                +QuotedStr(SB6M_S)+','
                +QuotedStr(SB12M_S)+','
                +QuotedStr(SB6T_S)+','
                +QuotedStr(SB12T_S)

//                +IntToStr(Ntype_ft)+','
//                +QuotedStr(Susager)+','
//                +IntToStr(Nstatut_canc)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\tb_ficheEs_Total.txt');
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.InsertFicheoRecap(FicheoRec : Tficheo_recap):Boolean;
  var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with FicheoRec do
    begin
      sql := 'Insert into tb_ficheo_recap values(null,'
                +IntToStr(Nnum_fes)+','
                +IntToStr(Nnum_his)+','
                +QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(Sdate_fes)))+','
                +QuotedStr(Scode_clt)+','
                +QuotedStr(Snom_clt)+','
                +QuotedStr(Smatricule_veh)+','
                +QuotedStr(Smarque_veh)+','
                +QuotedStr(SB3A_Ov)+','
                +QuotedStr(SB3A_Op)+','
                +QuotedStr(SB3A_Of) + ','
                +QuotedStr(SB3_Ov)+','
                +QuotedStr(SB3_Op)+','
                +QuotedStr(SB3_Of)+','
                +QuotedStr(SB6_Ov)+','
                +QuotedStr(SB6_Op)+','
                +QuotedStr(SB6_Of)+','
                +QuotedStr(SB6R_Ov)+','
                +QuotedStr(SB6R_Op)+','
                +QuotedStr(SB6R_Of)+','
                +QuotedStr(SB12_Ov)+','
                +QuotedStr(SB12_Op)+','
                +QuotedStr(SB12_Of)+','
                +QuotedStr(SB50_Ov)+','
                +QuotedStr(SB50_Op)+','
                +QuotedStr(SB50_Of)+','
                +QuotedStr(SB25_Ov)+','
                +QuotedStr(SB25_Op)+','
                +QuotedStr(SB25_Of)+','
                +QuotedStr(SB6E_Ov)+','
                +QuotedStr(SB6E_Op)+','
                +QuotedStr(SB6E_Of)+','
                +QuotedStr(SB12E_Ov)+','
                +QuotedStr(SB12E_Op)+','
                +QuotedStr(SB12E_Of)+','
                +QuotedStr(SB14_Ov)+','
                +QuotedStr(SB14_Op)+','
                +QuotedStr(SB14_Of) +','
                +QuotedStr(SB20_Ov)+','
                +QuotedStr(SB20_Op)+','
                +QuotedStr(SB20_Of)+','
                +QuotedStr(SB35_Ov)+','
                +QuotedStr(SB35_Op)+','
                +QuotedStr(SB35_Of) +','
                +QuotedStr(SB6M_Ov)+','
                +QuotedStr(SB6M_Op)+','
                +QuotedStr(SB6M_Of) +','
                +QuotedStr(SB12M_Ov)+','
                +QuotedStr(SB12M_Op)+','
                +QuotedStr(SB12M_Of) +','
                +QuotedStr(SB6T_Ov)+','
                +QuotedStr(SB6T_Op)+','
                +QuotedStr(SB6T_Of) +','
                +QuotedStr(SB12T_Ov)+','
                +QuotedStr(SB12T_Op)+','
                +QuotedStr(SB12T_Of)

          +')' ;
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\');
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;


function TDM.InsertFicheiRecap(FicheiRec : Tfichei_recap):Boolean;
  var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with FicheiRec do
    begin
      sql := 'Insert into tb_fichei_recap values(null,'
                +IntToStr(Nnum_fes)+','
                +IntToStr(Nnum_his)+','
                +QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(Sdate_fes)))+','
                +QuotedStr(Scode_clt)+','
                +QuotedStr(Snom_clt)+','
                +QuotedStr(Smatricule_veh)+','
                +QuotedStr(Smarque_veh)+','
                +QuotedStr(SB3A_Iv)+','
                +QuotedStr(SB3A_Ip)+','
                +QuotedStr(SB3A_If) + ','
                +QuotedStr(SB3_Iv)+','
                +QuotedStr(SB3_Ip)+','
                +QuotedStr(SB3_If)+','
                +QuotedStr(SB6_Iv)+','
                +QuotedStr(SB6_Ip)+','
                +QuotedStr(SB6_If)+','
                +QuotedStr(SB6R_Iv)+','
                +QuotedStr(SB6R_Ip)+','
                +QuotedStr(SB6R_If)+','
                +QuotedStr(SB12_Iv)+','
                +QuotedStr(SB12_Ip)+','
                +QuotedStr(SB12_If)+','
                +QuotedStr(SB50_Iv)+','
                +QuotedStr(SB50_Ip)+','
                +QuotedStr(SB50_If)+','
                +QuotedStr(SB25_Iv)+','
                +QuotedStr(SB25_Ip)+','
                +QuotedStr(SB25_If)+','
                +QuotedStr(SB6E_Iv)+','
                +QuotedStr(SB6E_Ip)+','
                +QuotedStr(SB6E_If)+','
                +QuotedStr(SB12E_Iv)+','
                +QuotedStr(SB12E_Ip)+','
                +QuotedStr(SB12E_If)+','
                +QuotedStr(SB14_Iv)+','
                +QuotedStr(SB14_Ip)+','
                +QuotedStr(SB14_If)+','
                +QuotedStr(SB20_Iv)+','
                +QuotedStr(SB20_Ip)+','
                +QuotedStr(SB20_If)+','
                +QuotedStr(SB35_Iv)+','
                +QuotedStr(SB35_Ip)+','
                +QuotedStr(SB35_If)+','
                +QuotedStr(SB6M_Iv)+','
                +QuotedStr(SB6M_Ip)+','
                +QuotedStr(SB6M_If) +','
                +QuotedStr(SB12M_Iv)+','
                +QuotedStr(SB12M_Ip)+','
                +QuotedStr(SB12M_If) +','
                +QuotedStr(SB6T_Iv)+','
                +QuotedStr(SB6T_Ip)+','
                +QuotedStr(SB6T_If) +','
                +QuotedStr(SB12T_Iv)+','
                +QuotedStr(SB12T_Ip)+','
                +QuotedStr(SB12T_If)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\query.txt');
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.InsertFiche_es(var Fiche_es : TFiche_es):boolean;
  var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with Fiche_es do
    begin
      sql := 'Insert into tb_fiche_es values(null,'
                +IntToStr(Nnum_fes)+','
                +IntToStr(Nnum_his)+','
                +QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(Sdate_fes)))+','
                +QuotedStr(Scode_clt)+','
                +QuotedStr(Snom_clt)+','
                +QuotedStr(Smatricule_veh)+','
                +QuotedStr(Scode_art)+','
                +QuotedStr(Sdesignation_art)+','
                +IntToStr(NQte_vide)+','
                +IntToStr(Nqte_fuite) + ','
                +IntToStr(Nqte_pleine)+','
                +FloatToStr(RkgArt)+','
                +FloatToStr(RkgFuite)+','
                +FloatToStr(RkgPleine)+','
                +IntToStr(Ntype_fes)+','
                +QuotedStr(Susager)+','
                +IntToStr(Nstatut_canc)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\');
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;


function TDM.SelectVehicule(Psql:string):TVehiculeArray;
var
  query : TSQLQuery;
  sql : string;
  Veh : TVehicule;
  Vehs :TVehiculeArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_vehicule '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
    query.Open;
//    query.SQL.SaveToFile('g:\tb_vehicule.txt');

    with query do
      begin
        while not Eof do
          begin
            SetLength(Vehs,i+1);
            with Veh do
              begin
                SMarque:=FieldByName('Marque_veh').AsString;
                SNum_mat:=FieldByName('Num_Immat_veh').AsString;
                SMarque:=FieldByName('Marque_veh').AsString;
                NPTAC:=FieldByName('Kilo_max').AsInteger;
              end;
              Vehs[i]:=Veh;
              Inc(i);
              query.Next;
          end;
          Result := Vehs;
      end;
  finally
    query.Free;
  end;
end;

function TDM.selectClients(Psql : string) : TClientArray;
var
  sql:string;
  query : TSQLQuery;
  client : TClient;
  clients : TClientArray;
  i:integer;
begin

  query:=TSQLQuery.Create(self);
  query.SQLConnection:=dm.SQLConnection1;

  sql := 'select * from tb_client '+Psql;
  i:=0;
  try
    query.SQL.Add(sql);
 //   query.SQL.SaveToFile('g:\clt.txt');
    query.Open;

    with query do
      begin
          while not eof do
            begin
            SetLength(clients,i+1);
              with client do
                begin
                  NidClt := FieldByName('id_clt').AsInteger;
                  SCodeClt := FieldByName('code_clt').AsString;
                  SnomClt := FieldByName('nom_clt').AsString  ;
                  SadresseClt := FieldByName('adresse_clt').AsString;
                  StelClt :=FieldByName('tel_clt').AsString;
                  Smail :=FieldByName('email_clt').AsString;
                  ScommentClt := FieldByName('comment_clt').AsString;
                  STarif := FieldByName('tarif').AsString;
                  STypeclt:= FieldByName('TypClt').AsString;

                end;
              clients[i]:=client;
              Inc(i);
              query.Next;
            end;
      end;
       Result := clients;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.InsertCatalogueStock(cstock : TCatalogueStock):boolean;
  var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with cstock do
    begin
      sql := 'Insert into tb_catalogue_stock values(null,'
                +QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(Sdate_cs)))+','
                +QuotedStr(SCode_art)+','
                +IntToStr(NQte_vide)+','
                +IntToStr(NQte_mag) + ','
                +IntToStr(Nqte_totale)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;
function TDM.selectCatalogueStock(Psql:string) : TCatalogueStock;
var
  sql : string;
  query : TSQLQuery;
  cata_stock : TCatalogueStock;
begin
  sql := 'Select * from tb_catalogue_stock '+Psql;

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
    query.Open;
    with query, cata_stock do
      begin
        Nid_cs := FieldByName('id_cs').AsInteger;
        Sdate_cs :=FieldByName('date_cs').AsString;
        Scode_art := FieldByName('code_art').AsString;
        NQte_vide := FieldByName('qte_vide').AsInteger;
        NQte_mag := FieldByName('qte_mag').AsInteger;
        Nqte_totale := FieldByName('qte_totale').AsInteger;
      end;
      Result := cata_stock;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

function TDM.selectAllStockCamion(Psql : String) :TStockCamionArray;
var
  sql : string;
  query : TSQLQuery;
  stockCam : TStockCamion;
  stockCams : TStockCamionArray;
  i:integer;
begin
  sql := 'Select * from tb_stock_camion '+Psql;

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;

  i:=0;

  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
        while not eof do
          begin
          SetLength(stockCams,i+1);
            with stockCam do
              begin
                Nid_stock := FieldByName('id_sc').AsInteger;
                Scode_art := FieldByName('code_art').AsString;
                SDesignation_art:=FieldByName('designation_art').AsString;
                NQte_vide := FieldByName('qte_vide').AsInteger;
                NQte_mag := FieldByName('qte_mag').AsInteger;
                Nqte_total := FieldByName('qte_total').AsInteger;
              end;
            stockCams[i]:=stockCam;
            Inc(i);
            query.Next;
          end;
      end;
       Result := stockCams;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

function TDM.selectStock(Psql : String) :TStockArray;
var
  sql : string;
  query : TSQLQuery;
  stock : TStock;
  stocks : TStockArray;
  i:integer;
begin
  sql := 'Select * from tb_stock '+Psql;

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;

  i:=0;

  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
        while not eof do
          begin
          SetLength(stocks,i+1);
            with stock do
              begin
                Nid_stock := FieldByName('id_stock').AsInteger;
                Scode_art := FieldByName('code_art').AsString;
                Scode_mag := FieldByName('code_mag').AsString;
                NQte_vide := FieldByName('qte_vide').AsInteger;
                NQte_mag := FieldByName('qte_mag').AsInteger;
                Nqte_total := FieldByName('qte_totale').AsInteger;
                Rcoutachat :=FieldByName('cout_achat').AsFloat;
              end;
            stocks[i]:=stock;
            Inc(i);
            query.Next;
          end;
      end;
       Result := stocks;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

function TDM.InsertCatalogueCaisse(cat:TCatalogueCaisse ): Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with Cat do
    begin
      sql := 'Insert into tb_catalogue_caisse values(null,'
          +QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(Sdate_cat)))+','
          +Scompte+','
          +FloatToStr(RSolde)+');'
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;
function TDM.SelectCaisse(Psql :string):TCaisse;
var
  sql : string;
  query : TSQLQuery;
  Caisse : TCaisse;
begin
  query := TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;

  sql:='Select * from tb_caisse '+Psql;

  try
    query.SQL.Add(sql);
    query.Open;

    with Caisse do
      begin
        Scompte:= query.FieldByName('num_compte').AsString;
        Snom_caisse := query.FieldByName('nom_caisse').AsString;
        RSolde := query.FieldByName('solde').AsFloat;
      end;
    Result :=Caisse;
  finally
    query.free;
    SQLConnection1.Close;
  end;
end;

function TDM.SelectCaisses(Psql : string):TCaisseArray;
var
  query : TSQLQuery;
  sql:string;
  caisse : TCaisse;
  Caisses : TCaisseArray;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_caisse '+Psql;

  i:=0;

  try
    query.SQL.Clear;
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Caisses,i+1);
            with caisse do
              begin
                Scompte:=FieldByName('Num_compte').AsString;
                Snom_caisse:=FieldByName('nom_caisse').AsString;
                RSolde :=FieldByName('solde').AsFloat;
              end;
              Caisses[i]:=caisse;
              Inc(i);
              query.Next;
          end;
          Result := Caisses;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;
function TDM.selectCatDate():TDateSys;
var
  query : TSQLQuery;
  sql : string;
  Ds : TDateSys;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_catalogue_date ';

  i:=0;

  try
    query.SQL.Add(sql);
 //   query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        Ds.Sdate_cd:=FieldByName('date_cd').AsString;
      end;

    Result := Ds;
  finally
    query.Free;
    dm.SQLConnection1.Close;
  end;
end;

procedure TDM.DeleteFromTable(Psql : string);
  var
    query : TSQLQuery;
begin
    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;

    try
      query.SQL.Add(Psql);
//      query.SQL.SaveToFile('g:\del.txt');
      query.ExecSQL;
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.SelectEntree(Psql : string):TEntree;
var
  query : TSQLQuery;
  sql : string;
  En : TEntree;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_entree '+Psql;

  try
    query.SQL.Add(sql);
    query.Open;

    with query , En do
      begin
        Nid_entree :=FieldByName('id_entree').AsInteger;
        Scode_art_src:=FieldByName('code_art_src').AsString;
        SCode_art:=FieldByName('code_art').AsString;
        Scode_mag:=FieldByName('code_mag').AsString;
        NQte_entree:=FieldByName('qte_entree').AsInteger;
        NType_entree:=FieldByName('type_entree').AsInteger;
        SUsager:=FieldByName('usager').AsString;
        Ddate_entree:=FieldByName('date_entree').AsString;
        SPiece:=FieldByName('num_piece').AsString;
        Nstatut_canc:=FieldByName('statut_canc').AsInteger;
      end;
      Result := En;
  finally
    query.Free;
  end;
end;

function TDM.InsertEntreeCanc(entree : TEntreeCanc):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with entree do
    begin
      sql := 'Insert into tb_entree_canc value(null,'
              +Snum_piece+','
              +Scode_art+','
              +Smotif+','
              +IntToStr(Nqte)+','
              +Sdate_canc+','
              +Suser_canc
              +');'       ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
    end;
end;


function TDM.SelectEntreeCanc(Psql:string):TEntreeCancArray;
var
  query : TSQLQuery;
  sql : string;
  Ec : TEntreeCanc;
  Ecs :TEntreeCancArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_entree_canc '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Ecs,i+1);
            with Ec do
              begin
                Snum_piece:=FieldByName('num_piece').AsString;
                Scode_art:=FieldByName('code_art').AsString;
                Smotif:=FieldByName('motif').AsString;
                Nqte:=FieldByName('qte').AsInteger;
                Sdate_canc:=FieldByName('date_canc').AsString;
                Suser_canc:=FieldByName('user_canc').AsString;
              end;
              Ecs[i]:=Ec;
              Inc(i);
              query.Next;
          end;
          Result := Ecs;
      end;
  finally
    query.Free;
  end;
end;

function TDM.selectArticleByNom(var nom_art : string):TArticle ;
var
  sql : string;
  query : TSQLQuery;
  article : TArticle;
begin
  sql := 'Select * from tb_Article where designation_art = '+QuotedStr(nom_art);

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
    query.Open;
    with query, article do
      begin
        Nid_art := FieldByName('id_art').AsInteger;
        Scode_art := FieldByName('code_art').AsString;
        Scode_mag:=FieldByName('code_mag').AsString;
        Sdesignation_art := FieldByName('designation_art').AsString;
        Stype_art := FieldByName('type_art').AsString;
        Rkilo := FieldByName('kilo').AsFloat;
      end;
      Result := article;
  finally
     query.Free;
  end;
end;

function TDM.InsertStock(var stock : TStock):boolean;
  var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with stock do
    begin
      sql := 'Insert into tb_stock values(null,'
                +QuotedStr(SCode_art)+','
                +QuotedStr(Scode_mag)+','
                +IntToStr(NQte_vide)+','
                +IntToStr(NQte_mag) + ','
                +IntToStr(Nqte_total)+','
                +FloatToStr(Rcoutachat)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

Procedure TDM.UpdateStock(var stock : TStock);
var
  Query:TSQLQuery;
  sql : String;
  I: Integer;
begin
    Query:=TSQLQuery.Create(self);
    Query.SQLConnection:=SQLConnection1;

    sql:='Update tb_stock set '
          +' code_art = '+QuotedStr(stock.Scode_art)+','
          +' code_mag = '+QuotedStr(stock.Scode_mag)+','
          +' qte_vide = '+IntToStr(stock.NQte_vide)+','
          +' qte_mag = '+IntToStr(stock.NQte_mag) +','
          +' qte_totale = '+IntToStr(stock.Nqte_total)
          +' where code_art = '+QuotedStr(stock.Scode_art)
          +' and code_mag ='+QuotedStr(stock.Scode_mag);
    try
      Query.SQL.Add(sql);
      Query.ExecSQL();
    finally
      Query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.selectStockByArticleMagasin(var code_art, code_mag:string) : TStock;
var
  sql : string;
  query : TSQLQuery;
  stock : TStock;
begin
  sql := 'Select * from tb_stock where code_art = '+QuotedStr(code_art)
                                       +' and code_mag = '+QuotedStr(code_mag);

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
    query.Open;
    with query, stock do
      begin
        Nid_stock := FieldByName('id_stock').AsInteger;
        Scode_art := FieldByName('code_art').AsString;
        Scode_mag := FieldByName('code_mag').AsString;
        NQte_vide := FieldByName('qte_vide').AsInteger;
        NQte_mag := FieldByName('qte_mag').AsInteger;
        Nqte_total := FieldByName('qte_totale').AsInteger;
      end;
      Result := stock;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

function TDM.InsertSortie( var sortie : TSortie):boolean;
var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with sortie do
    begin
      sql := 'Insert into tb_sortie values(null,'
                +QuotedStr(Scode_art_src)+','
                +QuotedStr(SCode_art)+','
                +QuotedStr(Scode_mag)+','
                +IntToStr(NQte_sortie)+','
                +IntToStr(NType_Sortie)+','
                +QuotedStr(SUsager)+','
                +QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',StrToDateTime(Ddate_sortie)))+','
                +QuotedStr(SPiece)+','
                +IntToStr(Nstatut_canc)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
      //query.SQL.SaveToFile('G:\Sortie.txt');
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.selectMagasinByCode(var code_mag : string) :TMagasin;
var
  sql : string;
  query : TSQLQuery;
  magasin : TMagasin;
begin
    sql := 'Select * from tb_magasin where code_mag = '+QuotedStr(code_mag);

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
   // query.SQL.SaveToFile('g:\toto2.txt');
    query.Open;
    with query, magasin do
      begin
        Nid_mag := FieldByName('id_mag').AsInteger;
        SCode_mag := FieldByName('code_mag').AsString;
        Sdesignation_mag := FieldByName('designation_mag').AsString;
      end;
      Result := magasin;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

function TDM.InsertEntree( var entree : TEntree):Boolean;
  var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with entree do
    begin
      sql := 'Insert into tb_entree values(null,'
                +Scode_art_src+','
                +SCode_art+','
                +Scode_mag+','
                +IntToStr(NQte_entree)+','
                +IntToStr(NType_entree)+','
                +SUsager+','
                +Ddate_entree+','
                +SPiece +','
                +IntToStr(Nstatut_canc)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

procedure TDM.Update_moovStock(var mouv : TMouvStock) ;
var
  Query:TSQLQuery;
  sql : String;
  I: Integer;
begin
    Query:=TSQLQuery.Create(self);
    Query.SQLConnection:=SQLConnection1;

    sql:='Update tb_mouvement_stock set '
 //         +'id_mouv = '+IntToStr(mouv.NidMouvStock)+','
          +'code_art = '+QuotedStr(mouv.Scode_art)+','
          +'code_mag = '+QuotedStr(mouv.Scode_mag)+','
          +'qte_entree = '+IntToStr (mouv.Nqte_entree)+','
          +'qte_sortie = '+IntToStr(mouv.Nqte_sortie)
          +' where code_art = '+QuotedStr(mouv.Scode_art)
          +' and code_mag = '+QuotedStr(mouv.Scode_mag)
          +' and date_mouv = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(mouv.Ddate_mouv)));
    try
      Query.SQL.Add(sql);
      Query.ExecSQL();
    finally
      Query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.insertMouvStock(var mouv : TMouvStock) : Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with mouv do
    begin
      sql := 'Insert into tb_mouvement_stock values(null,'
                +QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDateTime(Ddate_mouv)))+','
                +QuotedStr(SCode_art)+','
                +QuotedStr(Scode_mag)+','
                +QuotedStr(IntToStr(Nqte_entree))+','
                +QuotedStr(IntToStr(Nqte_sortie))
          +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.selectMouvStock(var code_art : string ; date_mouv : string; code_mag :string):TMouvStock;
var
  sql:string;
  query : TSQLQuery;
  mouv : TMouvStock;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:=dm.SQLConnection1;

  sql := 'select * from tb_mouvement_stock where code_art = '+QuotedStr(code_art)
                +' and date_mouv = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDateTime(date_mouv)))
                +' and code_mag = '+QuotedStr(code_mag) ;
  i:=0;
  try
    query.SQL.Add(sql);
    query.Open;
      with mouv , query do
        begin
          NidMouvStock := FieldByName('id_mouv').AsInteger;
          Ddate_mouv := FieldByName('date_mouv').AsString;
          Scode_art := FieldByName('code_art').AsString;
          Scode_mag := FieldByName('code_mag').AsString;
          Nqte_entree := FieldByName('qte_entree').AsInteger;
          Nqte_sortie :=FieldByName('qte_sortie').AsInteger;
        end;
       Result := mouv;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.selectStockByArticle(var code_art : String) :TStock;
var
  sql : string;
  query : TSQLQuery;
  stock : TStock;
begin
  sql := 'Select * from tb_stock where code_art = '+QuotedStr(code_art);

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
    query.Open;
    with query, stock do
      begin
        Nid_stock := FieldByName('id_stock').AsInteger;
        Scode_art := FieldByName('code_art').AsString;
        Scode_mag := FieldByName('code_mag').AsString;
        NQte_vide := FieldByName('qte_vide').AsInteger;
        NQte_mag := FieldByName('qte_mag').AsInteger;
        Nqte_total := FieldByName('qte_totale').AsInteger;
        Rcoutachat :=FieldByName('cout_achat').AsFloat;
      end;
      Result := stock;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

function TDM.InsertMagasin(mag : TMagasin):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with mag do
    begin
      sql := 'Insert into tb_magasin values(null,'
              +QuotedStr(SCode_mag)+','
              +QuotedStr(Sdesignation_mag)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
      query.Close;
    end;
end;

function TDM.selectMagasinBynom(var nom_mag : string) : TMagasin;
var
  sql : string;
  query : TSQLQuery;
  Mag : TMagasin;
begin
  sql := 'Select * from tb_magasin where designation_mag = '+QuotedStr(nom_mag);

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
    query.Open;
    with query, Mag do
      begin
        Nid_mag := FieldByName('id_mag').AsInteger;
        SCode_mag := FieldByName('code_mag').AsString;
        Sdesignation_mag := FieldByName('designation_mag').AsString;
      end;
      Result := Mag;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

procedure TDM.UpdateTable(var Psql :string);
var
  Query:TSQLQuery;
begin
    Query:=TSQLQuery.Create(self);
    Query.SQLConnection:=SQLConnection1;

    try
      Query.SQL.Add(Psql);
//      Query.SQL.SaveToFile('g:\SqlUpChCam.txt');
      Query.ExecSQL();
    finally
      Query.Free;
      SQLConnection1.Close;
    end;
end;
function TDM.InsertArticle(Article : TArticle):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with Article do
    begin
      sql := 'Insert into tb_article values(null,'
          +QuotedStr(Scode_art) +','
          +QuotedStr(Sdesignation_art)+ ','
          +QuotedStr(Salias_art)+','
          +QuotedStr(Salias_ret)+','
          +QuotedStr(Stype_art)+','
          +FloatToStr(Rkilo)+','
          +QuotedStr(Scode_mag)+','
          +IntToStr(Nordre) +');'
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\article.txt');
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.InitStock(init_stock : TStock):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with init_stock do
    begin
      sql := 'Insert into tb_stock values(null,'
          +QuotedStr(Scode_art) +','
          +QuotedStr(Scode_mag)+ ','
          +IntToStr(NQte_vide)+','
          +IntToStr(NQte_mag)+','
          +IntToStr(Nqte_total)+','
          +FloatToStr(Rcoutachat)+ ');'
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\initStk.txt');
      query.ExecSQL();
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.selectArticleByCode(var code_art : string):TArticle ;
var
  sql : string;
  query : TSQLQuery;
  article : TArticle;
begin
  sql := 'Select * from tb_Article where code_art = '+QuotedStr(code_art);

    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;
  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\SQLConnection1.txt');
    query.Open;
    with query, article do
      begin
        Nid_art := FieldByName('id_art').AsInteger;
        Scode_art := FieldByName('code_art').AsString;
        Sdesignation_art := FieldByName('designation_art').AsString;
        Salias_art := FieldByName('alias_art').AsString;
        Salias_ret := FieldByName('alias_ret').AsString;
        Stype_art := FieldByName('type_art').AsString;
        Rkilo := FieldByName('kilo').AsFloat;
        Scode_mag :=FieldByName('code_mag').AsString;
      end;
      Result := article;
  finally
     query.Free;
     SQLConnection1.Close;
  end;
end;

function TDM.selectMagasins(Psql : string) :TMagasinArray ;
var
  sql:string;
  query : TSQLQuery;
  magasin : TMagasin;
  magasins : TMagasinArray;
  i:integer;
begin

  query:=TSQLQuery.Create(self);
  query.SQLConnection:=dm.SQLConnection1;

  sql := 'select * from tb_magasin '+Psql;
  i:=0;
  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
          while not eof do
            begin
            SetLength(magasins,i+1);
              with magasin do
                begin
                  Nid_mag := FieldByName('id_mag').AsInteger;
                  SCode_mag := FieldByName('code_mag').AsString;
                  Sdesignation_mag :=  FieldByName('designation_mag').AsString;
                end;
              magasins[i]:=magasin;
              Inc(i);
              query.Next;
            end;
      end;
       Result := magasins;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;

function TDM.selectArticles(Psql : string) : TarticleArray;
var
  sql:string;
  query : TSQLQuery;
  article : TArticle;
  articles : TarticleArray;
  i:integer;
begin

  query:=TSQLQuery.Create(self);
  query.SQLConnection:=dm.SQLConnection1;

  sql := 'select * from tb_article '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\tb_article.txt');
    query.Open;

    with query do
      begin
        while not eof do
          begin
          SetLength(articles,i+1);
            with article do
              begin
                Nid_art := FieldByName('id_art').AsInteger;
                Scode_art := FieldByName('code_art').AsString;
                Sdesignation_art := FieldByName('designation_art').AsString;
                Salias_art := FieldByName('alias_art').AsString;
                Salias_ret := FieldByName('alias_ret').AsString;
                Stype_art := FieldByName('type_art').AsString;
                Rkilo := FieldByName('kilo').AsFloat;
                Scode_mag := FieldByName('code_mag').AsString;
              end;
            articles[i]:=article;
            Inc(i);
            query.Next;
          end;
      end;
       Result := articles;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;


end.
