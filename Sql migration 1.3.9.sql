create table tb_stock_camion (
	id_sc int primary key auto_increment,
	vehicule varchar(12),
	code_art varchar(30),
	designation_art varchar(100),
	qte_vide int,
	qte_mag int,
	qte_total int
);
alter table tb_vte_chargveh add column usager varchar(4);
alter table tb_vte_chargveh add column statut_canc int(1);
update tb_vte_chargveh set statut_canc = 0;
alter table tb_vte_chargveh add column montant real after TKilo;
alter table tb_vte_chargveh add column piece varchar(30) after numCharg;
alter table tb_vte_chargveh add column statut_com int(1);
alter table tb_facturation add column num_comc varchar(12) after type_fact
-- update tb_vte_chargveh set statut_com = 1 where numCharg = 24;

create table tb_commande_camion(
	id_comc int primary key auto_increment,
	num_comc int,
	date_com date,
	chargement int,
	piece varchar(12),
	vehicule varchar(12),
	montant real,
	staut_cmd int(1)
);

/******************************/

create table tb_versement_camion(
	id_vc int primary key auto_increment,
	num_vers int,
	date_vc datetime ,
	num_caisse varchar(30),
	num_comc varchar(12),
	vehicule varchar(15),
	montant_vers real,
	observation text(254),
	usager varchar(4)
);

alter table tb_commande_camion 
	add column montant_p real after montant,
	add column montant_r real after montant_p;

create  table tb_statut_commande(
	id_sc int primary key,
	statut_libelle  varchar(12)
);

insert into tb_statut_commande(id_sc,statut_libelle) values (0,'En cours'),(1,'Clôturée');
/************************************/
alter table tb_commande_camion change staut_cmd statut_cmd int(1);
/**************************************/
alter table tb_boncom 
	add column vehicule varchar(15) after user_validate,
	add column nom_vehicule varchar(50) after vehicule;

alter table tb_boncom change num_bc num_bc int;
alter table tb_boncom_detail change num_bc num_bc int; 

/****************************************/
truncate table tb_stock_camion ;
truncate table tb_vte_chargveh ;
truncate table tb_vte_chargvehd ;
truncate table tb_commande_camion ;
/******************************************/
alter table tb_versement_camion 
	add column statut_canc int(1) ;
update tb_versement_camion set statut_canc = 0 ;
/*****************************************/
create table tb_livraison_camion(
	id_cc int primary key auto_increment,
	date_charg date,
	num_charg integer,
	code_livreur varchar(12),
	nom_livreur varchar(100),
	code_clt varchar(12),
	nom_clt varchar(100),
	camion varchar(12),
	pièce varchar(30),
	B3A varchar(3),
	B3  varchar(3),
	B6 varchar(3),
	B6R varchar(3),
	B12 varchar(3),
	B50 varchar(3),
	B25 varchar(3),
	B6E varchar(3),
	B12E varchar(3),
	RB3A varchar(3),
	RB3  varchar(3),
	RB6  varchar(3),
	RB6R varchar(3),
	RB12 varchar(3),
	RB50 varchar(3),
	RB25 varchar(3),
	RB6E varchar(3),
	RB12E varchar(3),
	type_ch varchar(2),
	montant real ,
	kilo_t real,
	zone_liv varchar(50),
	prix_zone real,
	prix_liv real,
	usager varchar(4)
);

alter table tb_article  
	add column alias_ret varchar(15) after alias_art;
	
alter table tb_livraison_camion  
	add column lettrage varchar(12) after date_charg;

alter table tb_vte_chargveh
	add column lettrage varchar(12) after id;

create table tb_retour_bout(
	id_rb int primary key auto_increment,
	lot varchar(12),
	camion varchar(12),
	chauf varchar(100),
	date_charg date,
	date_ret date,
	codeArt varchar(12),
	designationArt varchar(100),
	qte_ch int,
	qte_ret int,
	qte_eq int,
	usager varchar(10)
);

