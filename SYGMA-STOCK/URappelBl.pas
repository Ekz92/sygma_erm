unit URappelBl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmRappelBL = class(TForm)
    Label31: TLabel;
    lbcodeClt: TLabel;
    Label21: TLabel;
    Label30: TLabel;
    lbTotBlle: TLabel;
    Label27: TLabel;
    lbPrixLiv: TLabel;
    Label24: TLabel;
    lbTotKg: TLabel;
    Label22: TLabel;
    lbTot_ligne: TLabel;
    Label1: TLabel;
    Label20: TLabel;
    Sg_rappel_Bl: TStringGrid;
    ednomClient: TEdit;
    edcodeClt: TEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    ednumFacture: TEdit;
    Button1: TButton;
    Button2: TButton;
    edprix: TEdit;
    EdPointVente: TEdit;
    edzone: TEdit;
    PopupMenu1: TPopupMenu;
    Modifier1: TMenuItem;
    frxBL: TfrxReport;
    frxDBBL: TfrxDBDataset;
    QBL: TSQLQuery;
    procedure ednumFactureDblClick(Sender: TObject);
    procedure ednumFactureExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sg_rappel_BlDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Modifier1Click(Sender: TObject);
    procedure ednomClientExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EdPointVenteExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmRappelBL: TfrmRappelBL;
    Sg_rappelBl_row :integer;
  vNumHis :Integer;

  vDesignation_mag,
  vCode_mag : string;

implementation

{$R *.dfm}

uses records, UDM, URechBLRappel, UQteLivre2, UConnexion;

procedure TfrmRappelBL.Button1Click(Sender: TObject);
var
  bl : TBL;
  magasin : TMagasin;
  stock,
  stock_up : TStock;
  article : TArticle;
  Import : TImportArray;
  Bld : TBLDetail;
{
  sortie : TSortie;
  SelectMouv,
  insertMouv,
  UpdateMouv :TMouvStock;
 }
  i,k,j,l,Qte_Stock,Qte_new:integer;
  Old_BL,
  code_mag,
  code_art,
  designation_mag,designation_art : string;

  kilo : real;
  nom_clt,date_op,
  SqlUpdateBL,
  SqlUpdateBLDetail,
  SqlBLDetail : string;
  num_import,livpart,
  livpart_bld :integer;

  blhis : Tb_bl_his;
begin
if ((edcodeClt.Text='' )or (edprix.Text ='' )or (Sg_rappel_Bl.Cells[1,1]='' )or (lbPrixLiv.Caption = '0') )then
  begin
    MessageDlg('Erreur, veillez completer la saisie',mtError,[mbok],0);
  end else
