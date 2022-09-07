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
    { D�clarations priv�es }
  public
    { D�clarations publiques }

    function selectchargements(Psql :string):TChargementArray;
    function SelectMaxLettrage():TMaxLettrage;
    function selectLivreur(Psql : string):TLivreurArray;
    function SelectVehicule(Psql:string):TVehiculeArray;
    function selectClients(Psql : string) : TClientArray;
    function selectPoints(Psql : string) : TPointVenteArray;
    function selectArticles(Psql : string) : TarticleArray;
    function selectStockByArticle(var code_art : String) :TStock;
    function selectStockCamion(Psql : string):TStockCamion;
    function selectArticleByCode(var code_art : string):TArticle ;
    function selectMouvStock(var code_art : string ; date_mouv : string; code_mag :string):TMouvStock;
    function SelectMaxCharg():TMaxVteChargVeh;
    function SelectChauffeur(Psql:string):TChauffeurArray;
    function SelectChargementCamion(Psql : string):TvteChargVehArray;
    function SelectChargementDetailCamion(Psql : string):TVteChargVehdArray;
    function SelectRetourBouteilleByLot(Lot : string) : TRetourBouteille;
    function SelectRetourBouteilleByLotArt(Lot,codeArt : string) : TRetourBouteille;
    function SelectMaxComCam():TMaxCommandeCam;
    function SelectCommandeCamion(Psql :string):TCommandeCamionArray;
    function SelectFactures(Psql:string):TFacturationArray;
    function selectCatDate():TDateSys;


    function InsertVteChargVeh(vteChargVeh : TvteChargVeh):Boolean;
    function InsertlivraisonCamion(ChargCam : TLivraisonCamion):Boolean;
    function InsertVteChargVehd(VteChargVehd:TVteChargVehd):Boolean;
    function InsertStockCamion(var stockCam : TStockCamion):Boolean;
    function InsertSortie( var sortie : TSortie):boolean;
    function InsertMouvStock(var mouv : TMouvStock) : Boolean;
    function InsertRetourBout(RetourBout : TRetourBouteille):Boolean;
    function InsertCommandeCam(Comcam : TCommandeCamion):Boolean;


    procedure UpdateTable(var Psql :string);
    procedure Update_moovStock(var mouv : TMouvStock) ;

    procedure Delete(Psql : String);

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UEtatLivraison;


{$R *.dfm}
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
function TDM.SelectMaxComCam():TMaxCommandeCam;
var
  sql : string;
  query : TSQLQuery;
  MaxCommandeCam: TMaxCommandeCam;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select max(num_comc) as numComc from tb_commande_camion';

  try
    query.SQL.Add(sql);
    query.Open;
    MaxCommandeCam.NnumMax := query.FieldByName('numComc').AsInteger;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
  Result :=MaxCommandeCam;
end;

function TDM.InsertCommandeCam(Comcam : TCommandeCamion):Boolean;
var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with Comcam do
    begin
      sql := 'Insert into tb_commande_camion values(null,'
                +IntToStr(Nnum_comc)+','
                +Sdate_com+','
                +IntToStr(Nchargement)+','
                +Spiece+','
                +Svehicule+','
                +FloatToStr(Rmontant) +','
                +FloatToStr(Rmontant_p) +','
                +FloatToStr(Rmontant_r) +','
                +IntToStr(Nstatut_cmd)
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
function TDM.selectRetourBouteilleByLotArt(Lot,codeArt : string) : TRetourBouteille;
var
  query : TSQLQuery;
  sql : string;
  RB : TRetourBouteille;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_retour_bout '
        +' where lot = '+Lot
        +' and codeArt = '+codeArt;

  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\tb_retour_bout.txt');
    query.Open;

    with query ,RB do
      begin
        Nid_rb := FieldByName('id_rb').AsInteger;
        Slot := FieldByName('lot').AsString;
        Scamion := FieldByName('camion').AsString;
        Schauf := FieldByName('chauf').AsString;
        Sdate_charg := FieldByName('date_charg').AsString;
        Sdate_ret := FieldByName('date_ret').AsString;
        ScodeArt := FieldByName('codeArt').AsString;
        SdesignationArt := FieldByName('designationArt').AsString;
        Nqte_ch := FieldByName('qte_ch').AsInteger;
        Nqte_ret := FieldByName('qte_ret').AsInteger;
        Nqte_eq := FieldByName('qte_eq').AsInteger;
        Susager := FieldByName('usager').AsString;
      end;
      Result := RB;
  finally
    query.Free;
  end;