create table tb_livreur(
	id_liv int primary key auto_increment,
	code_liv varchar(4),
	nom_liv varchar(100),
	tel_liv varchar(50),
	adresse_liv varchar(100),
	mail_liv varchar(100)
);

create table tb_parametre(
	id_param int auto_increment primary key,
	nom varchar(100),
	description varchar(100),
	footer1 text,
	footer2 text,
	footer3 text
);

create table tb_catalogue_caisse(
	id_cat int auto_increment primary key,
	date_cat date,
	compte_caisse varchar(12),
	solde_caisse real
);

create table tb_catalogue_stock(
	id_cs int auto_increment primary key,
	date_cs date,
	code_art varchar(30),
	qte_vide int,
	qte_mag int,
	qte_totale int	
);

//*************/

alter table tb_sortie 
	add column code_art_src varchar(30) after id_sortie ;

alter table tb_sortie 
	add column piece varchar(30) after date_sortie;
	
alter table tb_sortie 
	add column statut_canc int(1) after piece;

CREATE TABLE tb_catalogue_date(
	id_cd int PRIMARY KEY	auto_increment,
	date_cd date
)

/*****28 07 2022******/
alter table tb_vte_chargveh  
	add column cod_client varchar(4) after numCharg;

alter table tb_vte_chargveh  
	add column nom_client varchar(100) after cod_client;

drop table tb_temp_chargement;

/******08 08 2022******/
alter table tb_compte_client_detail add statut_canc int(1);
alter table tb_compte_client_detail add num_ope int  after date_ccd;
UPDATE tb_compte_client_detail SET statut_canc = 0 ;

/******09 08 2022*****/
alter table tb_historique_caisse add column type_encais varchar(12) after nom_cli;

create table tb_type_service(
	id_ts integer primary key auto_increment,
	code_ts varchar(12),
	design_ts varchar(100)
);
/*****16 08 2022********/
alter table tb_vte_chargveh add column src_ch int(1) after numCharg;
/***** 22 08 2022********/
ALTER TABLE `tb_boncom` CHANGE `date_bc` `date_bc` DATE NULL DEFAULT NULL;
/***** 25 08 2022********/
CREATE TABLE tb_fiche_es (
	id_fes int primary key auto_increment,
	num_fes int,
	date_fes date,
	code_clt varchar(12),
	nom_clt varchar(100),
	matricule_veh varchar(12),
	code_art varchar(12),
	designation_art varchar(100),
	qte_vide int,
	qte_fuite int,
	qte_pleine int,
	kgArt REAL,
	kgfuite REAL,
	kgpleine REAL,
	type_fes int(1),
	usager varchar(4),
	statut_canc int(1)
);

CREATE TABLE tb_ficheEs_recap(
	id_fes int primary key auto_increment,
	num_fes int,
	date_fes date,
	code_clt varchar(12),
	nom_clt varchar(100),
	matricule_veh varchar(12),
	marque_veh varchar(100),
	B3A_Iv varchar(3),
	B3A_Ip varchar(3),
	B3A_If varchar(3),
	B3_Iv  varchar(3),
	B3_Ip  varchar(3),
	B3_If  varchar(3),
	B6_Iv varchar(3),
	B6_Ip varchar(3),
	B6_If varchar(3),
	B6R_Iv varchar(3),
	B6R_Ip varchar(3),
	B6R_If varchar(3),
	B12_Iv varchar(3),
	B12_Ip varchar(3),
	B12_If varchar(3),
	B50_Iv varchar(3),
	B50_Ip varchar(3),
	B50_If varchar(3),
	B25_Iv varchar(3),
	B25_Ip varchar(3),
	B25_If varchar(3),
	B6E_Iv varchar(3),
	B6E_Ip varchar(3),
	B6E_If varchar(3),
	B12E_Iv varchar(3),
	B12E_Ip varchar(3),
	B12E_If varchar(3),
	B3A_Ov varchar(3),
	B3A_Op varchar(3),
	B3A_Of varchar(3),
	B3_Ov  varchar(3),
	B3_Op  varchar(3),
	B3_Of  varchar(3),
	B6_Ov varchar(3),
	B6_Op varchar(3),
	B6_Of varchar(3),
	B6R_Ov varchar(3),
	B6R_Op varchar(3),
	B6R_Of varchar(3),
	B12_Ov varchar(3),
	B12_Op varchar(3),
	B12_Of varchar(3),
	B50_Ov varchar(3),
	B50_Op varchar(3),
	B50_Of varchar(3),
	B25_Ov varchar(3),
	B25_Op varchar(3),
	B25_Of varchar(3),
	B6E_Ov varchar(3),
	B6E_Op varchar(3),
	B6E_Of varchar(3),
	B12E_Ov varchar(3),
	B12E_Op varchar(3),
	B12E_Of varchar(3)
);

