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

    function selectCatDate():TDateSys;
    function selectClients(Psql : string) : TClientArray;
    function selectTypeServices(Psql :string): TTypeServiceArray;
    function selectMagasins(Psql : string) :TMagasinArray ;
    function selectStockCamion(Psql : string):TStockCamion;
    function SelectParametragePrixclt(Psql:string):TTarif_defPrixArray;
    function SelectParamNumFact(Psql:string):TParametreNumFactureArray;
    function SelectMaxIdFacture():TMaxIdFacture;
    function selectStockByArticle(var code_art : String) :TStock;
    function selectArticleByCode(var code_art : string):TArticle ;
    function selectMagasinByCode(var code_mag : string) :TMagasin;
    function selectMouvStock(var code_art : string ; date_mouv : string; code_mag :string):TMouvStock;
    function selectTarif(Psql:string) :TTarifArray ;
    function SelectFactures(Psql:string):TFacturationArray;
    function SelectFacturesDetail(Psql:string):TFacturation_detailArray;
    function selectPayement(Psql : string):TPayement_caisse;
    function SelectCaisses(Psql : string):TCaisseArray;
    function SelectFacturesCanc(Psql : string):TFactureCancArray;
    function SelectCommandeCamion(Psql :string):TCommandeCamionArray;
    function selectArticles(Psql : string) : TarticleArray;
    function SelectUnParamPrix(code_art,codetclt : string):Boolean;


    function InsertFacturation(facture : TFacturation):boolean;
    function InsertReleveClient(rc : TReleve_client):Boolean;
    function InsertFacturetion_detail(facture_d : TFacturation_detail):Boolean;
    function InsertBeneFact(benefact : TBeneFact):Boolean;
    function InsertSortie( var sortie : TSortie):boolean;
    function InsertMouvStock(var mouv : TMouvStock) : Boolean;
    function InsertFactureCanc(factureCanc : TFactureCanc):Boolean;
    function InsertParametreNumFacture(unParam : TParametreNumFacture):Boolean;
    function InsertParametragePrixClt(unParam : TTarif_defPrix):Boolean;
    function InsertTarif(var unTarif : TTarif): Boolean;
    function InsertTypeService(TypeService : TTypeService):Boolean;

    Procedure UpdateStock(var stock : TStock);
    Procedure UpdateStockCamion(stockCam : TStockCamion);
    procedure Update_moovStock(var mouv : TMouvStock) ;
    procedure UpdateTable(var Psql :string);

    procedure Delete(Psql : String);
    procedure DeleteFromTable(Psql : string);

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDM.InsertTypeService(TypeService : TTypeService):Boolean;
  var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with TypeService do
    begin
      sql := 'Insert into tb_type_service values(null,'
                +QuotedStr(Scode_ts)+','
                +QuotedStr(Sdesign_ts)
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

function TDM.InsertTarif(var unTarif : TTarif): Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with unTarif do
    begin
      sql := 'Insert into tb_tarif values(null,'
              +QuotedStr(SCode_tarif)+','
              +QuotedStr(SDesignation_tarif)
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

function TDM.InsertParametragePrixClt(unParam : TTarif_defPrix):Boolean;
  var
    sql : string;
    query :TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;

  with unParam do
    begin
      sql:= 'Insert into  tb_tarif_DefPrix values(null,'
            +QuotedStr(Scode_tarif)+','
            +QuotedStr(Sdesignation_tarif)+','
            +QuotedStr(Scode_art)+','
            +QuotedStr(Sdesignation_art)+','
            +FloatToStr(Rprix) +');'
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL()    ;
    finally
      query.Free;
      SQLConnection1.Close;
    end;
end;

