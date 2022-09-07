unit UIntegrateur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.Menus, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmIntegrateur = class(TForm)
    Label2: TLabel;
    panel1: TPanel;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbdate: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Nouveau1: TMenuItem;
    Vhicule1: TMenuItem;
    ypevhicule1: TMenuItem;
    Chauffeur1: TMenuItem;
    ypeservice1: TMenuItem;
    Fichedemission2: TMenuItem;
    Missionordinaire2: TMenuItem;
    Missionspciale2: TMenuItem;
    Dconnexion1: TMenuItem;
    Quitter1: TMenuItem;
    Edition1: TMenuItem;
    Annulation1: TMenuItem;
    BL1: TMenuItem;
    Chargement1: TMenuItem;
    Mission1: TMenuItem;
    ChargementBL1: TMenuItem;
    Modification1: TMenuItem;
    Reimpression1: TMenuItem;
    Facture1: TMenuItem;
    BL3: TMenuItem;
    Caisse2: TMenuItem;
    Reudecaisse1: TMenuItem;
    Bordereeaudedcaissement1: TMenuItem;
    Bordereaudencaissement1: TMenuItem;
    Commande2: TMenuItem;
    Fichedecommande1: TMenuItem;
    Chargement3: TMenuItem;
    Fichedispatching1: TMenuItem;
    BC1: TMenuItem;
    Outils1: TMenuItem;
    Opration1: TMenuItem;
    Dchargementdevhicule1: TMenuItem;
    ImportationdeBL1: TMenuItem;
    Cltureouverture1: TMenuItem;
    Contrle1: TMenuItem;
    Retourbouteille1: TMenuItem;
    Listedecontrle1: TMenuItem;
    Magasin2: TMenuItem;
    ypedebouteil1: TMenuItem;
    Magasin1: TMenuItem;
    Entreeenmagasin1: TMenuItem;
    Sortiedumagasin1: TMenuItem;
    Etat1: TMenuItem;
    Etatdesentreenstock1: TMenuItem;
    Etatdesentreenstock2: TMenuItem;
    Etatdustock1: TMenuItem;
    ListeMagasin1: TMenuItem;
    Mouvementdustock1: TMenuItem;
    Pararticle1: TMenuItem;
    Etatdesentresannuls1: TMenuItem;
    ypearticle1: TMenuItem;
    Listedesarticles1: TMenuItem;
    Oprationsdivers1: TMenuItem;
    Entre1: TMenuItem;
    Sortie1: TMenuItem;
    BondeComBC1: TMenuItem;
    CrerunBC1: TMenuItem;
    ListedeBC1: TMenuItem;
    Banque1: TMenuItem;
    Nouveau2: TMenuItem;
    Liste2: TMenuItem;
    Admin1: TMenuItem;
    Sauvegarde1: TMenuItem;
    st_SideMenu: TStringGrid;
    PnArticle: TPanel;
    Label5: TLabel;
    Image8: TImage;
    PnMagasin: TPanel;
    Label6: TLabel;
    Image2: TImage;
    PnEntree: TPanel;
    Label7: TLabel;
    Image3: TImage;
    PnTransfert: TPanel;
    Label8: TLabel;
    Image4: TImage;
    PnListe: TPanel;
    Label9: TLabel;
    Image7: TImage;
    Splitter1: TSplitter;
    Image1: TImage;
    Panel4: TPanel;
    Label10: TLabel;
    ImgEntree: TImage;
    BondeLivBL1: TMenuItem;
    CrerunBL1: TMenuItem;
    RappeldeBL1: TMenuItem;
    ListedeBL1: TMenuItem;
    LivrsNonlivrs1: TMenuItem;
    procedure ypedebouteil1Click(Sender: TObject);
    procedure Magasin1Click(Sender: TObject);
    procedure Entreeenmagasin1Click(Sender: TObject);
    procedure Sortiedumagasin1Click(Sender: TObject);
    procedure Etatdesentreenstock1Click(Sender: TObject);
    procedure Etatdesentreenstock2Click(Sender: TObject);
    procedure Etatdustock1Click(Sender: TObject);
    procedure ListeMagasin1Click(Sender: TObject);
    procedure Pararticle1Click(Sender: TObject);
    procedure Etatdesentresannuls1Click(Sender: TObject);
    procedure Listedesarticles1Click(Sender: TObject);
    procedure Sortie1Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure st_SideMenuDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure st_SideMenuDblClick(Sender: TObject);
    procedure ypearticle1Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Cltureouverture1Click(Sender: TObject);
    procedure ImgEntreeClick(Sender: TObject);
    procedure CrerunBL1Click(Sender: TObject);
    procedure LivrsNonlivrs1Click(Sender: TObject);
    procedure CrerunBC1Click(Sender: TObject);
    procedure ListedeBC1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmIntegrateur: TfrmIntegrateur;
  vBtn : integer;