/***** 30 08 2022********/

CREATE TABLE tb_ficheEs_Total(
	id_ft int primary key auto_increment,
	num_ft int,
	date_ft date,
	code_clt varchar(12),
	nom_clt varchar(100),
	matricule_veh varchar(12),
	marque_veh varchar(100),
	B3A_I varchar(4),
	B3_I varchar(4),
	B6_I varchar(4),
	B6R_I varchar(4),
	B12_I varchar(4),
	B25_I varchar(4),
	B50_I varchar(4),
	B6E_I varchar(4),
	B12E_I varchar(4),
	B14_I varchar(4),
	B20_I varchar(4),
	B35_I varchar(4),
	B3A_S varchar(4),
	B3_S varchar(4),
	B6_S varchar(4),
	B6R_S varchar(4),
	B12_S varchar(4),
	B25_S varchar(4),
	B50_S varchar(4),
	B6E_S varchar(4),
	B12E_S varchar(4),
	B14_S varchar(4),
	B20_S varchar(4),
	B35_S varchar(4),
	--
	type_ft int(1),
	usager varchar(10),
	statut_canc int(1)
);

alter table tb_vehicule add column code_clt varchar(12) after marque_veh;
alter table tb_vehicule drop column Modele_veh;

/*****03 09 2022*****/

create table tb_etat_journal (
	id_ej int primary key auto_increment,
	date_ej date,
	num_ope varchar(12),
	num_piece varchar(12),
	libelle varchar(100),
	debit varchar(12),
	credit varchar(12),
	sens varchar(1),
	usager varchar(12)
);

/*****14 09 2022*****/

CREATE TABLE tb_fiche_esH(
	id_fh int PRIMARY KEY auto_increment,
	num_fh int,
	date_fh date,
	code_clt varchar(12),
	nom_clt varchar(100),
	num_veh varchar(12),
	nom_veh varchar(100),
	typeFs int,
	usager varchar(12),
	statut_canc int(1)	
);

alter table tb_fiche_es add column num_his int(1) after num_fes;
alter table tb_fiche_esH add column num_his int(1) after num_fh;
alter table tb_fichees_total add column num_his int(1) after num_ft;
alter table tb_fichees_recap  add column num_his int(1) after num_fes;

/*Truncate TABLE tb_fiche_es;
Truncate TABLE tb_fiche_esH;
Truncate TABLE tb_fichees_total;
Truncate TABLE tb_fichees_recap;*/

/*****14 09 2022*****/