function TDM.SelectUnParamPrix(code_art,codetclt : string):Boolean;
var
  sql:string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := ' select * from tb_tarif_DefPrix where code_art = '+QuotedStr(code_art)
        +' and code_tarif = '+QuotedStr(codetclt);

  try
    query.SQL.Add(sql);
    query.Open;

    if query.IsEmpty then
      result:=False
    else
      Result:=True;
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
         +' order by id_art desc ';

  i:=0;

  try
    query.SQL.Add(sql);
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
      SQLConnection1.Close;
    end;
end;

function TDM.InsertParametreNumFacture(unParam : TParametreNumFacture):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with unParam do
    begin
      sql:='Insert into tb_paramnumfacture values (null,'
        +QuotedStr(Scode_mag)+','
        +QuotedStr(Sdesignation_mag)+','
        +QuotedStr(Sprefix_fact)+');'
    end;
    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
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


function TDM.SelectFacturesCanc(Psql : string):TFactureCancArray;
var
  query : TSQLQuery;
  sql : string;
  fc : TFactureCanc;
  fcs :TFactureCancArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_facture_canc '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(fcs,i+1);
            with fc do
              begin
                Snum_fact:=FieldByName('num_fact').AsString;
                Smotif_canc:=FieldByName('motif_canc').AsString;
                Sdate_canc:=FieldByName('date_canc').AsString;
                Suser_canc:=FieldByName('user_canc').AsString;
              end;
              fcs[i]:=fc;
              Inc(i);
              query.Next;
          end;
          Result := fcs;
      end;
  finally
    query.Free;
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


function TDM.selectPayement(Psql : string):TPayement_caisse;
var
  query : TSQLQuery;
  sql : string;
  pay : TPayement_caisse;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_payement_caisse '+Psql;

  try
    query.SQL.Add(sql);
    query.Open;

    with query , pay do
      begin
        NidPaye :=FieldByName('idPaye').AsInteger;
        Sdate_paye:=FieldByName('date_paye').AsString;
        Snum_fact:=FieldByName('num_fact').AsString;
        Scode_clt:=FieldByName('code_clt').AsString;
        Snom_clt:=FieldByName('nom_clt').AsString;
        Scode_ope:=FieldByName('code_ope').AsString;
        Snom_caisse:=FieldByName('nom_caisse').AsString;
        Scompte_caisse:=FieldByName('compte_caisse').AsString;
        Rmontant_paye:=FieldByName('montant_paye').AsFloat;
        Nstatut_canc:=FieldByName('statut_canc').AsInteger;
      end;
      Result := pay;
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

procedure TDM.Delete(Psql : String);
var
  Query:TSQLQuery;
  sql : String;

begin
    Query:=TSQLQuery.Create(self);
    Query.SQLConnection:=SQLConnection1;

    try
      Query.SQL.Add(Psql);
      Query.ExecSQL();
    finally
      Query.Free;
      SQLConnection1.Close;
    end;
end;


function TDM.InsertFactureCanc(factureCanc : TFactureCanc):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with factureCanc do
    begin
      sql := 'Insert into tb_facture_canc value(null,'
              +Snum_fact+','
              +Smotif_canc+','
              +Sdate_canc+','
              +Suser_canc
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


function TDM.selectTarif(Psql:string) :TTarifArray ;
var
  sql:string;
  query : TSQLQuery;
  Tarif : TTarif;
  Tarifs : TTarifArray;
  i:integer;
begin

  query:=TSQLQuery.Create(self);
  query.SQLConnection:=dm.SQLConnection1;

  sql := 'select * from tb_tarif '+Psql;
  i:=0;
  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
          while not eof do
            begin
            SetLength(Tarifs,i+1);
              with Tarif do
                begin
                  Nid_tarif := FieldByName('idtarif').AsInteger;
                  SCode_tarif := FieldByName('code_tarif').AsString;
                  SDesignation_tarif :=  FieldByName('designation_tarif').AsString;
                end;
              Tarifs[i]:=Tarif;
              Inc(i);
              query.Next;
            end;
      end;
       Result := Tarifs;
  finally
    query.Free;
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


