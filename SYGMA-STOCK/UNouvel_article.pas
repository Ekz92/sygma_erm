unit UNouvel_article;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  Tfrmadd_article = class(TForm)
    Label3: TLabel;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    edcode_art: TEdit;
    edDesignation: TEdit;
    edAlias: TEdit;
    cbtype: TComboBox;
    edcode_mag: TEdit;
    cbMagasin: TComboBox;
    edKilo: TEdit;
    edAlias_rb: TEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    edcode_rech: TEdit;
    edDesign_rech: TEdit;
    PopupMenu1: TPopupMenu;
    Modifier1: TMenuItem;
    Supprimer1: TMenuItem;
    Consulter1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbMagasinCloseUp(Sender: TObject);
    procedure Modifier1Click(Sender: TObject);
    procedure Supprimer1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmadd_article: Tfrmadd_article;
  vOldCodeArt : string;

implementation

{$R *.dfm}

uses UDM, records, UAdd_Type_article;

procedure Tfrmadd_article.cbMagasinCloseUp(Sender: TObject);
var
  magasin : TMagasin;
  nom_mag : string;
begin
  nom_mag := cbMagasin.Text;
  magasin := DM.selectMagasinBynom(nom_mag);
  edcode_mag.Text := magasin.SCode_mag;
end;

procedure Tfrmadd_article.FormActivate(Sender: TObject);
var
  QSelect_art,
  QSelect_TArt:TSQLQuery;
  i : integer;
begin
//-----------------------Affichage type article-----------------

  QSelect_Tart:=TSQLQuery.Create(self);
  QSelect_Tart.SQLConnection:=dm.SQLConnection1;

  with QSelect_Tart, SQL do
    begin
      Add('select * from tb_type_article order by id_type_art desc');
    end;

    try
      QSelect_Tart.open;

      for I := 1 to QSelect_Tart.RecordCount do
        with StringGrid1 do
          begin
            cbtype.Items.Add(QSelect_Tart.FieldByName('designation_Type_art').AsString);
            QSelect_Tart.Next;
          end;
    finally
      QSelect_Tart.Free;
    end;

end;

procedure Tfrmadd_article.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cbtype.Clear;
cbMagasin.Clear;

end;

procedure Tfrmadd_article.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0] := 'Code' ;
    Cells[1,0] := 'Désignation' ;
    Cells[2,0] := 'Alias' ;
    Cells[3,0] := 'Type' ;
    Cells[4,0] := 'Kgs' ;
    Cells[5,0] := 'Magasin' ;
  end;
end;

procedure Tfrmadd_article.FormShow(Sender: TObject);
var
  magasins : TMagasinArray;
  articles : TarticleArray;
  I: Integer;
  Psql : string;
begin
  SpeedButton1.Caption :='Ajouter';

  Psql:='';
  magasins := DM.selectMagasins(Psql);

  for I := Low(magasins) to High(magasins) do
    begin
      cbMagasin.Items.Add(magasins[i].Sdesignation_mag);
    end;