create table tb_fichei_recap (
	id_fes int primary key auto_increment,
	num_fes int,
	num_his int(1),
	date_fes date,
	code_clt varchar(12),
	nom_clt varchar(100),
	matricule_veh varchar(12),
	marque_veh varchar(100),
	B3A_Iv varchar(4),
	B3A_Ip varchar(4),
	B3A_If varchar(4),
	B3_Iv  varchar(4),
	B3_Ip  varchar(4),
	B3_If  varchar(4),
	B6_Iv varchar(4),
	B6_Ip varchar(4),
	B6_If varchar(4),
	B6R_Iv varchar(4),
	B6R_Ip varchar(4),
	B6R_If varchar(4),
	B12_Iv varchar(4),
	B12_Ip varchar(4),
	B12_If varchar(4),
	B50_Iv varchar(4),
	B50_Ip varchar(4),
	B50_If varchar(4),
	B25_Iv varchar(4),
	B25_Ip varchar(4),
	B25_If varchar(4),
	B6E_Iv varchar(4),
	B6E_Ip varchar(4),
	B6E_If varchar(4),
	B12E_Iv varchar(4),
	B12E_Ip varchar(4),
	B12E_If varchar(4)
);

create table tb_ficheo_recap (
	id_fes int primary key auto_increment,
	num_fes int,
	num_his int(1),
	date_fes date,
	code_clt varchar(12),
	nom_clt varchar(100),
	matricule_veh varchar(12),
	marque_veh varchar(100),
	B3A_Ov varchar(4),
	B3A_Op varchar(4),
	B3A_Of varchar(4),
	B3_Ov  varchar(4),
	B3_Op  varchar(4),
	B3_Of  varchar(4),
	B6_Ov varchar(4),
	B6_Op varchar(4),
	B6_Of varchar(4),
	B6R_Ov varchar(4),
	B6R_Op varchar(4),
	B6R_Of varchar(4),
	B12_Ov varchar(4),
	B12_Op varchar(4),
	B12_Of varchar(4),
	B50_Ov varchar(4),
	B50_Op varchar(4),
	B50_Of varchar(4),
	B25_Ov varchar(4),
	B25_Op varchar(4),
	B25_Of varchar(4),
	B6E_Ov varchar(4),
	B6E_Op varchar(4),
	B6E_Of varchar(4),
	B12E_Ov varchar(4),
	B12E_Op varchar(4),
	B12E_Of varchar(4)
);
DROP TABLE tb_ficheEs_recap;

/*****29 09 2022*****/

alter table tb_fichees_total drop column type_ft,
							 drop column usager,
							 drop column statut_canc;

Alter table tb_ficheo_recap  add column if not exists B14_Ov varchar(4) ,
							 add column if not exists B14_Op varchar(4) ,
							 add column if not exists B14_Of varchar(4);

Alter table tb_fichei_recap  add column if not exists B14_Iv varchar(4) ,
							 add column if not exists B14_Ip varchar(4) ,
							 add column if not exists B14_If varchar(4);

Alter table tb_ficheo_recap  add column if not exists B20_Ov varchar(4) ,
							 add column if not exists B20_Op varchar(4) ,
							 add column if not exists B20_Of varchar(4);

Alter table tb_fichei_recap  add column if not exists B20_Iv varchar(4) ,
							 add column if not exists B20_Ip varchar(4) ,
							 add column if not exists B20_If varchar(4);
							
Alter table tb_ficheo_recap  add column if not exists B35_Ov varchar(4) ,
							 add column if not exists B35_Op varchar(4) ,
							 add column if not exists B35_Of varchar(4);

Alter table tb_fichei_recap  add column if not exists B35_Iv varchar(4) ,
							 add column if not exists B35_Ip varchar(4) ,
							 add column if not exists B35_If varchar(4);
					/***************************/		
Alter table tb_ficheo_recap  add column if not exists B6M_Ov varchar(4) ,
							 add column if not exists B6M_Op varchar(4) ,
							 add column if not exists B6M_Of varchar(4);

Alter table tb_fichei_recap  add column if not exists B6M_Iv varchar(4) ,
							 add column if not exists B6M_Ip varchar(4) ,
							 add column if not exists B6M_If varchar(4);

Alter table tb_ficheo_recap  add column if not exists B12M_Ov varchar(4) ,
							 add column if not exists B12M_Op varchar(4) ,
							 add column if not exists B12M_Of varchar(4);