implementation

{$R *.dfm}

uses UNouvel_article, UMagasin, UEntree_en_magasin, UTransfertInterMagasin,
  UListeEntree, UListeSortie, UFiche_stock, UMagasin_liste, UMouvStockByArticle,
  UEntreeCancListe, UListe_article, USortieDivers, UAdd_Type_article, records,
  UDM, UClotureDay, UFicheEntree, UFicheSortie, UFicheRecap_es,
  UListeFcheEntree, UListeFcheSortie, URapprochementFicheEs, UCreer_BL,
  UL_BL_par_date, UBon_Commande, UListeBonCommande;

procedure TfrmIntegrateur.Cltureouverture1Click(Sender: TObject);
begin
if MessageDlg('Voulez-vous cl�turer la journ�e ?', mtConfirmation,[mbYes,mbNo],0)=mryes then
   frmClotureDay.ShowModal;

end;

procedure TfrmIntegrateur.CrerunBC1Click(Sender: TObject);
begin
frmbonCommande.ShowModal;
end;

procedure TfrmIntegrateur.CrerunBL1Click(Sender: TObject);
begin
frm_nouveau_BL.ShowModal;
end;

procedure TfrmIntegrateur.Entreeenmagasin1Click(Sender: TObject);
begin
frmEntree_magasin.ShowModal;
end;

procedure TfrmIntegrateur.Etatdesentreenstock1Click(Sender: TObject);
begin
frmListeEntree.ShowModal;
end;

procedure TfrmIntegrateur.Etatdesentreenstock2Click(Sender: TObject);
begin
frmListeSortie.ShowModal;
end;

procedure TfrmIntegrateur.Etatdesentresannuls1Click(Sender: TObject);
begin
frmEntreeCancListe.ShowModal;
end;

procedure TfrmIntegrateur.Etatdustock1Click(Sender: TObject);
begin
frmFiche_stock.ShowModal;
end;

procedure TfrmIntegrateur.FormShow(Sender: TObject);
var
  dd : TDateSys ;
begin
st_SideMenu.Cells[0,0]:='Sous-menu';
st_SideMenu.RowCount:=2;
st_SideMenu.Rows[1].Clear;
vBtn :=0;

  dd := dm.selectCatDate;
  lbdate.Caption := dd.Sdate_cd;

 if lbdate.Caption <> DateToStr(now) then
    begin
      MessageDlg('Erreur, Merci de v�rifier si vous aviez cl�turer la journ�e d''hier',mtError,[mbOK],0);
      with frmIntegrateur do
        begin
          Fichier1.Enabled:=false;
          Magasin2.Enabled:=false;
          Image7.Enabled:=False;
          Image4.Enabled:=False;
          Image3.Enabled:=False;
          Image2.Enabled:=False;
          Image8.Enabled:=False;
        end;
    end else
    begin
          Fichier1.Enabled:=True;
          Magasin2.Enabled:=True;
          Image7.Enabled:=True;
          Image4.Enabled:=True;
          Image3.Enabled:=True;
          Image2.Enabled:=True;
          Image8.Enabled:=True;

    end;


end;

procedure TfrmIntegrateur.Image2Click(Sender: TObject);
begin
//frmAdd_magasin.ShowModal;

  st_SideMenu.RowCount := 3;

  st_SideMenu.Cells[0,1] := 'Cr�er un nouveau magasin';
  st_SideMenu.Cells[0,2] := 'Liste de magasins';

  vBtn := 1;
end;

