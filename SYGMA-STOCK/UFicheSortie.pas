unit UFicheSortie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmFicheSortie = class(TForm)
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
    Panel1: TPanel;
    btvalider: TButton;
    Button2: TButton;
    st_ficheSortie: TStringGrid;
    Label6: TLabel;
    cbMagasin: TComboBox;
    edNomVeh: TComboBox;
    cbMatVeh: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edCodecltDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbMatVehKeyPress(Sender: TObject; var Key: Char);
    procedure st_ficheSortieKeyPress(Sender: TObject; var Key: Char);
    procedure st_ficheSortieDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure st_ficheSortieSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btvaliderClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbMagasinCloseUp(Sender: TObject);
    procedure cbMatVehChange(Sender: TObject);
    procedure edNomVehCloseUp(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmFicheSortie: TfrmFicheSortie;
  vCodeMag : string;

implementation

{$R *.dfm}

uses URechClt, UDM, records, UConnexion;

procedure TfrmFicheSortie.btvaliderClick(Sender: TObject);
var
  fiche_es : TFiche_es;
  I,j,vVide,vFuite,vPleine,vTotal: Integer;
  stockArt : TStock;
  codeArt,sqlUp,sqlUpFiche,SqlSelFiche, SqlUpTFiche : string;
  article : TArticle;
  ficheEs_recap : TficheEs_recap;
  FicheEsRec : TficheEs_recap;
  ficheEsTotal : TFicheEsTotal;
begin
  for I := 3 to st_ficheSortie.ColCount do
    for j := 1 to st_ficheSortie.RowCount-1 do
      if st_ficheSortie.Cells[i,j] = '' then
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
  if Trim(edNomVeh.Text)='' then
    MessageDlg('Veillez sp�cifier le vehicule',mtError,[mbRetry],0)
  else
  if MessageDlg('Voulez-vous enregistrer cette fiche d''entr�e ?',mtInformation,[mbYes,mbNo],0) = mrYes then
  begin
//  INSERTION DANS fiche recap
  with ficheEs_recap do
    begin
      Nnum_fes:=StrToInt(edNum.Text);
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
      SB3A_Ov:='';
      SB3A_Op:='';
      SB3A_Of:='';
      SB3_Ov:='';
      SB3_Op:='';
      SB3_Of :='';
      SB6_Ov:='';
      SB6_Op:='';
      SB6_Of:='';
      SB6R_Ov:='';
      SB6R_Op:='';
      SB6R_Of:='';
      SB12_Ov:='';
      SB12_Op:='';
      SB12_Of:='';
      SB50_Ov:='';
      SB50_Op:='';
      SB50_Of:='';
      SB25_Ov:='';
      SB25_Op:='';
      SB25_Of:='';
      SB6E_Ov:='';
      SB6E_Op:='';
      SB6E_Of:='';
      SB12E_Ov:='';
      SB12E_Op:='';
      SB12E_Of :='';
    end;
    dm.InsertFicheEsRecap(ficheEs_recap);

//insertion dans la table total fiche
  with ficheEsTotal , st_ficheSortie do //Insertion dans la table de total fiche
    begin
      Nnum_ft := StrToInt(edNum.Text);
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

      Ntype_ft := 1; // 0 Pour les entr�es ; 1 pour les sorties
      Susager := vUsager;
      Nstatut_canc := 0;
    end;
    if vCodeMag <>'PFBC' then
      dm.InsertFicheEsTotal(ficheEsTotal);

    for I := 1 to st_ficheSortie.RowCount-1 do
      begin
        with fiche_es , st_ficheSortie do
          begin
            //            selection de la qteen stock de l'article

            codeArt := Cells[1,i];
            stockArt:=dm.selectStockByArticle(codeArt);
            article:=dm.selectArticleByCode(codeArt);


            Nnum_fes := StrToInt(edNum.Text);
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
            Ntype_fes:= 1 ; // 0 Pour la fiche d'entr�e et 1 pour la fiche de sortie
            Susager := vusager;
            Nstatut_canc := 0;          end;
          dm.InsertFiche_es(fiche_es);
      end;// end for


    for I := 1 to st_ficheSortie.RowCount-1 do
      begin
        with st_ficheSortie do
          begin
//            selection de la qteen stock de l'article
            codeArt := Cells[1,i];
            stockArt:=dm.selectStockByArticle(codeArt);
            article:=dm.selectArticleByCode(codeArt);

//                 MAJ des qte en stock
            sqlUp:='update tb_stock set '
                    +' qte_vide = '+IntToStr(stockArt.NQte_vide - StrToInt(Cells[4,i]))+','
                    +' qte_mag = '+IntToStr(stockArt.NQte_mag - StrToInt(Cells[3,i]) - StrToInt(Cells[5,i]))+','
                    +' qte_totale = '+IntToStr(stockArt.Nqte_total - StrToInt(Cells[3,i]) - StrToInt(Cells[4,i])- StrToInt(Cells[5,i]))
                    +' where code_art = '+QuotedStr(codeArt);
            dm.UpdateTable(sqlUp);

            vVide := StrToInt(Cells[3,i]);
            vFuite :=StrToInt(Cells[4,i]);
            vPleine:=StrToInt(Cells[5,i]);

            vTotal := vVide+vFuite+vPleine;

//        Mise � jour du r�cap de fiche de sortie

            if Cells[3,i]='0' then Cells[3,i]:='';
            if Cells[4,i]='0' then Cells[4,i]:='';
            if Cells[5,i]='0' then Cells[5,i]:='';

            sqlUpFiche := 'update tb_fichees_recap set '
                          +article.Salias_art+'_Ov = '+QuotedStr(Cells[3,i])+','
                          +article.Salias_art+'_Of = '+QuotedStr(Cells[4,i])+','
                          +article.Salias_art+'_Op = '+QuotedStr(Cells[5,i])
                          +' where num_fes = '+edNum.Text;
            dm.UpdateTable(sqlUpFiche);

//Mise � jours dans la table total fiche d'sortie

            if vTotal<>0 then
              SqlUpTFiche:='Update tb_ficheEs_Total set '
                            +article.Salias_art+'_S = '+QuotedStr(IntToStr(vTotal))
                            +' where num_ft = '+edNum.Text
            else
              SqlUpTFiche:='Update tb_ficheEs_Total set '
                            +article.Salias_art+'_S = '+QuotedStr('')
                            +' where num_ft = '+edNum.Text  ;

            dm.UpdateTable(SqlUpTFiche);


          end;
      end;

      Button2.Click;
      FormShow(sender);
  end;

end;

procedure TfrmFicheSortie.Button2Click(Sender: TObject);
begin
  edNum.Clear;
  edCodeclt.Clear;
  edNomClt.Clear;
  edNomVeh.Clear;
  cbMatVeh.Clear;

end;

procedure TfrmFicheSortie.cbMagasinCloseUp(Sender: TObject);
var
  Magasins : TMagasinArray;
  PsqlMag,PsqlArt: string;
  I: Integer;
  articles : TarticleArray;
begin
  PsqlMag := ' where designation_mag = '+QuotedStr(cbMagasin.Text) ;
  Magasins :=dm.selectMagasins(PsqlMag);

  for I := Low(Magasins) to High(Magasins) do
    begin
      vCodeMag:=Magasins[i].SCode_mag;
    end;

//Selection d'article

  PsqlArt := ' where code_mag = '+QuotedStr(vCodeMag); //where code_mag = '+QuotedStr('PFGB');
  articles := DM.selectArticles(PsqlArt)      ;
  st_ficheSortie.RowCount := Length(articles)+1;

  for I := Low(articles) to High(articles) do
    begin
       with st_ficheSortie do
          begin
            Cells[1,i+1] := articles[i].Scode_art;
            Cells[2,i+1] := articles[i].Sdesignation_art;
          end;
    end;
    if st_ficheSortie.RowCount>1 then st_ficheSortie.FixedRows:=1;

end;

procedure TfrmFicheSortie.cbMatVehChange(Sender: TObject);
var
  Psql,vNomVeh : string;
  vehs : TVehiculeArray;
  i:integer;
begin

  Psql := ' where num_immat_veh like '+QuotedStr(cbMatVeh.Text+'%');

  vehs:=dm.SelectVehicule(Psql);

  for I := Low(vehs) to High(vehs) do
      begin
        vNomVeh := vehs[i].SMarque;
      end;
      edNomVeh.Text := vNomVeh;

end;

procedure TfrmFicheSortie.cbMatVehKeyPress(Sender: TObject; var Key: Char);
var
  Psql,vNomVeh : string;
  vehs : TVehiculeArray;
  i:integer;
begin
  Psql := ' where num_immat_veh like '+QuotedStr(cbMatVeh.Text+'%');

  vehs:=dm.SelectVehicule(Psql);

  for I := Low(vehs) to High(vehs) do
      begin
        vNomVeh := vehs[i].SMarque;
      end;
      edNomVeh.Text := vNomVeh;
end;

procedure TfrmFicheSortie.edCodecltDblClick(Sender: TObject);
begin
vSourceRclt:='Sortie';
frmRechClt.ShowModal;
end;

procedure TfrmFicheSortie.edNomVehCloseUp(Sender: TObject);
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

procedure TfrmFicheSortie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cbMatVeh.Clear;
end;

procedure TfrmFicheSortie.FormCreate(Sender: TObject);
begin
with st_ficheSortie do
  begin
    Cells[0,0]:='N�';
    Cells[1,0]:='Article';
    Cells[2,0]:='D�signation';
    Cells[3,0]:='Vide';
    Cells[4,0]:='Fuite';
    Cells[5,0]:='Pleine';
  end;
end;

procedure TfrmFicheSortie.FormShow(Sender: TObject);
var
  Psql,PsqlArt : string;
  vehs : TVehiculeArray;
  i,j:integer;

  articles : TarticleArray;

  Magasins : TMagasinArray;
  PsqlMag : string;

begin
  cbdate.Checked := False;
//vider les cellules
  for I := 3 to st_ficheSortie.ColCount do
    for j := 1 to st_ficheSortie.RowCount-1 do
      st_ficheSortie.Cells[i,j] := ' ';
//*****
  cbdate.Date := Now;
  btvalider.Enabled := false;

// selection du magasin

  PsqlMag := '';
  Magasins :=dm.selectMagasins(PsqlMag);

  for I := Low(Magasins) to High(Magasins) do
    begin
      cbMagasin.Items.Add(Magasins[i].Sdesignation_mag);
    end;

//selection du v�hicule
  Psql := '';

  vehs:=dm.SelectVehicule(Psql);
  for I := Low(vehs) to High(vehs) do
    begin
      edNomVeh.Items.Add(vehs[i].SMarque);
    end;
end;

procedure TfrmFicheSortie.st_ficheSortieDrawCell(Sender: TObject; ACol,
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

procedure TfrmFicheSortie.st_ficheSortieKeyPress(Sender: TObject;
  var Key: Char);
var
  cellEmpty : Boolean;
  I: Integer;
  j: Integer;
begin
if key = #13 then
  begin
    for I := 3 to st_ficheSortie.ColCount do
      for j := 0 to st_ficheSortie.RowCount do
        if Trim(st_ficheSortie.Cells[i,j]) = '' then
          begin
            st_ficheSortie.Cells[i,j] := '0';
          end;
          btvalider.Enabled:=true;
  end;
end;

procedure TfrmFicheSortie.st_ficheSortieSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
    if (Acol=0) or (Acol=1) or (Acol=2) then
        CanSelect:=false
      else
        canselect:=true;
end;

end.