Alter table tb_fichei_recap  add column if not exists B12M_Iv varchar(4) ,
							 add column if not exists B12M_Ip varchar(4) ,
							 add column if not exists B12M_If varchar(4);

					/*******************************/		
Alter table tb_ficheo_recap  add column if not exists B6T_Ov varchar(4) ,
							 add column if not exists B6T_Op varchar(4) ,
							 add column if not exists B6T_Of varchar(4);

Alter table tb_fichei_recap  add column if not exists B6T_Iv varchar(4) ,
							 add column if not exists B6T_Ip varchar(4) ,
							 add column if not exists B6T_If varchar(4);
							
Alter table tb_ficheo_recap  add column if not exists B12T_Ov varchar(4) ,
							 add column if not exists B12T_Op varchar(4) ,
							 add column if not exists B12T_Of varchar(4);

Alter table tb_fichei_recap  add column if not exists B12T_Iv varchar(4) ,
							 add column if not exists B12T_Ip varchar(4) ,
							 add column if not exists B12T_If varchar(4);

/*****02 10 2022*****/
							
Insert into tb_article values(null,'011C14','Bouteille de recharge gaz butane 14kgs','B14','RB14','Charge gaz butane',14,'PFGB');
Insert into tb_article values(null,'02114K','Bouteille de consignation 14kgs','B14','RB14','Consignation',14,'PFBC');

Insert into tb_article values(null,'011C20','Bouteille de recharge gaz butane 20kgs','B20','RB20','Charge gaz butane',20,'PFGB');
Insert into tb_article values(null,'02120K','Bouteille de consignation 20kgs','B20','RB20','Consignation',20,'PFBC');

Insert into tb_article values(null,'011C35','Bouteille de recharge gaz butane 35kgs','B35','RB35','Charge gaz butane',35,'PFGB');
Insert into tb_article values(null,'02135K','Bouteille de consignation 35kgs','B35','RB35','Consignation',35,'PFBC');

Insert into tb_article values(null,'011C06M','Bouteille de recharge gaz butane 6kgs MRS','B6M','RB6M','Charge gaz butane',6,'PFGB');
Insert into tb_article values(null,'02106KM','Bouteille de consignation 6kgs MRS','B6M','RB6M','Consignation',6,'PFBC');

Insert into tb_article values(null,'011C12M','Bouteille de recharge gaz butane 12kgs MRS','B12M','RB12M','Charge gaz butane',12,'PFGB');
Insert into tb_article values(null,'02112KM','Bouteille de consignation 12kgs MRS','B12M','RB12M','Consignation',12,'PFBC');

Insert into tb_article values(null,'011C06T','Bouteille de recharge gaz butane 6kgs T-oil','B6T','RB6T','Charge gaz butane',6,'PFGB');
Insert into tb_article values(null,'02106KT','Bouteille de consignation 6kgs T-oil','B6T','RB6T','Consignation',6,'PFBC');

Insert into tb_article values(null,'011C12T','Bouteille de recharge gaz butane 12kgs T-oil','B12T','RB12T','Charge gaz butane',12,'PFGB');
Insert into tb_article values(null,'02112KT','Bouteille de consignation 12kgs T-oil','B12T','RB12T','Consignation',12,'PFBC');

Insert into tb_stock values(null,'011C14','PFGB',0,0,0,0);
Insert into tb_stock values(null,'02114K','PFBC',0,0,0,0);

Insert into tb_stock values(null,'011C20','PFGB',0,0,0,0);
Insert into tb_stock values(null,'02120K','PFBC',0,0,0,0);

Insert into tb_stock values(null,'011C35','PFGB',0,0,0,0);
Insert into tb_stock values(null,'02135K','PFBC',0,0,0,0);

Insert into tb_stock values(null,'011C06M','PFGB',0,0,0,0);
Insert into tb_stock values(null,'02106KM','PFBC',0,0,0,0);