Procedure TDM.UpdateStockCamion(stockCam : TStockCamion);
var
  Query:TSQLQuery;
  sql : String;
  I: Integer;
begin
    Query:=TSQLQuery.Create(self);
    Query.SQLConnection:=SQLConnection1;

    sql:='Update tb_stock_camion set '
          +' vehicule = '+QuotedStr(stockCam.Svehicule)+','
          +' code_art = '+QuotedStr(stockCam.Scode_art)+','
          +' designation_art = '+QuotedStr(stockCam.SDesignation_art)+','
          +' qte_vide = '+IntToStr(stockCam.NQte_vide)+','
          +' qte_mag = '+IntToStr(stockCam.NQte_mag) +','
          +' qte_total = '+IntToStr(stockCam.Nqte_total)
          +' where code_art = '+QuotedStr(stockCam.Scode_art)
          +' and vehicule ='+QuotedStr(stockCam.Svehicule);
    try
      Query.SQL.Add(sql);
//      Query.SQL.SaveToFile('g:\tb_stock_camion.txt');
      Query.ExecSQL();
    finally
      Query.Free;
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


function TDM.InsertBeneFact(benefact : TBeneFact):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with benefact do
    begin
      sql := 'Insert into tb_bene_fact values (null,'
              +SdateFAct+','
              +Snum_fact+','
              +Scode_art+','
              +Sdesignation_art+','
              +IntToStr(Nqte)+','
              +FloatToStr(Rpu)+','
              +FloatToStr(Rcout)+','
              +FloatToStr(Rmarge)+','
              +IntToStr(Nstatut_canc)
              +');'       ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
    end;
end;


function TDM.InsertFacturetion_detail(facture_d : TFacturation_detail):Boolean;
var
  sql : string;
  Query :TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with facture_d do
    begin
      sql := 'Insert into  	tb_facturation_detail values (null,'
              +QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(Sdate_fact)))+','
              +QuotedStr(Snum_fact)+','
              +QuotedStr(Scode_mag)+','
              +QuotedStr(Sdesignation_mag)+','
              +QuotedStr(Scode_tarif)+','
              +QuotedStr(Sdesignation_tarif)+','
              +QuotedStr(Scode_clt)+','
              +QuotedStr(Snom_clt)+','
              +QuotedStr(Scode_art)+','
              +QuotedStr(Sdesignation_art)+','
              +IntToStr(Nqte_art)+','
              +FloatToStr(RPrixU)+','
              +FloatToStr(RPrixT)+');'
    end;

    try
      Query.SQL.Add(sql);
      Query.ExecSQL();
    finally
      Query.Free;
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

function TDM.InsertReleveClient(rc : TReleve_client):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with rc do
    begin
      sql := 'Insert into tb_releve_client values(null,'
          +SCode_client+','
          +Snom_client+','
          +SDate_rs +','
          +SOperation+ ','
          +SCaisse+','
          +SPiece+','
          +SAvance_debit+','
          +SAvance_credit+','
          +SFactRet_debit+','
          +SFactRet_credit+','
          +SLibelle+');'
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
    end;

end;


function TDM.InsertFacturation(facture : TFacturation):boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with facture do
    begin
      sql:='Insert into tb_facturation values(null,'
            +QuotedStr(FormatDateTime('yyy-mm-dd hh:mm:ss', StrToDateTime(Sdate_fact)))+','
            +QuotedStr(SNum_fact)+','
            +QuotedStr(Scode_clt)+','
            +QuotedStr(Snom_clt)+','
            +IntToStr(NQte_total)+','
            +FloatToStr(Rmnt_t)+','
            +FloatToStr(Rmnt_p)+','
            +FloatToStr(Rmnt_r)+','
            +QuotedStr(Sstatut)+ ','
            +QuotedStr(Stype_fact)+ ','
            +QuotedStr(Snum_comc)+','
            +QuotedStr(Svehicule)+','
            +IntToStr(NStatut_canc)+','
            +QuotedStr(SUsager) +');'
    end;
    try
      query.SQL.Add(sql);
      query.ExecSQL;
    finally
      query.Free;

    end;