procedure TfrmIntegrateur.Image3Click(Sender: TObject);
begin
  vBtn :=6;
  with st_SideMenu do
    begin
      Cells[0,1]:='Sortie divers';
      Cells[0,2]:='Liste des sortie du stock';
      Cells[0,3]:='Fiche de sortie' ;
      Cells[0,4]:='Liste de fiche de sortie';
    end;
    st_SideMenu.RowCount := 5;
end;

procedure TfrmIntegrateur.Image4Click(Sender: TObject);
begin
with st_SideMenu do
  begin
    Cells[0,1]:='Entr�e en stock';
    Cells[0,2]:='Entr�e divers';
    Cells[0,3]:='Sortie divers';
    Cells[0,4]:='Transfert inter-magasin';
    Cells[0,5]:='Mouvement du stock par article';
  end;
  st_SideMenu.RowCount:=6;
  vBtn := 4;
end;

procedure TfrmIntegrateur.Image7Click(Sender: TObject);
begin
with st_SideMenu do
  begin
    Cells[0,1]:='Etat du stock';
    Cells[0,2]:='Etat des entr�es';
    Cells[0,3]:='Etat des sorties';
    Cells[0,4]:='Etat des entr�es annul�es';
    Cells[0,5]:='R�cap de fiche d''entr�es/sorties';
    Cells[0,6]:='Rapprochement de fiche d''entr�es/sorties';
  end;
  st_SideMenu.RowCount:=7;
  vBtn := 5;
end;

procedure TfrmIntegrateur.Image8Click(Sender: TObject);
begin
with st_SideMenu do
  begin
    Cells[0,1]:='Ajouter un nouvel article';
    Cells[0,2]:='Ajouter un nouvel type d''article';
    Cells[0,3]:='Voir la liste des articless';
  end;
  st_SideMenu.RowCount:=4;
  vBtn := 2;
end;

procedure TfrmIntegrateur.ImgEntreeClick(Sender: TObject);
begin
  vBtn :=3;
  with st_SideMenu do
    begin
      Cells[0,1]:='Entr�e en stock';
      Cells[0,2]:='Liste des entr�es en stock';
      Cells[0,3]:='Fiche d''entr�e' ;
      Cells[0,4]:='Liste de fiche d''entr�e' ;
    end;
    st_SideMenu.RowCount := 5;
end;

procedure TfrmIntegrateur.ListedeBC1Click(Sender: TObject);
begin
frmListeBonCommande.showmodal;
end;

procedure TfrmIntegrateur.Listedesarticles1Click(Sender: TObject);
begin
frmListe_article.ShowModal;
end;

procedure TfrmIntegrateur.ListeMagasin1Click(Sender: TObject);
begin
frmMagasin_liste.ShowModal;
end;

procedure TfrmIntegrateur.LivrsNonlivrs1Click(Sender: TObject);
begin
frmL_BL_par_date.ShowModal;
end;

procedure TfrmIntegrateur.Magasin1Click(Sender: TObject);
begin
frmAdd_magasin.ShowModal;
end;

procedure TfrmIntegrateur.Pararticle1Click(Sender: TObject);
begin
frmMouvStockByArticle.ShowModal;
end;

procedure TfrmIntegrateur.Sortie1Click(Sender: TObject);
begin
frmSortieDivers.ShowModal;
end;

procedure TfrmIntegrateur.Sortiedumagasin1Click(Sender: TObject);
begin
frmTransfetInterMagasin.ShowModal;
end;

procedure TfrmIntegrateur.st_SideMenuDblClick(Sender: TObject);
begin
//Si cest le bouton magasin et le sous menu cr�ation de magasin
  if (vBtn = 1) and (st_SideMenu.Row = 1) then
    frmAdd_magasin.ShowModal;
//Si cest le bouton magasin et le sous menu liste de magasin
  if (vBtn = 1) and (st_SideMenu.Row = 2) then
    frmAdd_magasin.ShowModal;
//*******************************************************************
//Si cest le bouton article et le sous menu ajouter un article
  if (vBtn = 2) and (st_SideMenu.Row = 1) then
    frmadd_article.ShowModal;