Insert into tb_stock values(null,'011C12M','PFGB',0,0,0,0);
Insert into tb_stock values(null,'02112KM','PFBC',0,0,0,0);

Insert into tb_stock values(null,'011C06T','PFGB',0,0,0,0);
Insert into tb_stock values(null,'02106KT','PFBC',0,0,0,0);

Insert into tb_stock values(null,'011C12T','PFGB',0,0,0,0);
Insert into tb_stock values(null,'02112KT','PFBC',0,0,0,0);


Alter table tb_fichees_total  add column if not exists B6M_I varchar(4) after B35_I ,
							 add column if not exists B12M_I varchar(4) after B6M_I,
							 add column if not exists B6T_I varchar(4) after B12M_I ,
							 add column if not exists B12T_I varchar(4) after B6T_I ,
							 add column if not exists B6M_S varchar(4) after B35_S ,
							 add column if not exists B12M_S varchar(4) after B6M_S,
							 add column if not exists B6T_S varchar(4) after B12M_S ,
							 add column if not exists B12T_S varchar(4) after B6T_S;
							
/*********13 10 2022 ************** */

alter table tb_boncom add column dest varchar(15);

alter table tb_boncom add column tbout int,
					  add column tkg float;

alter table tb_boncom add column date_val date after date_bc

create table tb_day_diagram_bc(
	id_dbc int auto_increment primary key,
	date_dbc date,
	tkg real
);

create table tb_mois_diagram_bc(
	id_dbc int auto_increment primary key,
	mois_dbc date,
	tkg real
);

create table tb_an_diagram_bc(
	id_dbc int auto_increment primary key,
	an_dbc date,
	tg real
);

/*********19 10 2022 **************/

create table tb_day_diagram_facture(
	id_dbf int auto_increment primary key,
	date_dbf date,
	tmontant real,
	libelle varchar(10)	
);

create table tb_stock_gene(
	id_sg int primary key auto_increment,
	code_art varchar(15),
	designation_art varchar(100),
	qte_vide int,
	qte_mag int,
	qte_totale int
);

create table tb_jounalCaisse(
	id_jcd int primary key auto_increment,
	date_jcd date,
	debit real,
	credit real,
	solde real
);

/********* 22 10 2022 ************/

create table tb_type_client(
	id_tclt int primary key auto_increment,
	code_tclt varchar(4),
	designation_tclt varchar(100)
);

insert into tb_type_client values(null,'CN01','CLIENT NORMAL'),(null,'CP01','CLIENT PERSONNEL'),(null,'CP02','CLIENT PASSAGER');
alter table tb_client add column TypClt varchar(4);
alter table tb_fiche_esh add column comment text after nom_veh;

alter table tb_facturation add column code_mag varchar(10) after num_fact

/********* 05 11 2022 ************/

alter table tb_article add column ordre int;

update tb_article set ordre = 101 where code_art = '011C03';
update tb_article set ordre = 102 where code_art = '011C03.';
update tb_article set ordre = 103 where code_art = '011C06';
update tb_article set ordre = 104 where code_art = '011C06.';
update tb_article set ordre = 105 where code_art = '011C12';
update tb_article set ordre = 106 where code_art = '011C25';
update tb_article set ordre = 107 where code_art = '011C50';
update tb_article set ordre = 108 where code_art = '011C14';
update tb_article set ordre = 109 where code_art = '011C20';
update tb_article set ordre = 110 where code_art = '011C35';
update tb_article set ordre = 111 where code_art = '011C06E';
update tb_article set ordre = 112 where code_art = '011C12E';
update tb_article set ordre = 113 where code_art = '011C06M';
update tb_article set ordre = 114 where code_art = '011C12M';
update tb_article set ordre = 115 where code_art = '011C06T';
update tb_article set ordre = 116 where code_art = '011C12T';

