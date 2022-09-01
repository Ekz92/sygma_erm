unit UTransfertInterMagasin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmTransfetInterMagasin = class(TForm)
    Bevel1: TBevel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Image1: TImage;
    Bevel2: TBevel;
    Label5: TLabel;
    Label13: TLabel;
    edqte: TEdit;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    cbmagasin: TComboBox;
    cbarticle: TComboBox;
    edDesignArticleDepart: TEdit;
    edDesignMagasinDepart: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cbmagasin_dest: TComboBox;
    cbArticleDes: TComboBox;
    edDesignArticleDest: TEdit;
    edDesignMagasinDest: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbmagasinExit(Sender: TObject);
    procedure cbarticleExit(Sender: TObject);
    procedure cbmagasin_destExit(Sender: TObject);
    procedure cbArticleDesExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
    procedure videChamp();
  public
    { Déclarations publiques }
  end;

var
  frmTransfetInterMagasin: TfrmTransfetInterMagasin;

implementation

{$R *.dfm}

uses records, UDM, UConnexion;

procedure TfrmTransfetInterMagasin.Button1Click(Sender: TObject);
var
  sortie : TSortie;
  entree : Tentree;
  stock : TStock;
  code_art,
  code_mag,
  code_art_dest,
  codeArt_dest,
  codeMagDest :string;
  article :TArticle;

  date_op : string;

  SelectMouv,
  insertMouv,
  UpdateMouv :TMouvStock;
begin
if cbmagasin.Text = cbmagasin_dest.Text then
begin
    MessageDlg('Veillez selectionner un magasin autre que celui qui départ',mtError,[mbOK],0);
    exit
end;
if cbmagasin.Text = '' then
  begin
    MessageDlg('Veillez selectionner un magasin de départ',mtError,[mbOK],0);
    exit
  end
  else
if cbarticle.Text = '' then
  begin
    MessageDlg('Veillez selectionner l''article',mtError,[mbOK],0);
    exit
  end
  else
if (edqte.Text = '') or (edqte.Text='0')then
  begin
    MessageDlg('Veillez vérifier la quantité saisie',mtError,[mbOK],0);
    exit
  end ;