begin
      {Statut livraison partielle}
      livpart:=0;
      for l := 1 to Sg_rappel_Bl.RowCount -1  do
        begin
          if StrToInt(Sg_rappel_Bl.Cells[4,l]) > StrToInt(Sg_rappel_Bl.Cells[5,l]) then
            livpart := 1 ;
        end;

      { Update table BL       }

      {
      with Sg_rappel_Bl  do
        begin
          SqlUpdateBL := 'Update tb_bl set '
          +'total_kilo =' +lbTotKg.Caption+','
          +'Total_bouteille ='+lbTotBlle.Caption+','
          +'prix_livraison = '+lbPrixLiv.Caption +','
          //SUsager:='1001';//vUsager;
          +'statut_bl = 0 ,'
          +'livpart = '+ IntToStr(livpart)
          +' where num_bl = '+QuotedStr(ednumFacture.Text)
          +' and numbl_his = '+;
        end;
        dm.UpdateTable(SqlUpdateBL);       }

        { Insertion dans la table BL }

        with bl,Sg_rappel_Bl  do
          begin
            Snum_bl := ednumFacture.Text;      //
            Nnum_bl_his := vNumHis;
            SCode_clt := edcodeClt.Text;
            Snom_clt := ednomClient.Text;
            SpointVente := EdPointVente.Text;
            Scode_mag := vCode_mag; //code_mag;  Create
            SDesignation_mag := vDesignation_mag;             //
            RTotKilo := StrTofloat(lbTotKg.Caption);
            Sdate_bl :=  DateTimeToStr(now); //Cells[0,1];
            NTotBlle :=StrToInt(lbTotBlle.Caption);
            RPrixLiv :=StrToFloat(lbPrixLiv.Caption) ;
            SUsager:=vUsager;
            Nstatut_bl:=0;
            NLivPart := 0//livpart_bl;
          end;
          dm.InsertBL(bl);


 for I := 1 to Sg_rappel_Bl.RowCount -1 do
   begin
      code_art := Sg_rappel_Bl.Cells[2,i];

      designation_art :=  Sg_rappel_Bl.Cells[3,i];
      stock := dm.selectStockByArticle(code_art);
      code_mag := stock.Scode_mag;      //OK code_mag
      Qte_Stock := stock.NQte_mag;
      date_op := Sg_rappel_Bl.Cells[0,i];

      magasin := DM.selectMagasinByCode(code_mag);
      designation_mag := magasin.Sdesignation_mag; //OK designation_mag

    { Insertion dans la table BL_DETAILS}

        {Contrôle de la livraison partielle d'article}
        if StrToInt(Sg_rappel_Bl.Cells[4,i]) >  StrToInt(Sg_rappel_Bl.Cells[5,i]) then
          begin
            livpart_bld := 1
          end else
          begin
            livpart_bld := 0
          end;

      article  := DM.selectArticleByCode(code_art) ;
      kilo := (Article.Rkilo)*(StrToInt(Sg_rappel_Bl.Cells[5,i]));

      {Selection d'article dans bl_details pour avec la qte total livré}

      SqlBLDetail:= ' where num_bl = '+QuotedStr(ednumFacture.Text)
                      +' and code_art = '+QuotedStr(Sg_rappel_Bl.Cells[2,i]) ;

      Bld := DM.SelectBlDetail(SqlBLDetail);

      {MAJ de l'article dans bl_details avec la nouvelle qte et le statut}

      SqlUpdateBLDetail := 'Update tb_bl_detail set '
          +'qte_liv = '+ IntToStr(Bld.NQte_liv + StrToInt(Sg_rappel_Bl.Cells[5,i]))+','//Ancienne qte + la nouvelle qte
          +'kilo_total = '+FloatToStr(article.Rkilo*StrToInt(Sg_rappel_Bl.Cells[5,i]))+','
          +' livpart = '+IntToStr(livpart_bld)
          +' where num_bl = '+QuotedStr(ednumFacture.Text)
          +' and code_art = '+QuotedStr(Sg_rappel_Bl.Cells[2,i])   ;

          dm.UpdateTable(SqlUpdateBLDetail);

       { Insertion dans bl historique }

        with blhis do
          begin
            Nnum_blhis :=vNumHis;
            Snum_bl := ednumFacture.Text;
            Sdate_blhis := DateTimeToStr(Now);
            Scode_art := Sg_rappel_Bl.Cells[2,i];
            Sdesignation_art :=Sg_rappel_Bl.Cells[3,i];
            Nqte_his := StrToInt(Sg_rappel_Bl.Cells[5,i])  ;
          end;
          dm.InsertblHis(blhis);

    end;
  with QBL do
    begin
      SQL.Clear;
      SQL.Add('Select * from tb_bl b, tb_bl_his h '
              +' where b.num_bl = '+QuotedStr(ednumFacture.Text)
              +' and b.numbl_his = ' + IntToStr(vNumHis)
              +' and b.numbl_his=h.num_blhis '

              );
      Open;
    end;
 frxBL.ShowReport();
   {Vider composant}
   Button2.Click;
end;
end;

procedure TfrmRappelBL.Button2Click(Sender: TObject);
begin
ednomClient.Clear;
edcodeClt.Clear;
ednumFacture.Clear;
edprix.Clear;
EdPointVente.Clear;
edzone.Clear;
Sg_rappel_Bl.RowCount :=2;
Sg_rappel_Bl.Rows[1].Clear;

end;

procedure TfrmRappelBL.ednomClientExit(Sender: TObject);
var
  bls : TBLDetailArray;
  Import : TImport;
  Article : TArticle;
  i,rowcount,nbBlle,Pnum_import : integer;
  Pnom_clt ,
  code_art,
  Psql: string;
  kilo,Tkilo : real;
  //*****
  vClient,
  code_clt : string;
  clt : TClient;
  //*****
  points : TPointVenteArray;
begin
  nbBlle:=0;

  //traitement du code client
  vClient := Trim(ednomClient.Text);

  clt:=DM.selectCodeclt(vClient);
  code_clt:= clt.SCodeClt;
  edcodeClt.Text := clt.SCodeClt;


//affichage dans la grille de données
  Psql := ' where num_bl = '+QuotedStr(ednumFacture.Text)
          +' and livpart = 1 ' ;

  bls := DM.SelectBlDetails(Psql);

  Pnom_clt := Trim(ednomClient.text);

  Tkilo:=0;

  { nombre de ligne dans la grille}
  if Length(bls) = 0 then
    rowcount := 2
  else
    rowcount := Length(bls)+1;

  lbTot_ligne.Caption := IntToStr(Length(bls)) ;
  Sg_rappel_Bl.RowCount := rowcount;

  for I := Low(bls) to High(bls) do
    with Sg_rappel_Bl do
      begin
        Cells[0,i+1]:= edcodeClt.Text;
        Cells[1,i+1]:= bls[i].Snum_bl;
        Cells[2,i+1]:= bls[i].Scode_art;
        Cells[3,i+1]:= bls[i].Sdesignation_art;
        Cells[4,i+1]:= IntToStr(bls[i].Nqte_art - bls[i].NQte_liv);
        Cells[5,i+1]:= Cells[4,i+1];//IntToStr(bls[i].NQte_liv);

        vCode_mag := bls[i].Scode_mag;
        vDesignation_mag := bls[i].Sdesignation_mag;

        nbBlle := nbBlle+StrToInt(Cells[5,i+1]) ;
        code_art:= Cells[2,i+1];

        article  := DM.selectArticleByCode(code_art) ;

        kilo := (Article.Rkilo)*(StrToInt(Cells[5,i+1]));
        //ShowMessage(floatToStr(kilo));
        Tkilo := Tkilo + kilo;
      end;
      lbTotBlle.Caption:=IntToStr(nbBlle);
      lbTotKg.Caption := FloatToStr(Tkilo);

end;

procedure TfrmRappelBL.ednumFactureDblClick(Sender: TObject);
begin
frmRechBLRappel.ShowModal;
end;

procedure TfrmRappelBL.ednumFactureExit(Sender: TObject);
var
  numhis : TMaxNumRappel;
begin
  numhis := DM.selectMaxNumrappel;
  vNumHis := numhis.Nnumrappel + 1 ;
end;

procedure TfrmRappelBL.EdPointVenteExit(Sender: TObject);
var
  point : TPointVente;
  nom_point : String;

  zone : TZone;
  nom_zone :string;
  prix :integer;
  PrixLiv,kilo : Real;
begin
  nom_point := edPointVente.Text;
  point := dm.selectZoneByPoint(nom_point);
  edzone.Text := point.Snom_zone;

  //**
  nom_zone:=edzone.Text;
  zone := dm.selectZonesByNom_zone(nom_zone);
  edprix.Text := FloatToStr(zone.Rprix_zone);

  prix := StrToInt(edprix.Text);
  kilo := StrToFloat(lbTotKg.Caption);

  PrixLiv := prix * kilo;
  lbPrixLiv.Caption := FloatToStr(PrixLiv);
end;

procedure TfrmRappelBL.FormCreate(Sender: TObject);
begin
  with Sg_rappel_Bl do
    begin
      Cells[0,0]:='Date';
      Cells[1,0]:='N° BL';
      Cells[2,0]:='Code Art';
      Cells[3,0]:='Designation';
      Cells[4,0] := 'Qte Res';
      Cells[5,0] := 'Qte Liv';
    end;

end;

procedure TfrmRappelBL.Modifier1Click(Sender: TObject);
begin

  Sg_rappelBl_row := Sg_rappel_Bl.Row;
  frmQteLivre2.ShowModal;


end;

procedure TfrmRappelBL.Sg_rappel_BlDrawCell(Sender: TObject; ACol,
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

end.