end;


function TDM.SelectMaxIdFacture():TMaxIdFacture;
var
  sql : string;
  query : TSQLQuery;
  MaxIdFact : TMaxIdFacture;
begin
  query := TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;

  sql:='Select max(id_fact) as max_id from tb_facturation';

  try
    query.SQL.Add(sql);
    query.Open;

    with MaxIdFact do
      begin
        NMaxId:=query.FieldByName('max_id').AsInteger;
      end;

    Result :=MaxIdFact;
  finally
    query.free;
  end;
end;

function TDM.SelectParamNumFact(Psql:string):TParametreNumFactureArray;
var
  sql:string;
  query : TSQLQuery;
  UnParam : TParametreNumFacture;
  Parametres :TParametreNumFactureArray;
  i:integer;
begin
  query := TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;

//  Psql:='';
  sql := 'select * from tb_paramnumfacture '+Psql ;

   i:= 0;
  try
    query.SQL.Add(sql);
    query.Open;

    with query do

        while not Eof do
          begin
            SetLength(Parametres,i+1);
            with UnParam do
              begin
                Scode_mag := FieldByName('code_mag').AsString;
                Sdesignation_mag := FieldByName('Designation_mag').AsString;
                Sprefix_fact := FieldByName('prefixe_fact').AsString;
              end;
          Parametres[i]:=UnParam;
          Inc(i);
          query.Next;
      end;
      Result:=Parametres;

  finally
    query.Free;
  end;


end;

function TDM.SelectParametragePrixclt(Psql:string):TTarif_defPrixArray;
var
  sql:string;
  query :TSQLQuery;
  ParamPrix : TTarif_defPrix;
  ParamsPrix : TTarif_defPrixArray;
  i:integer;
begin
  query := TSQLQuery.Create(self);
  query.SQLConnection:=SQLConnection1;

  sql := 'select * from tb_tarif_DefPrix '+Psql;

  i:= 0;
  try
    query.SQL.Add(sql);

    query.Open;

    with query do
      begin
        while not Eof do
          begin
           SetLength(ParamsPrix,i+1);
           with ParamPrix do
              begin
                Nidparamprix:=FieldByName('idparamprix').AsInteger;
                Scode_tarif := FieldByName('code_tarif').AsString;
                Sdesignation_tarif:=FieldByName('designation_tarif').AsString;
                Scode_art:=FieldByName('code_art').AsString;
                Sdesignation_art:=FieldByName('designation_art').AsString;
                Rprix := FieldByName('prix_vente').AsFloat;
              end;
              ParamsPrix[i]:=ParamPrix;
              Inc(i);
              query.Next;
          end;
          Result:=ParamsPrix;
      end;
  finally
    query.Free;
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
    //query.SQL.SaveToFile('g:\tb_Select_camion.txt');
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
  end;
end;


function TDM.selectTypeServices(Psql :string): TTypeServiceArray;
var
  sql:string;
  query : TSQLQuery;
  TypService : TTypeService;
  TypServices : TTypeServiceArray;
  i:integer;
begin

  query:=TSQLQuery.Create(self);
  query.SQLConnection:=dm.SQLConnection1;

  sql := 'select * from tb_type_service '+Psql;
  i:=0;
  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
          while not eof do
            begin
            SetLength(TypServices,i+1);
              with TypService do
                begin
                  Nid_ts := FieldByName('id_ts').AsInteger;
                  Scode_ts := FieldByName('code_ts').AsString;
                  Sdesign_ts :=  FieldByName('design_ts').AsString;
                end;
              TypServices[i]:=TypService;
              Inc(i);
              query.Next;
            end;
      end;
       Result := TypServices;
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


end.