end;

function TDM.InsertRetourBout(RetourBout : TRetourBouteille):Boolean;
var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with RetourBout do
    begin
      sql := 'Insert into tb_retour_bout values(null,'
                +Slot+','
                +Scamion+','
                +Schauf+','
                +Sdate_charg+','
                +Sdate_ret+','
                +ScodeArt+','
                +SdesignationArt+','
                +IntToStr(Nqte_ch)+','
                +IntToStr(Nqte_ret)+','
                +IntToStr(Nqte_eq)+','
                +Susager
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

function TDM.selectRetourBouteilleByLot(Lot : string) : TRetourBouteille;
var
  query : TSQLQuery;
  sql : string;
  RB : TRetourBouteille;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_retour_bout where lot = '+Lot;

  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\tb_retour_bout.txt');
    query.Open;

    with query ,RB do
      begin
        Nid_rb := FieldByName('id_rb').AsInteger;
        Slot := FieldByName('lot').AsString;
        Scamion := FieldByName('camion').AsString;
        Schauf := FieldByName('chauf').AsString;
        Sdate_charg := FieldByName('date_charg').AsString;
        Sdate_ret := FieldByName('date_ret').AsString;
        ScodeArt := FieldByName('codeArt').AsString;
        SdesignationArt := FieldByName('designationArt').AsString;
        Nqte_ch := FieldByName('qte_ch').AsInteger;
        Nqte_ret := FieldByName('qte_ret').AsInteger;
        Nqte_eq := FieldByName('qte_eq').AsInteger;
        Susager := FieldByName('usager').AsString;
      end;
      Result := RB;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;
function TDM.SelectChargementDetailCamion(Psql : string):TVteChargVehdArray;
var
  query : TSQLQuery;
  sql : string;
  Chd : TVteChargVehd;
  Chds :TVteChargVehdArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_vte_chargvehd '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Chds,i+1);
            with Chd do
              begin
                NnumCharg:=FieldByName('numCharg').AsInteger;
                ScodeArt:=FieldByName('codeArt').AsString;
                SdesignationArt:=FieldByName('designationArt').AsString;
                Nqte:=FieldByName('qte').AsInteger;
                Rkilo:=FieldByName('kilo').AsFloat;
                RTkilo:=FieldByName('Tkilo').AsFloat;
              end;
              Chds[i]:=Chd;
              Inc(i);
              query.Next;
          end;
          Result := Chds;
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

function TDM.selectChargementCamion(Psql : string):TvteChargVehArray;
var
  query : TSQLQuery;
  sql : string;
  Ch : TvteChargVeh;
  Chs :TvteChargVehArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_vte_chargveh '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
//    query.SQL.SaveToFile('g:\ff.txt');
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Chs,i+1);
            with Ch do
              begin
                Slettrage:=FieldByName('lettrage').AsString;
                NnumCharg:=FieldByName('numCharg').AsInteger;
                NSrc_charg:=FieldByName('src_ch').AsInteger;
                ScodClient:=FieldByName('cod_client').AsString;
                SnomClient:=FieldByName('nom_client').AsString;
                SPiece:= FieldByName('piece').AsString;
                SVehicule:=FieldByName('vehicule').AsString;
                NnumMatChauf:=FieldByName('num_mat_chauf').AsInteger;
                SnomChauf:=FieldByName('nom_chauf').AsString;
                SdateCharg:=FieldByName('dateCharg').AsString;
                NTboutteille:=FieldByName('TBouteille').AsInteger;
                RTKilo:=FieldByName('TKilo').AsFloat;
                RMontant:=FieldByName('montant').AsFloat;
                SUsager:=FieldByName('usager').AsString;
                NStatut_canc := FieldByName('statut_canc').AsInteger;
              end;
              Chs[i]:=Ch;
              Inc(i);
              query.Next;
          end;
          Result := Chs;
      end;
  finally
    query.Free;
    SQLConnection1.Close;
  end;