if MessageDlg('Voulez-vous valider l''oppération de sortie ?',mtConfirmation,[mbYes,mbNo],0) = mryes then
  begin
        code_art := cbarticle.Text;
        code_mag := cbmagasin.Text;
        code_art_dest :=cbArticleDes.Text;
{
      //************* insertion dans la table sortie**************
        with sortie do
          begin
            SCode_art:=code_art;
            Scode_mag:=code_mag;
            NQte_sortie:=StrToInt(edqte.Text);
            SUsager:=vUsager;
            Ddate_sortie:=DateTimeToStr(DateTimePicker1.DateTime);
          end;
          dm.InsertSortie(sortie);
}
  //************ Insertion dans la table entree et dans la table de sortie ****************

  article :=dm.selectArticleByCode(code_art_dest);

        with entree do
          begin
            Scode_art_src:= QuotedStr(cbarticle.Text);
            SCode_art:=QuotedStr(cbArticleDes.Text);
            Scode_mag:=QuotedStr(cbmagasin_dest.Text);
            NQte_entree:=StrToInt(edQte.Text);
            if article.Stype_art='Consignation' then NType_entree:=2 else NType_entree:=1;
            SUsager:=QuotedStr(vUsager);
            Ddate_entree:=QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',DateTimePicker1.DateTime ));
            SPiece:=QuotedStr('Transfert inter-magasin');
            Nstatut_canc:=0;
          end;
          dm.InsertEntree(entree);

        with sortie do
          begin
            Scode_art_src:= cbarticle.Text;
            SCode_art:=cbArticleDes.Text;
            Scode_mag:=cbmagasin_dest.Text;
            NQte_sortie:=StrToInt(edQte.Text);
            if article.Stype_art='Consignation' then NType_Sortie:=2 else NType_Sortie:=1;
            SUsager:=vUsager;
            Ddate_sortie:=DateTimeToStr(DateTimePicker1.DateTime);
            SPiece:='Transfert inter-magasin';
            Nstatut_canc:=0;
          end;
          dm.InsertSortie(sortie);

    //*************** Dimunution du stock pour l'article de départ****************************

        stock := dm.selectStockByArticleMagasin(code_art,code_mag);

        with stock do
          begin
            SCode_art:=code_art;
            Scode_mag:=code_mag;
            NQte_mag:=stock.NQte_mag - StrToInt(edqte.Text);
            Nqte_total:=stock.Nqte_total - StrToInt(edqte.Text);
          end;
          dm.UpdateStock(stock);
    //*************** Augmentation du stock pour l'article de destination ****************************
        codeMagDest := cbmagasin_dest.Text;
        codeArt_dest := cbArticleDes.Text;
        stock := dm.selectStockByArticleMagasin(codeArt_dest,codeMagDest);

        if stock.Scode_art.IsEmpty  then   {Si l'article n'exite pas dans ce magasin}
        begin
           with stock do
            begin
              Scode_art := cbArticleDes.Text;
              Scode_mag := cbmagasin_dest.Text;
              NQte_vide := 0;
              NQte_mag := StrToInt(edqte.Text);
              Nqte_total:=StrToInt(edqte.Text);
              Rcoutachat := 0;
            end;
            dm.InsertStock(stock);
        end else                        {si l'article exite dans ce magasin}
        with stock do
          begin
            SCode_art:=cbArticleDes.Text;
            Scode_mag:=cbmagasin_dest.Text;
            NQte_mag:=stock.NQte_mag + StrToInt(edqte.Text);
            Nqte_total:=stock.Nqte_total + StrToInt(edqte.Text);
          end;
          dm.UpdateStock(stock);

    //*****************************************************************

        {Ecriture dans la table mouvement pour le magasin source}
        //code_art := edcode_art.Text;
        date_op := DateToStr(DateTimePicker1.Date);
        code_mag:=cbmagasin.Text;

        SelectMouv := dm.selectMouvStock(code_art,date_op,code_mag);

       if (SelectMouv.Ddate_mouv.IsEmpty) then
        Begin
            with insertMouv do
              begin
               // NidMouvStock := SelectMouv.NidMouvStock;
                Ddate_mouv := date_op;
                Scode_art := code_art;
                Scode_mag := cbmagasin.Text;
                Nqte_entree := 0;
                Nqte_sortie := StrToInt(edQte.Text) ;
              end;
              dm.insertMouvStock(insertMouv);
        End else
        if (StrToDate(SelectMouv.Ddate_mouv) = StrToDate(date_op)) and (code_art = SelectMouv.Scode_art)then
          begin
            with UpdateMouv do
              begin
                NidMouvStock := SelectMouv.NidMouvStock;
                Ddate_mouv := SelectMouv.Ddate_mouv;
                Scode_art := SelectMouv.Scode_art;
                Scode_mag := SelectMouv.Scode_mag;
                Nqte_entree := SelectMouv.Nqte_entree;
                Nqte_sortie := SelectMouv.Nqte_sortie+StrToInt(edQte.Text);
              end;
              dm.Update_moovStock(UpdateMouv);
          end ;

        {Ecriture dan la table mouvement dans pour le magasin destination}
        //code_art := edcode_art.Text;
        date_op := DateToStr(DateTimePicker1.Date);
        code_mag:=cbmagasin_dest.Text;

        SelectMouv := dm.selectMouvStock(code_art,date_op,code_mag);

       if (SelectMouv.Ddate_mouv.IsEmpty) then
        Begin
            with insertMouv do
              begin
               // NidMouvStock := SelectMouv.NidMouvStock;
                Ddate_mouv := date_op;
                Scode_art := codeArt_dest;
                Scode_mag := cbmagasin_dest.Text;
                Nqte_entree := StrToInt(edQte.Text);
                Nqte_sortie := 0;
              end;
              dm.insertMouvStock(insertMouv);
        End else
        if (StrToDate(SelectMouv.Ddate_mouv) = StrToDate(date_op)) and (code_art = SelectMouv.Scode_art)then
          begin
            with UpdateMouv do
              begin
                NidMouvStock := SelectMouv.NidMouvStock;
                Ddate_mouv := SelectMouv.Ddate_mouv;
                Scode_art := SelectMouv.Scode_art;
                Scode_mag := SelectMouv.Scode_mag;
                Nqte_entree := SelectMouv.Nqte_entree+StrToInt(edQte.Text);
                Nqte_sortie := SelectMouv.Nqte_sortie ;
              end;
              dm.Update_moovStock(UpdateMouv);
          end ;
          videChamp();
  end;
end;

procedure TfrmTransfetInterMagasin.Button2Click(Sender: TObject);
begin
videChamp;
Close;
end;

procedure TfrmTransfetInterMagasin.cbArticleDesExit(Sender: TObject);
var
    article : TArticle;
    code_art: string;
begin
   code_art := cbArticleDes.Text;
   article:=dm.selectArticleByCode(code_art);
   edDesignArticleDest.Text := article.Sdesignation_art;
end;

procedure TfrmTransfetInterMagasin.cbarticleExit(Sender: TObject);
var
    article : TArticle;
    code_art: string;
begin
   code_art := cbarticle.Text;
   article:=dm.selectArticleByCode(code_art);
   edDesignArticleDepart.Text:=article.Sdesignation_art;
//   edDesignArticleDest.Text := article.Sdesignation_art;
end;

procedure TfrmTransfetInterMagasin.cbmagasinExit(Sender: TObject);
var
    magasin : TMagasin;
    code_mag: string;
    j:integer;
    articles : TarticleArray;
    sql_art :string;
begin
    code_mag := cbmagasin.Text;
    magasin:=dm.selectMagasinByCode(code_mag);
    edDesignMagasinDepart.Text := magasin.Sdesignation_mag;

    sql_art:=' where code_mag = '+QuotedStr(code_mag);

    articles := dm.selectArticles(sql_art);

     cbarticle.Clear;
  for j := Low(articles) to High(articles) do
    begin
      cbarticle.Items.Add(articles[j].Scode_art);
    end;
end;

procedure TfrmTransfetInterMagasin.cbmagasin_destExit(Sender: TObject);
var
    magasin : TMagasin;
    code_magDest,sql_art: string;
    articles : TarticleArray;
    j:integer;
begin
    code_magDest := cbmagasin_dest.Text;
    magasin:=dm.selectMagasinByCode(code_magDest);

    edDesignMagasinDest.Text:=magasin.Sdesignation_mag;

    sql_art:=' where code_mag = '+QuotedStr(cbmagasin_dest.Text);

    articles := dm.selectArticles(sql_art);

     cbArticleDes.Clear;
  for j := Low(articles) to High(articles) do
    begin
      cbArticleDes.Items.Add(articles[j].Scode_art);
    end;
end;

procedure TfrmTransfetInterMagasin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cbmagasin.clear;
  cbarticle.Clear;
  cbArticleDes.Clear;
  cbmagasin_dest.Clear;

  videChamp();

end;

procedure TfrmTransfetInterMagasin.FormShow(Sender: TObject);
var
  magasins : TMagasinArray;
  articles : TarticleArray;

  I,j: Integer;
  Psql,sql_art : string;
begin
  Psql := '';
  sql_art := '';

  videChamp();
  DateTimePicker1.Date := Date;

  magasins := dm.selectMagasins(Psql);
  articles := dm.selectArticles(sql_art);

  for I := Low(magasins) to High(magasins) do
    begin
      cbmagasin.Items.Add(magasins[i].SCode_mag);
      cbmagasin_dest.Items.Add(magasins[i].SCode_mag);
    end;

  for j := Low(articles) to High(articles) do
    begin
      cbarticle.Items.Add(articles[j].Scode_art);
    end;

end;

procedure TfrmTransfetInterMagasin.videChamp();
begin
  //cbmagasin.clear;
  //cbarticle.Clear;
  //cbArticleDes.Clear;
  edqte.Clear;
  //cbmagasin_dest.Clear;
  edDesignArticleDepart.Clear;
  edDesignArticleDest.Clear;
  edDesignMagasinDest.Clear;
  edDesignMagasinDepart.Clear;
end;


end.