//Si cest le bouton article et le sous menu ajouter un type article
  if (vBtn = 2) and (st_SideMenu.Row = 2) then
    frmAdd_Type_article.ShowModal;

//Si cest le bouton article et le sous menu liste des articles
  if (vBtn = 2) and (st_SideMenu.Row = 3) then
    frmListe_article.ShowModal;
//*******************************************************************
//Si cest le bouton Entree et le sous menu Entree en stock
  if (vBtn = 3) and (st_SideMenu.Row = 1) then
    frmEntree_magasin.ShowModal;

//Si cest le bouton Entree et le sous menu Liste d'Entree en stock
  if (vBtn = 3) and (st_SideMenu.Row = 2) then
    frmListeEntree.ShowModal;

//Si cest le bouton Entree et le sous menu Fiche d'entree
  if (vBtn = 3) and (st_SideMenu.Row = 3) then
    frmFicheEntree.ShowModal;

//Si cest le bouton Entree et le sous menu Liste Fiche d'entree
  if (vBtn = 3) and (st_SideMenu.Row = 4) then
    frmListeFcheEntree.ShowModal;
//*******************************************************************
//Si cest le bouton transfert et le sous menu d'Entree en stock
  if (vBtn = 4) and (st_SideMenu.Row = 1) then
    frmEntree_magasin.ShowModal;

//Si cest le bouton transfert et le sous menu d'Entree divers en stock
//  if (vBtn = 4) and (st_SideMenu.Row = 2) then
//    frmEntree_magasin.ShowModal;

//Si cest le bouton transfert et le sous menu sortie divers en stock
  if (vBtn = 4) and (st_SideMenu.Row = 3) then
    frmSortieDivers.ShowModal;

//Si cest le bouton transfert et le sous menu transfert inter mag
  if (vBtn = 4) and (st_SideMenu.Row = 4) then
    frmTransfetInterMagasin.ShowModal;

//Si cest le bouton transfert et le sous menu mvmt de stock...
  if (vBtn = 4) and (st_SideMenu.Row = 5) then
    frmMouvStockByArticle.ShowModal;
//*******************************************************************
//Si cest le bouton Etat et le sous menu etat de stock...
  if (vBtn = 5) and (st_SideMenu.Row = 1) then
    frmFiche_stock.ShowModal;

//Si cest le bouton Etat et le sous menu etat des entree ...
  if (vBtn = 5) and (st_SideMenu.Row = 2) then
    frmListeEntree.ShowModal;

//Si cest le bouton Etat et le sous menu etat des sortie ...
  if (vBtn = 5) and (st_SideMenu.Row = 3) then
    frmListeSortie.ShowModal;

//Si cest le bouton Etat et le sous menu etat des antr�es annulee ...
  if (vBtn = 5) and (st_SideMenu.Row = 4) then
    frmEntreeCancListe.ShowModal;

//Si cest le bouton Etat et le sous menu etat r�cap entree/sortie ...
  if (vBtn = 5) and (st_SideMenu.Row = 5) then
    frmFicheRecap_es.ShowModal;

//Si cest le bouton Etat et le sous menu etat raprochement de fiche entree/sortie ...
  if (vBtn = 5) and (st_SideMenu.Row = 6) then
    frmRapprochementFicheEs.ShowModal;

//*********************************************************************
//Si cest le bouton de sortie et le sous menu fiche de sortie
  if (vBtn = 6) and (st_SideMenu.Row = 3) then
    frmFicheSortie.ShowModal;

//Si cest le bouton de sortie et le sous menu liste fiche de sortie
  if (vBtn = 6) and (st_SideMenu.Row = 4) then
    frmListeFcheSortie.ShowModal;

end;

procedure TfrmIntegrateur.st_SideMenuDrawCell(Sender: TObject; ACol,
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
            Brush.Color :=$00D1D1D1//$FFE0FF clgreen
          else
            Brush.Color:=$00F4F4F4;//$FFFFE0  clBlue
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

procedure TfrmIntegrateur.ypearticle1Click(Sender: TObject);
begin
frmAdd_Type_article.ShowModal;
end;

procedure TfrmIntegrateur.ypedebouteil1Click(Sender: TObject);
begin
frmadd_article.ShowModal;
end;

end.
