unit UFicheEntree;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmFicheEntree = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edNum: TEdit;
    cbdate: TDateTimePicker;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edCodeclt: TEdit;
    edNomClt: TEdit;
    edNomVeh: TComboBox;
    cbMatVeh: TEdit;
    st_ficheEntree: TStringGrid;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btSave: TButton;
    btAnnuler: TButton;
    btClot: TButton;
    Label6: TLabel;
    cbMagasin: TComboBox;
    Label8: TLabel;
    mComment: TMemo;
    procedure st_ficheEntreeDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure edCodecltDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure st_ficheEntreeSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure st_ficheEntreeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edNomVehCloseUp(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btClotClick(Sender: TObject);
    procedure btAnnulerClick(Sender: TObject);
    procedure cbMagasinCloseUp(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmFicheEntree: TfrmFicheEntree;
  vNumHis : integer ;


implementation

{$R *.dfm}

uses URechClt, records, UDM, UConnexion;

procedure TfrmFicheEntree.btAnnulerClick(Sender: TObject);
var
  i,j : integer;
begin
//  edNum.Clear;
  edCodeclt.Clear;
  edNomClt.Clear;
  edNomVeh.Clear;
  cbMatVeh.Clear;

  edCodeclt.Enabled :=True;
  edNomClt.Enabled :=True;
  edNomVeh.Enabled :=True;
  cbMatVeh.Enabled :=True;


  //vider les cellules
  for I := 3 to st_ficheEntree.ColCount do
    for j := 1 to st_ficheEntree.RowCount-1 do
      st_ficheEntree.Cells[i,j] := ' ';

  st_ficheEntree.RowCount := 1;
end;

procedure TfrmFicheEntree.btSaveClick(Sender: TObject);
var
  fiche_es : TFiche_es;
  I,j,
  vVide,vFuite,vPleine,vTotal: Integer;
  stockArt : TStock;
  article : TArticle;
  codeArt,sqlUp,SqlStockCam,SqlUpstkCam,sqlUpFiche,SqlUpTFiche : string;
  fichei_recap : Tfichei_recap;
  ficheEsTotal : TFicheEsTotal;
  FicheEsH : TFicheEsH;
  StockCam : TStockCamion;
  Stock : TStock;
begin
  for I := 3 to st_ficheEntree.ColCount do
    for j := 1 to st_ficheEntree.RowCount-1 do
      if st_ficheEntree.Cells[i,j] = '' then
        begin
          MessageDlg('Cellule vude non autoris�es',mtError,[mbRetry],0);
          exit
        end;

  if Trim(edNum.Text)='' then
    MessageDlg('Veillez sp�cifier le num�ro d''entr�e',mtError,[mbRetry],0)
  else
  if Trim(edCodeclt.Text)='' then
    MessageDlg('Veillez sp�cifier le Client',mtError,[mbRetry],0)
  else
  if (Trim(edNomVeh.Text)='') and (vTypClt<>'CP01') and (vTypClt<>'CP02') then
    MessageDlg('Veillez sp�cifier le vehicule',mtError,[mbRetry],0)
  else
  if MessageDlg('Voulez-vous enregistrer cette fiche d''entr�e ?',mtInformation,[mbYes,mbNo],0) = mrYes then
  begin
//  Insertion dans la table d'entete de fiche
  with FicheEsH do
    begin
      Nnum_fh := StrToInt(edNum.Text);
      Nnum_his := vNumHis;
      Sdate_fh := DateToStr(cbdate.Date);
      Scode_clt:=edCodeclt.Text;
      Snom_clt:=edNomClt.Text;
      Snum_veh := cbMatVeh.Text;
      Snom_veh := edNomVeh.Text;
      Scomment := mComment.Text;
      NType_fs := 0;   // 1 Pour la sortie et 0 pour l'entree
      Susager := vUsager;
      Nstatut_canc := 0;
    end;
    dm.InsertFicheEsH(FicheEsH);

//  INSERTION DANS fiche recap
  with fichei_recap do
    begin
      Nnum_fes:=StrToInt(edNum.Text);
      Nnum_his := vNumHis;
      Sdate_fes:=DateToStr(cbdate.Date);
      Scode_clt:=edCodeclt.Text;
      Snom_clt:=edNomClt.Text;
      Smatricule_veh:= cbMatVeh.Text;
      Smarque_veh := edNomVeh.Text;
      SB3A_Iv:='';
      SB3A_Ip:='';
      SB3A_If:='';
      SB3_Iv:='';
      SB3_Ip:='';
      SB3_If:='';
      SB6_Iv:='';
      SB6_Ip:='';
      SB6_If:='';
      SB6R_Iv:='';
      SB6R_Ip:='';
      SB6R_If:='';
      SB12_Iv:='';
      SB12_Ip:='';
      SB12_If:='';
      SB50_Iv:='';
      SB50_Ip:='';
      SB50_If:='';
      SB25_Iv:='';
      SB25_Ip:='';
      SB25_If:='';
      SB6E_Iv:='';
      SB6E_Ip:='';
      SB6E_If:='';
      SB12E_Iv:='';
      SB12E_Ip:='';
      SB12E_If:='';
      SB14_Iv:='';
      SB14_Ip:='';
      SB14_If :='';
      SB20_Iv:='';
      SB20_Ip:='';
      SB20_If :='';
      SB35_Iv:='';
      SB35_Ip:='';
      SB35_If :='';
      SB6M_Iv:='';
      SB6M_Ip:='';
      SB6M_If :='';
      SB12M_Iv:='';
      SB12M_Ip:='';
      SB12M_If :='';
      SB6T_Iv:='';
      SB6T_Ip:='';
      SB6T_If :='';
      SB12T_Iv:='';
      SB12T_Ip:='';
      SB12T_If :='';

    end;
    dm.InsertFicheiRecap(fichei_recap);

//insertion dans la table total fiche
  with ficheEsTotal , st_ficheEntree do //Insertion dans la table de total fiche
    begin
      Nnum_ft := StrToInt(edNum.Text);
      Nnum_his := vNumHis;
      Sdate_ft := DateToStr(cbdate.Date);
      Scode_clt:=edCodeclt.Text;
      Snom_clt:=edNomClt.Text;
      Smatricule_veh:=cbMatVeh.Text;
      Smarque_veh := edNomVeh.Text;
      SB3A_I:='';
      SB3_I:='';
      SB6_I:='';
      SB6R_I:='';
      SB12_I:='';
      SB25_I:='';
      SB50_I:='';
      SB6E_I:='';
      SB12E_I:='';
      SB14_I:='';
      SB20_I:='';
      SB35_I:='';
      SB6M_I:='';
      SB12M_I:='';
      SB6T_I:='';
      SB12T_I:='';

      SB3A_S:='';
      SB3_S:='';
      SB6_S:='';
      SB6R_S:='';
      SB12_S:='';
      SB25_S:='';
      SB50_S:='';
      SB6E_S:='';
      SB12E_S:='';
      SB14_S:='';
      SB20_S:='';
      SB35_S:='';
      SB6M_S:='';
      SB12M_S:='';
      SB6T_S:='';
      SB12T_S:='';

//      Ntype_ft := 0; // 0 Pour les entr�es ; 1 pour les sorties
//      Susager := vUsager;
//      Nstatut_canc := 0;
    end;
  dm.InsertFicheEsTotal(ficheEsTotal);

//Insertion dans fiche entree
    for I := 1 to st_ficheEntree.RowCount-1 do
      begin
        with fiche_es , st_ficheEntree do //Insertion dans la table de fiche
          begin

            //            selection de la qteen stock de l'article

            codeArt := Cells[1,i];
            stockArt:=dm.selectStockByArticle(codeArt);
            article:=dm.selectArticleByCode(codeArt);

            Nnum_fes := StrToInt(edNum.Text);
            Nnum_his := vNumHis;
            Sdate_fes := DateToStr(cbdate.Date);
            Scode_clt := edCodeclt.Text;
            Snom_clt := edNomClt.Text;
            Smatricule_veh := cbMatVeh.Text;
            Scode_art :=Cells[1,i];
            Sdesignation_art:=Cells[2,i];
            Nqte_vide:=StrToInt(Cells[3,i]);
            Nqte_fuite:=StrToInt(Cells[4,i]);
            Nqte_pleine:=StrToInt(Cells[5,i]);
            RkgArt:=article.Rkilo;
            RkgFuite:=article.Rkilo * StrToInt(Cells[4,i]);
            RkgPleine:=article.Rkilo * StrToInt(Cells[5,i]);
            Ntype_fes:= 0 ; // 0 Pour la fiche d'entr�e et 1 pour la fiche de sortie
            Susager := vusager;
            Nstatut_canc := 0;
          end;
          dm.InsertFiche_es(fiche_es);
      end;// end for


    for I := 1 to st_ficheEntree.RowCount-1 do
      begin
        with st_ficheEntree do
          begin
//            selection de la qteen stock de l'article
            codeArt := Cells[1,i];
            stockArt:=dm.selectStockByArticle(codeArt);
            article:=dm.selectArticleByCode(codeArt);
//            MAJ des qte en stock
            sqlUp:='update tb_stock set '
                    +' qte_vide = '+IntToStr(stockArt.NQte_vide +StrToInt(Cells[3,i])+StrToInt(Cells[4,i]))+','
                    +' qte_mag = '+IntToStr(stockArt.NQte_mag + StrToInt(Cells[5,i]))+','
                    +' qte_totale = '+IntToStr(stockArt.Nqte_total +StrToInt(Cells[3,i])+StrToInt(Cells[4,i])+StrToInt(Cells[5,i]))
                    +' where code_art = '+QuotedStr(codeArt);
            dm.UpdateTable(sqlUp);

//            MAJ stock camion
            SqlStockCam :=' where code_art = '+QuotedStr(codeArt)
                          +' and vehicule = '+QuotedStr(cbMatVeh.Text)  ;
            StockCam := dm.selectStockCamion(SqlStockCam);

            if StockCam.Svehicule.IsEmpty then
              begin
                with stockCam,st_ficheEntree do
                  begin
                    Svehicule:=cbMatVeh.Text;
                    Scode_art:=codeArt;
                    SDesignation_art := Cells[2,i];
                    NQte_vide := StrToInt(Cells[3,i]);
                    NQte_mag := StrToInt(Cells[4,i]);
                    Nqte_total := StrToInt(Cells[3,i])+StrToInt(Cells[4,i]);
                  end;
                  dm.InsertStockCamion(stockCam);
              end
            else
              begin
                SqlUpstkCam := ' update tb_stock_camion set '
                              +' qte_vide = '+IntToStr(StockCam.NQte_vide - (StrToInt(Cells[3,i]) + StrToInt(Cells[4,i]))) +','
                              +' qte_mag = '+IntToStr(StockCam.NQte_mag - StrToInt(Cells[5,i])) +','
                              +' qte_total = '+IntToStr(StockCam.Nqte_total - (StrToInt(Cells[3,i]) + StrToInt(Cells[4,i])+StrToInt(Cells[5,i])))
                              +' where code_art = '+QuotedStr(codeArt)
                              +' and vehicule = '+QuotedStr(cbMatVeh.Text)  ;

                dm.UpdateTable(SqlUpstkCam);
              end;


//          Mise � jour dans la table fiche d'entree
            vVide := StrToInt(Cells[3,i]);
            vFuite :=StrToInt(Cells[4,i]);
            vPleine:=StrToInt(Cells[5,i]);

            vTotal := vVide+vFuite+vPleine;

            if Trim(Cells[3,i])='0' then Cells[3,i]:='';
            if Trim(Cells[4,i])='0' then Cells[4,i]:='';
            if Trim(Cells[5,i])='0' then Cells[5,i]:='';


            sqlUpFiche := 'update tb_fichei_recap set '
                          +article.Salias_art+'_Iv = '+QuotedStr(Cells[3,i])+','
                          +article.Salias_art+'_If = '+QuotedStr(Cells[4,i])+','
                          +article.Salias_art+'_Ip = '+QuotedStr(Cells[5,i])
                          +' where num_fes = '+edNum.Text
                          +' and num_his = '+IntToStr(vNumHis);
            dm.UpdateTable(sqlUpFiche);

//Mise � jours dans la table total fiche d'entree

            if vTotal<>0 then
              SqlUpTFiche:='Update tb_ficheEs_Total set '
                            +article.Salias_art+'_I = '+QuotedStr(IntToStr(vTotal))
                            +' where num_ft = '+edNum.Text
                            +' and num_his = '+IntToStr(vNumHis)
            else
              SqlUpTFiche:='Update tb_ficheEs_Total set '
                            +article.Salias_art+'_I = '+QuotedStr('')
                            +' where num_ft = '+edNum.Text
                            +' and num_his = '+IntToStr(vNumHis);


            dm.UpdateTable(SqlUpTFiche);

          end;
      end;
    //vider les cellules
      for I := 3 to st_ficheEntree.ColCount do
        for j := 1 to st_ficheEntree.RowCount-1 do
          st_ficheEntree.Cells[i,j] := ' ';

      st_ficheEntree.RowCount := 1;

// Incr�mentation du  num�ro d'historique
  vNumHis := vNumHis +1 ;

  btClot.Enabled := True;
  btSave.Enabled := False;

  edCodeclt.Enabled:=False;
  edNomClt.Enabled := False;
  edNomVeh.Enabled:=false;
  cbMatVeh.Enabled:=false;

  st_ficheEntree.Enabled := False;
  end;

end;

procedure TfrmFicheEntree.cbMagasinCloseUp(Sender: TObject);
var
  Magasins : TMagasinArray;
  PsqlMag,PsqlArt: string;
  I: Integer;
  articles : TarticleArray;
  vCodeMag : string;

begin
  PsqlMag := ' where designation_mag = '+QuotedStr(cbMagasin.Text) ;
  Magasins :=dm.selectMagasins(PsqlMag);

  for I := Low(Magasins) to High(Magasins) do
    begin
      vCodeMag:=Magasins[i].SCode_mag;
    end;

//Selection d'article

  PsqlArt := ' where code_mag = '+QuotedStr(vCodeMag)
            +' order by ordre asc ';

  articles := DM.selectArticles(PsqlArt)      ;
  st_ficheEntree.RowCount := Length(articles)+1;

  for I := Low(articles) to High(articles) do
    begin
       with st_ficheEntree do
          begin
            Cells[1,i+1] := articles[i].Scode_art;
            Cells[2,i+1] := articles[i].Sdesignation_art;
          end;
    end;
    if st_ficheEntree.RowCount>1 then st_ficheEntree.FixedRows:=1;

    st_ficheEntree.Enabled := True;
end;

procedure TfrmFicheEntree.btClotClick(Sender: TObject);
begin
if  MessageDlg('Etes-vous certain de vouloir cl�turer ce lot ?',mtWarning,[mbYes,mbNo],0) = mrYes then
  begin
    btAnnuler.Click;
    FormShow(sender);
    vNumHis := 0;

    edCodeclt.Enabled:=True;
    edNomClt.Enabled := True;
    edNomVeh.Enabled:=True;
    cbMatVeh.Enabled:=True;

  end;

end;

procedure TfrmFicheEntree.edNomVehCloseUp(Sender: TObject);
var
  Psql,vNomVeh : string;
  vehs : TVehiculeArray;
  i:integer;
begin
  Psql := ' where marque_veh = '+QuotedStr(edNomVeh.Text);

  vehs:=dm.SelectVehicule(Psql);

  for I := Low(vehs) to High(vehs) do
      begin
        vNomVeh := vehs[i].SNum_mat;
      end;
      cbMatVeh.Text := vNomVeh;
end;

procedure TfrmFicheEntree.edCodecltDblClick(Sender: TObject);
begin
vSourceRclt:='Entree';
frmRechClt.ShowModal;
end;

procedure TfrmFicheEntree.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edNomVeh.Items.Clear;
end;

procedure TfrmFicheEntree.FormCreate(Sender: TObject);
begin
with st_ficheEntree do
  begin
    Cells[0,0]:='N�';
    Cells[1,0]:='Article';
    Cells[2,0]:='D�signation';
    Cells[3,0]:='Vide';
    Cells[4,0]:='Fuite';
    Cells[5,0]:='Pleine';
  end;

//initialisation du num�ro d'historique

vNumHis := 0;

end;

procedure TfrmFicheEntree.FormShow(Sender: TObject);
var
  Psql,PsqlArt,PsqlMag : string;
  vehs : TVehiculeArray;
  i,j:integer;

  articles : TarticleArray;
  Magasins : TMagasinArray;
begin
  cbdate.Checked := False;
  mComment.Clear;

//vider les cellules
  for I := 3 to st_ficheEntree.ColCount do
    for j := 1 to st_ficheEntree.RowCount-1 do
      st_ficheEntree.Cells[i,j] := ' ';
//*****
  cbdate.Date := Now;
  btSave.Enabled := false;
  btClot.Enabled := false;
  st_ficheEntree.Enabled := True;

//selection du v�hicule
  Psql := '';

  vehs:=dm.SelectVehicule(Psql);
  for I := Low(vehs) to High(vehs) do
    begin
      edNomVeh.Items.Add(vehs[i].SMarque);
    end;
// selection du magasin

  PsqlMag := '';
  Magasins :=dm.selectMagasins(PsqlMag);

  for I := Low(Magasins) to High(Magasins) do
    begin
      cbMagasin.Items.Add(Magasins[i].Sdesignation_mag);
    end;

////Selection d'article
//
//  PsqlArt := ' where code_mag = '+QuotedStr('PFGB');
//  articles := DM.selectArticles(PsqlArt)      ;
//  st_ficheEntree.RowCount := Length(articles)+1;
//
//  for I := Low(articles) to High(articles) do
//    begin
//       with st_ficheEntree do
//          begin
//            Cells[1,i+1] := articles[i].Scode_art;
//            Cells[2,i+1] := articles[i].Sdesignation_art;
//          end;
//    end;
//    if st_ficheEntree.RowCount>1 then st_ficheEntree.FixedRows:=1;

  edNum.Text := vUsager+IntToStr(dm.SelectMaxLettrage.numLettrage+1) ;


end;

procedure TfrmFicheEntree.st_ficheEntreeDrawCell(Sender: TObject; ACol,
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

procedure TfrmFicheEntree.st_ficheEntreeKeyPress(Sender: TObject;
  var Key: Char);
var
  cellEmpty : Boolean;
  I: Integer;
  j: Integer;
begin
if key = #13 then
  begin
    for I := 3 to st_ficheEntree.ColCount do
      for j := 0 to st_ficheEntree.RowCount do
        if Trim(st_ficheEntree.Cells[i,j]) = '' then
          begin
            st_ficheEntree.Cells[i,j] := '0';
//            btvalider.Enabled:=True else btvalider.Enabled := False;
          end;
          btSave.Enabled:=true;
          btClot.Enabled:=false;

  end;
end;

procedure TfrmFicheEntree.st_ficheEntreeSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
    if (Acol=0) or (Acol=1) or (Acol=2) then
        CanSelect:=false
      else
        canselect:=true;
end;

end.
