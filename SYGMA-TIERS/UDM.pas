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
    function selectLivreur(Psql : string):TLivreurArray;
    function selectClients(Psql : string) : TClientArray;
    function selectTarif(Psql:string) :TTarifArray ;
    function selectZones(Psql : string) : TZoneArray;
    function selectCodeclt(var vNomClt : string) : TClient;
    function selectPoints(Psql : string) : TPointVenteArray;
    function SelectCompteClient(Psql:string):TCompteClientArray;
    function selectCatDate():TDateSys;
    function SelectCaisse(Psql :string):TCaisse;
    function SelectCaisses(Psql : string):TCaisseArray;
    function selectStock(Psql : String) :TStockArray;
    function selectCatalogueStock(Psql:string) : TCatalogueStock;

    function InsertLivreur(livreur : TLivreur) : Boolean;
    function InsertClient(clt : TClient ):Boolean;
    function InsertCompteClt(cmpt : TCompteClient ):Boolean;
    function InsertPointVente(var point : TPointVente): Boolean;
    function InsertCatalogueCaisse(cat:TCatalogueCaisse ): Boolean;
    function InsertCatalogueStock(cstock : TCatalogueStock):boolean;


    procedure UpdateClient(client : TClient);
    procedure UpdateTable(var Psql :string);

    procedure Delete(Psql : String);

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
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

function TDM.SelectCompteClient(Psql:string):TCompteClientArray;
var
  query : TSQLQuery;
  sql : string;
  TCC : TCompteClient;
  TCCs :TCompteClientArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_compte_client '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\compte.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(TCCs,i+1);
            with TCC do
              begin
                Scode_clt:=FieldByName('code_clt').AsString;
                SNom_clt:=FieldByName('nom_clt').AsString;
                SNum_cc:=FieldByName('num_cc').AsString;
                RSolde:= FieldByName('solde').AsFloat;
              end;
              TCCs[i]:=TCC;
              Inc(i);
              query.Next;
          end;
          Result := TCCs;
      end;
  finally
    query.Free;
  end;
end;

function TDM.InsertPointVente(var point : TPointVente): Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with point do
    begin
      sql := 'Insert into tb_point_vente values(null,'
              +QuotedStr(Snom_pint)+','
              +QuotedStr(Snom_zone)+','
              +QuotedStr(Scode_clt)+','
              +QuotedStr(Sadresse)
          +')' ;
    end;

    try
      query.SQL.Add(sql);
      query.ExecSQL();
    finally
      query.Free;
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
  end;
end;

function TDM.selectZones(Psql : string) : TZoneArray;
var
  sql:string;
  query : TSQLQuery;
  zone : TZone;
  zones : TZoneArray;
  i:integer;
begin

  query:=TSQLQuery.Create(self);
  query.SQLConnection:=dm.SQLConnection1;

  sql := 'select * from tb_zone '+Psql;
  i:=0;
  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
          while not eof do
            begin
            SetLength(zones,i+1);
              with zone do
                begin
                  Nid_zone := FieldByName('id_zone').AsInteger;
                  Snom_zone := FieldByName('nom_zone').AsString;
                  Rprix_zone :=  FieldByName('prix_zone').AsFloat;
                  SComment := FieldByName('comment_zone').AsString;
                end;
              zones[i]:=zone;
              Inc(i);
              query.Next;
            end;
      end;
       Result := zones;
  finally
    query.Free;
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

procedure TDM.UpdateClient(client : TClient);
var
  Query:TSQLQuery;
  sql : String;
begin
    Query:=TSQLQuery.Create(self);
    Query.SQLConnection:=SQLConnection1;

    sql := 'Update tb_client set '
                  +'nom_clt = '+client.SnomClt  +','
                  +'adresse_clt = '+client.SadresseClt+','
                  +'tel_clt = '+client.StelClt+','
                  +'email_clt = '+client.Smail+','
                  +'tarif = '+client.STarif+','
                  +'comment_clt = '+client.ScommentClt
                  +' where code_clt = '+client.SCodeClt;
    try
      Query.SQL.Add(sql);
      Query.ExecSQL();
    finally
      Query.Free;
    end;
end;


function TDM.InsertCompteClt(cmpt : TCompteClient ):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with cmpt do
    begin
      sql := 'Insert into tb_compte_client value(null,'
              +Scode_clt+','
              +SNom_clt +','
              +SNum_cc+','
              +FloatToStr(RSolde)
              +')'       ;
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\compte.txt');
      query.ExecSQL();
    finally
      query.Free;
    end;
end;

function TDM.InsertClient(clt : TClient ):Boolean;
var
  sql : string;
  query : TSQLQuery;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  with clt do
    begin
      sql := 'Insert into tb_client value(null,'
              +SCodeClt+','
              +SnomClt +','
              +SadresseClt+','
              +StelClt+','
              +Smail+','
              +ScommentClt +','
              +SZone +','
              +STarif
              +');'       ;
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\client.txt');
      query.ExecSQL();
    finally
      query.Free;
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

function TDM.InsertLivreur(livreur : TLivreur) : Boolean;
var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with livreur do
    begin
      sql := 'Insert into tb_livreur values(null,'
                +SCode_liv+','
                +Snom_liv+','
                +Stel_liv+','
                +Sadresse_liv+','
                +Smail_liv
                +');' ;
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\tb_boncom_detail.txt');
      query.ExecSQL();
    finally
      query.Free;
    end;
end;


function TDM.selectLivreur(Psql : string):TLivreurArray;
var
  query : TSQLQuery;
  sql : string;
  Lv : TLivreur;
  Lvs :TLivreurArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_livreur '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
 //   query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Lvs,i+1);
            with Lv do
              begin
                Nid_liv:=FieldByName('id_liv').AsInteger;
                SCode_liv:=FieldByName('code_liv').AsString;
                Snom_liv:=FieldByName('nom_liv').AsString;
                Stel_liv:=FieldByName('tel_liv').AsString;
                Sadresse_liv:=FieldByName('adresse_liv').AsString;
                Smail_liv:=FieldByName('mail_liv').AsString;
              end;
              Lvs[i]:=Lv;
              Inc(i);
              query.Next;
          end;
          Result := Lvs;
      end;
  finally
    query.Free;
    dm.SQLConnection1.Close;
  end;
end;


end.