update tb_article set ordre = 201 where code_art = '02103K';
update tb_article set ordre = 202 where code_art = '02103K.';
update tb_article set ordre = 203 where code_art = '011K06S';
update tb_article set ordre = 204 where code_art = '011K06S.';
update tb_article set ordre = 205 where code_art = '02112K';
update tb_article set ordre = 206 where code_art = '02125K';
update tb_article set ordre = 207 where code_art = '0250K';
update tb_article set ordre = 208 where code_art = '02114K';
update tb_article set ordre = 209 where code_art = '02120K';
update tb_article set ordre = 210 where code_art = '02135K';
update tb_article set ordre = 211 where code_art = '021E6K';
update tb_article set ordre = 212 where code_art = '021E12K';
update tb_article set ordre = 213 where code_art = '02106KM';
update tb_article set ordre = 214 where code_art = '02112KM';
update tb_article set ordre = 215 where code_art = '02106KT';
update tb_article set ordre = 216 where code_art = '02112KT';

/********* 16 11 2022 ************/

alter table tb_livraison_camion 
	add column B14 varchar(4) after B12E,
	add column B20 varchar(4) after B14,
	add column B35 varchar(4) after B20;
	
alter table tb_livraison_camion 
	add column RB14 varchar(4) after RB12E,
	add column RB20 varchar(4) after RB14,
	add column RB35 varchar(4) after RB20;
	
/********* 10 12 2022 ************/

alter table tb_depense 
	add column typedep varchar(100) after num_caisse;
	

create table tb_type_depense(
	id_tdep int primary key auto_increment,
	code_tdep varchar(10),
	designation_tdep varchar(100)
);


insert into tb_type_depense values (null,'REPCAM','REPARATION DE VEHICULE'),
								   (null,'LOCAT','PAYEMENT DE LOYER'),
								   (null,'PAYSAL','PAYEMENT DE SALAIRE'),
								   (null,'ACHGAZ','ACHAT DE GAZ'),
								   (null,'PRESCE','PRESTATION DE SERVICE'),
								   (null,'PAYELE','PAYEMENT D''ELECTICITE'),
								   (null,'PRESCE','PRESTATION DE SERVICE'),
								   (null,'VERBAK','VERSEMENT A LA BANQUE'),
								   (null,'AUTCHA','AUTRES CHARGES');
								  
/********** 04 02 2023 ****************/
create table tb_fournisseur (
	id_fourn serial,
	code_fourn varchar(4),
	nom_fourn varchar(100),
	tel_fourn varchar(50),
	email_fourn varchar(100),
	adresse_froun Text
);


create table tb_creance_client(
	id_crea serial,
	date_crea date,
	code_clt varchar(4),
	type_crea varchar(6),
	libelle_crea varchar(255),
	montant real,
	statut varchar(20),
	user_val varchar(4),
	canc int
);

create table tb_dette_fourn(
	id_detf serial,
	date_detf date,
	code_fourn varchar(4),
	type_detf varchar(6),
	libelle_detf varchar(255),
	montant  real,
	statut varchar(20),
	user_val varchar(4),
	canc int
);

create table type_creance(
	id_tcrea serial,
	code_tcrea varchar(6),
	designation_tcrea varchar(100)
);

create table type_dette(
	id_tdetf serial,
	code_tdetf varchar(6),
	designation_tdetf varchar(100)
);

alter table tb_facturation
	add column pdv_cdp varchar(50) after nom_clt;

//***************22 04 2023 ************************/

alter table tb_stock 
	change qte_vide qte_vide real,
	change qte_mag qte_mag real,
	change qte_totale qte_totale real;

alter table tb_facturation_detail change qte_art qte_art real;

alter table tb_sortie change qte_sortie  qte_sortie real;
alter table tb_entree change qte_entree  qte_entree real;
alter table tb_mouvement_stock change qte_sortie  qte_sortie real,
	change qte_entree  qte_entree real;


								   