end;
function TDM.SelectChauffeur(Psql:string):TChauffeurArray;
var
  sql : string;
  query : TSQLQuery;
  Chauffs : TChauffeurArray;
  Chauff : TChauffeur;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_chauffeur '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(Chauffs,i+1);
            with Chauff do
              begin
                Nnum_mat_chauf:=FieldByName('num_mat_chauf').AsInteger;
                Snom_chauf:=FieldByName('nom_chauf').AsString;
                Sprenom_chauf:=FieldByName('prenom_chauf').AsString;
                Stel_chauf:=FieldByName('tel_chauf').AsString;
                Smail_chauf:=FieldByName('mail_chauf').AsString;
                Sadresse_chauf:=FieldByName('adresse_chauf').AsString;
              end;
              Chauffs[i]:=Chauff;
              Inc(i);
              query.Next;
          end;
          Result := Chauffs;
      end;
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

function TDM.InsertMouvStock(var mouv : TMouvStock) : Boolean;
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
function TDM.InsertlivraisonCamion(ChargCam : TLivraisonCamion):Boolean;
var
  sql : string;
  query : TSQLQuery;
  i:integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection:= dm.SQLConnection1;

  with ChargCam do
    begin
      sql := 'Insert into tb_livraison_camion values(null,'
                +Sdate_charg+','
                +Slettrage+','
                +IntToStr(Nnum_charg)+','
                +Scode_liv+','
                +Snom_liv+','
                +Scode_clt+','
                +Snom_clt+','
                +Scamion +','
                +Spi�ce +','
                +SB3A+','
                +SB3+','
                +SB6+','
                +SB6R+','
                +SB12+','
                +SB50+','
                +SB25+','
                +SB6E+','
                +SB12E+','
                +SRB3A+','
                +SRB3+','
                +SRB6+','
                +SRB6R+','
                +SRB12+','
                +SRB50+','
                +SRB25+','
                +SRB6E+','
                +SRB12E+','
                +SType+','
                +FloatToStr(Rmontant)+','
                +FloatToStr(Rkilo_t)+','
                +Szone_liv+','
                +FloatToStr(Rprix_zone)+','
                +FloatToStr(Rprix_liv)+','
                +Susager
                +');' ;
    end;

    try
      query.SQL.Add(sql);
//      query.SQL.SaveToFile('g:\tb_boncom_detail.txt');
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
      query.ExecSQL();
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
    SQLConnection1.Close
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


function TDM.SelectMaxLettrage():TMaxLettrage;
var
  sql : string;
  query : TSQLQuery;
  MaxLettrage: TMaxLettrage;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select max(id_cc) as lettrage from tb_livraison_camion';

  try
    query.SQL.Add(sql);
    query.Open;
    MaxLettrage.numLettrage := query.FieldByName('lettrage').AsInteger;
  finally
    query.Free;
  end;
  Result :=MaxLettrage;
end;


function TDM.selectchargements(Psql :string):TChargementArray;
var
  query : TSQLQuery;
  sql : string;
  chargement :TChargement;
  chargements :TChargementArray;
  i : integer;
begin
  query:=TSQLQuery.Create(self);
  query.SQLConnection := SQLConnection1;

  sql := 'select * from tb_chargement_veh '+Psql;

  i:=0;

  try
    query.SQL.Add(sql);
    query.Open;

    with query do
      begin
        while not Eof do
          begin
            SetLength(chargements,i+1);
            with chargement do
              begin
                Nid_Chargemet:=FieldByName('id_chargement').AsInteger;
                Snum_chargement:=FieldByName('num_chargement').AsString;
                Snum_immat_veh:=FieldByName('num_immat_veh').AsString;
                NTotal_bouteille:=FieldByName('Total_bouteille').AsInteger;
                Ntotal_kilo:=FieldByName('total_kilo').AsFloat;
                Rprix_livraison:=FieldByName('prix_livraison').AsFloat;
                Ddate_chargement:=FieldByName('date_chargement').AsString;
                SUsager:=FieldByName('Usager').AsString;
                Nstatut_chargement:=FieldByName('statut_chargement').AsInteger;
                Nstatut_controle:=FieldByName('statut_controle').AsInteger;
              end;
              chargements[i]:=chargement;
              Inc(i);
              query.Next;
          end;
          Result := chargements;
      end;
  finally
    query.Free;
  end;
end;


end.
