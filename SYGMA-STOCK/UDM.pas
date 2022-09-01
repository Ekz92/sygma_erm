unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.FMTBcd, Data.DB,
  Data.SqlExpr, frxClass, frxDBSet,records;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    frxDBParam: TfrxDBDataset;
    TParam: TSQLTable;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
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
    function selectCatalogueStock(Psql:string) : TCatalogueStock;
    function selectClients(Psql : string) : TClientArray;
    function SelectVehicule(Psql:string):TVehiculeArray;
    function selectFicheEs_recap(Psql : string):TficheEs_recap;


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
    function InsertFicheEsRecap(FicheEsRec : TficheEs_recap):Boolean;
    function InsertFicheEsTotal(FicheEsTotal : TFicheEsTotal):Boolean;

    procedure UpdateTable(var Psql :string);
    procedure Update_moovStock(var mouv : TMouvStock);
    Procedure UpdateStock(var stock : TStock);

    procedure DeleteFromTable(Psql : string);

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UFicheRecap_es;



{$R *.dfm}
Function TDM. SelectFicheEs_recap(Psql : string):TficheEs_recap;
var
  sql : string;
  query : TSQLQuery;
  Fiche : TficheEs_recap;
begin
  query := TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;

  sql:='Select * from tb_ficheEs_recap '+Psql;

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
//
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

                +IntToStr(Ntype_ft)+','
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

function TDM.InsertFicheEsRecap(FicheEsRec : TficheEs_recap):Boolean;
  var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with FicheEsRec do
    begin
      sql := 'Insert into tb_ficheEs_recap values(null,'
                +IntToStr(Nnum_fes)+','
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
                //*******
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
                +QuotedStr(SB12E_Of)
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

    with query do
      begin
        while not Eof do
          begin
            SetLength(Vehs,i+1);
            with Veh do
              begin
                SMarque:=FieldByName('Marque_veh').AsString;
                SNum_mat:=FieldByName('Num_Immat_veh').AsString;
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
    sql : string;
    query : TSQLQuery;
begin
    query:=TSQLQuery.Create(self);
    query.SQLConnection:=SQLConnection1;

    //sql := 'Delete from tb_article '+Psql;

    try
      query.SQL.Add(Psql);
      query.ExecSQL;
    finally
      query.Free;
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
  sql : String;

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
          +QuotedStr(Scode_mag) +');'
    end;

    try
      query.SQL.Add(sql);
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

  sql := 'select * from tb_article '+Psql
         +' order by kilo asc ';

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