{ Affichage d'article}

  Psql := '';
  articles := DM.selectArticles(Psql)      ;
  StringGrid1.RowCount := Length(articles)+1;

  for I := Low(articles) to High(articles) do
    begin
       with StringGrid1 do
          begin
            Cells[0,i+1] := articles[i].Scode_art;
            Cells[1,i+1] := articles[i].Sdesignation_art;
            Cells[2,i+1] := articles[i].Salias_art;
            Cells[3,i+1] := articles[i].Stype_art;
            Cells[4,i+1] := FloatToStr(articles[i].Rkilo);
            Cells[5,i+1] := articles[i].Scode_mag;
          end;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows:=1;
end;

procedure Tfrmadd_article.Modifier1Click(Sender: TObject);
begin
SpeedButton1.Caption := 'Modifier';
edcode_art.ReadOnly:=True;
//edAlias.Enabled := False;
//edAlias_rb.Enabled:=false;

vOldCodeArt := StringGrid1.Cells[0,StringGrid1.Row];

with StringGrid1 do
  begin
    edcode_art.Text := Cells[0,Row];
    edDesignation.Text := Cells[1,Row];
    edAlias.Text := Cells[2,Row];
    cbtype.Text := Cells[3,Row];
    edKilo.Text := Cells[4,Row];
    edcode_mag.Text := Cells[5,Row];
  end;

end;

procedure Tfrmadd_article.SpeedButton1Click(Sender: TObject);
var
  I: Integer;
  article,sArticle : TArticle;
  articles : TarticleArray;
  initStock : TStock;
  Psql, SqlUpd_art,
  codeArt,SqlUpdateStock,
  sqlUpTarif,
  sqlUpFicheEs ,
  SqlAltFichei,
  SqlAltFicheo,
  SqlFicheEsTotal : string;

  chkSaisi : Boolean;
begin

  if (edDesignation.Text<>'')
      and (edcode_art.Text<>'')
        and (edKilo.Text<>'')
          and (cbtype.Text<>'')
            and (edcode_mag.Text<>'')
      then chkSaisi := True else chkSaisi:=False;

  if chkSaisi=True then
    begin
      //----------------Insertion dans la table article------------------
        with article do
          begin
              Scode_art := Trim(edcode_art.Text);
              Sdesignation_art := Trim(edDesignation.Text);
              Salias_art := Trim(edAlias.Text);
              Salias_ret := Trim(edAlias_rb.Text);
              Stype_art := cbtype.Text;
              Rkilo:= StrToFloat(edKilo.Text);
              Scode_mag := Trim(edcode_mag.Text);
              Nordre:=999;
          end;
      //-------------------------Création de l'article dans la table stock---------------

        with initStock do
          begin
            Scode_art:=Trim(edcode_art.Text);
            Scode_mag:=Trim(edcode_mag.Text);
            NQte_vide:= 0;
            NQte_mag:= 0 ;
            Nqte_total := 0 ;
            Rcoutachat := 0;
          end;

//          ajout de l'article dans la table fiche entree et sortie

//        SqlAltFichei := 'Alter table tb_fichei_recap '
//                        +' add column if not exists '+edAlias.Text+'_Iv varchar(4)' +','
//                        +' add column if not exists '+edAlias.Text+'_Ip varchar(4)'  +','
//                        +' add column if not exists '+edAlias.Text+'_If varchar(4)' ;
//
//        SqlAltFicheo := 'Alter table tb_ficheo_recap '
//                        +' add column if not exists '+edAlias.Text+'_Ov varchar(4)' +','
//                        +' add column if not exists '+edAlias.Text+'_Op varchar(4)' +','
//                        +' add column if not exists '+edAlias.Text+'_Of varchar(4)' ;
//
//        SqlFicheEsTotal:= 'Alter table tb_fichees_total '
//                        +' add column if not exists '+edAlias.Text+'_I varchar(4)'+' before usager' +','
//                        +' add column if not exists '+edAlias.Text+'_S varchar(4)'+' before usager';

      { Modification d'article dans la table article}
        SqlUpd_art := 'Update tb_article set '
                       +' designation_art = '+QuotedStr(edDesignation.Text)+','
                       +' alias_art = '+QuotedStr(edAlias.Text)+','
                       +' alias_ret = '+QuotedStr(edAlias_rb.Text)+','
                       +' type_art = '+QuotedStr(cbtype.Text)+','
                       +' kilo = '+edKilo.Text+','
                       +' code_mag = '+QuotedStr(edcode_mag.Text)
                       +' where code_art = '+QuotedStr(edcode_art.Text);

      SqlUpdateStock := ' Update tb_stock set code_mag = '+QuotedStr(edcode_mag.Text)
                          +' where code_art = '+QuotedStr(edcode_art.Text);

      sqlUpTarif := ' Update tb_tarif_defprix set '
                      +' code_art = '+QuotedStr(edcode_art.Text)
                      +' where code_art = '+QuotedStr(vOldCodeArt)  ;

      sqlUpFicheEs :=' Update tb_fiche_es set '
                      +' designation_art = '+QuotedStr(edDesignation.Text)
                      +' where code_art ='+QuotedStr(edcode_art.Text);
      //sqlUpAliasFes
       { Exécution des requetes}

       codeArt := edcode_art.Text ;

       sArticle := DM.selectArticleByCode(codeArt);

      if (SpeedButton1.Caption = 'Ajouter') and (chkSaisi = True) then
          begin
           if sArticle.Scode_art.IsEmpty then
              begin
                DM.InitStock(initStock);
                dm.InsertArticle(article);

//                dm.UpdateTable(SqlAltFichei);
//                dm.UpdateTable(SqlAltFicheo);
//                dm.UpdateTable(SqlFicheEsTotal);
              end else
              begin
                MessageDlg('Cet article existe déjà dans la base',mtError,[mbOK],0);
              end;
           end else
            if (SpeedButton1.Caption = 'Modifier') and (chkSaisi=True) then
                begin
                  dm.UpdateTable(SqlUpd_art);  // modification dans la table artice
                  dm.UpdateTable(SqlUpdateStock);//Modification dans la table stock
                  dm.UpdateTable(sqlUpTarif); //Modification du codeArt dans la table de tarif
                  dm.UpdateTable(sqlUpFicheEs);//Fiche d'entree et sortie
                end
    end else
    begin
       MessageDlg('Merci de renseigner les champs',mtError,[mbRetry],0);
       exit
    end;
  SpeedButton2.Click;
  FormShow(Sender);
  FormActivate(sender);
end;

procedure Tfrmadd_article.SpeedButton2Click(Sender: TObject);
begin
  edcode_art.Clear;
  edDesignation.Clear;
  edAlias.Clear;
  edAlias_rb.Clear;
  cbtype.Clear;
  edKilo.Clear;
  cbMagasin.Clear;
  edKilo.Clear;
  edcode_mag.Clear;
  SpeedButton1.Caption :='Ajouter';
  edcode_art.ReadOnly:=False;

end;

procedure Tfrmadd_article.SpeedButton3Click(Sender: TObject);
begin
frmAdd_Type_article.ShowModal;
end;

procedure Tfrmadd_article.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
    with Sender As TStringGrid do with canvas do
    begin
      { selection de la couleur de fond}
      if gdFixed in State then
        Brush.Color:=clBtnFace
      else
        if gdSelected in State then
          Brush.Color:=clNavy//$00000046
        else
          if Odd(ARow) then
            Brush.Color :=$006A9BFF//$FFE0FF clgreen
          else
            Brush.Color:=$00FBDA97;//$FFFFE0  clBlue
      {Design du fond}
      FillRect(Rect);
      {Selection de la couleur d'ecriture}
      if gdSelected in State then
        font.Color:=clwhite
        else
        font.Color:=clblack;
      {Design du texte}
      TextOut(Rect.Left,Rect.Top,Cells[ACol,ARow]);
    end;

end;

procedure Tfrmadd_article.Supprimer1Click(Sender: TObject);
var
  Psql,Psql2 ,
  SqlFichei,
  SqlFicheo,
  SqlFicheTot,vAlias: string;
begin
  Psql := 'Delete from tb_article where code_art = '+QuotedStr(StringGrid1.Cells[0,StringGrid1.Row]);
  Psql2 := 'Delete from tb_stock where code_art = '+QuotedStr(StringGrid1.Cells[0,StringGrid1.Row]);

//  vAlias :=StringGrid1.Cells[2,StringGrid1.Row];
//
//  SqlFichei := 'alter table tb_fichei_recap drop column '+vAlias+'_Iv' +','
//                                            +' drop column '+vAlias+'_Ip' +','
//                                            +' drop column '+vAlias+'_If';
//
//  SqlFicheo := 'alter table tb_ficheo_recap drop column '+vAlias+'_Ov' +','
//                                            +' drop column '+vAlias+'_Op' +','
//                                            +' drop column '+vAlias+'_Of';
//
//  SqlFicheTot := 'alter table tb_fichees_total drop column '+vAlias+'_I' +','
//                                              +'drop column '+vAlias+'_S';


  if MessageDlg('Voulez-vous supprimer cet article ?',mtWarning,[mbYes, mbNo],0)=mrYes  then
    begin
      dm.DeleteFromTable(Psql); // Suppresion dans tarticle
      dm.DeleteFromTable(Psql2);// Suppression dans tstock

//      dm.UpdateTable(SqlFichei);
//      dm.UpdateTable(SqlFicheo);
//      dm.UpdateTable(SqlFicheTot);
    end;
    FormShow(sender);
end;

end.
