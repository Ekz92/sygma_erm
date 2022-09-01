unit USortieDivers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TfrmSortieDivers = class(TForm)
    Bevel1: TBevel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbUsager: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Label7: TLabel;
    edQte: TEdit;
    edcode_art: TEdit;
    edcode_mag: TEdit;
    edDesignation_art: TEdit;
    edDesignation_mag: TEdit;
    DateTimePicker1: TDateTimePicker;
    edPiece: TEdit;
    RgType: TRadioGroup;
    procedure edcode_artDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmSortieDivers: TfrmSortieDivers;
    vTypeSortie : integer;
  FrmSource : string;

implementation

{$R *.dfm}

uses URech_Article_entree, records, UDM, UConnexion;

procedure TfrmSortieDivers.edcode_artDblClick(Sender: TObject);
begin
  if RgType.ItemIndex = 0 then vTypeSortie := 0
  else
  if RgType.ItemIndex = 1 then vTypeSortie := 1
  else
  if RgType.ItemIndex = 2 then vTypeSortie := 2;

  FrmSource_e_s:='Sortie';
  frmrech_article_entree.ShowModal;
end;

procedure TfrmSortieDivers.FormShow(Sender: TObject);
begin
DateTimePicker1.DateTime := StrToDateTime(DateTimeToStr(now));
lbUsager.Caption := vUsager;

RgType.ItemIndex:=-1;
edPiece.SetFocus;

end;

procedure TfrmSortieDivers.SpeedButton1Click(Sender: TObject);
var
  sortie : TSortie;

  Qte_vide,
  Qte_ini,
  Qte_fin,
  qte_total,
  Qte_mag : integer;

  code_art,
  code_mag,
  date_op,
  sqlUpdStock : string;

  SelectMouv,
  insertMouv,
  UpdateMouv :TMouvStock;

  stock : TStock;
begin
if (edcode_art.Text='') or
    (edcode_mag.Text='') or
    (edQte.Text='') or
    (edPiece.Text='') or
    (RgType.ItemIndex = -1) then
  begin
    MessageDlg('Erreur, veillez sp�cifier le type de sortie et renseignez tous les champs',mtError,[mbRetry],0);
    exit
  end;

if  (StrToInt(edQte.Text) = 0 )then
  begin
    MessageDlg('Erreur, v�rifier la quant� ',mtError,[mbRetry],0);
    exit
  end;

if RgType.ItemIndex = 0 then {Traitement pour les bouteilles vide}
  begin
    //---------------------------Selection de la quantit� en stock----------
      code_art := edcode_art.Text;
      stock := dm.selectStockByArticle(code_art);

      Qte_vide := stock.NQte_vide;
      qte_total := stock.NQte_vide + stock.NQte_mag;
    //-------------------------- Insertion dans la table des sortie----------
      with sortie do
        begin
          Scode_art_src :='';
          SCode_art:=edcode_art.Text;
          Scode_mag:=edcode_mag.Text;
          NQte_sortie:=StrToInt(edQte.Text);
          NType_Sortie := 0;
          SUsager:=lbUsager.Caption;
          Ddate_sortie:=DateTimeToStr(DateTimePicker1.DateTime);
          SPiece:=edPiece.Text;
          Nstatut_canc:=0;
        end;
    //------------------------ Modification de la quantit� du stock ----------------------
          sqlUpdStock := 'Update tb_stock set   '
                      +' qte_vide = '+IntToStr(Qte_vide - StrToInt(edQte.Text))+','
                      +' qte_totale = '+IntToStr(qte_total - StrToInt(edQte.Text))+','
                      +' code_mag = '+QuotedStr(edcode_mag.Text)
                      +' where code_art = '+QuotedStr(edcode_art.Text);
    //*****************************************************************
        {Ecriture dans la table des mouvement du stock TmouvemntStock}

    //    code_art := edcode_art.Text;
        date_op := DateToStr(DateTimePicker1.Date);
        code_mag := edcode_mag.Text;

       SelectMouv := dm.selectMouvStock(code_art,date_op,code_mag);

       if (SelectMouv.Ddate_mouv.IsEmpty) then
        Begin
            with insertMouv do
              begin
               // NidMouvStock := SelectMouv.NidMouvStock;
                Ddate_mouv := date_op;
                Scode_art := code_art;
                Scode_mag := edcode_mag.Text;
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
                Nqte_sortie := SelectMouv.Nqte_sortie+StrToInt(edQte.Text) ;
              end;
              dm.Update_moovStock(UpdateMouv);
          end ;

        if MessageDlg('Confirmez-vous la validation de l''ajout en stock?',mtConfirmation,[mbyes,mbno],0)=mryes then
          begin
            dm.InsertSortie(sortie);
            dm.UpdateTable(sqlUpdStock);
            SpeedButton2.Click;
          end;
  end else
if RgType.ItemIndex = 1 then {Traitement pour les bouteilles charg�es}
  begin
    //---------------------------Selection de la quantit� en stock----------
      code_art := edcode_art.Text;
      stock := dm.selectStockByArticle(code_art);

      Qte_vide := stock.NQte_vide ; // - StrToInt(edQte.Text);
      Qte_mag := stock.NQte_mag - StrToInt(edQte.Text);
      Qte_fin := Qte_ini+StrToInt(edQte.Text);

    //-------------------------- Insertion dans la table des entr�e----------
      with sortie do
        begin
          Scode_art_src :=QuotedStr('');
          SCode_art:=QuotedStr(edcode_art.Text);
          Scode_mag:=QuotedStr(edcode_mag.Text);
          NQte_sortie:=StrToInt(edQte.Text);
          NType_Sortie := 1;
          SUsager:=QuotedStr(lbUsager.Caption);
          Ddate_sortie:=QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',DateTimePicker1.DateTime));
          SPiece:=QuotedStr(edPiece.Text);
          Nstatut_canc:=0;
        end;
    //------------------------ Modification de la quantit� du stock ----------------------
        sqlUpdStock := 'Update tb_stock set '
                    +' qte_vide ='+IntToStr(Qte_vide)+','
                    +' qte_mag = '+IntToStr(stock.NQte_mag - StrToInt(edQte.Text))+','
                    +' qte_totale = '+IntToStr(stock.Nqte_total - StrToInt(edQte.Text)) +','
                    +' code_mag = '+QuotedStr(edcode_mag.Text)
                    +' where code_art = '+QuotedStr(edcode_art.Text);
    //*****************************************************************
        {Ecriture dans la table des mouvement du stock TmouvemntStock}
    //    code_art := edcode_art.Text;
      date_op := DateToStr(DateTimePicker1.Date);
      code_mag := edcode_mag.Text;

       SelectMouv := dm.selectMouvStock(code_art,date_op,code_mag);

       if (SelectMouv.Ddate_mouv.IsEmpty) then
        Begin
            with insertMouv do
              begin
               // NidMouvStock := SelectMouv.NidMouvStock;
                Ddate_mouv := date_op;
                Scode_art := code_art;
                Scode_mag := edcode_mag.Text;
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
                Nqte_entree := SelectMouv.Nqte_entree+StrToInt(edQte.Text);
                Nqte_sortie := SelectMouv.Nqte_sortie +StrToInt(edQte.Text) ;
              end;
              dm.Update_moovStock(UpdateMouv);
          end ;

        if MessageDlg('Confirmez-vous la validation de l''ajout en stock?',mtConfirmation,[mbyes,mbno],0)=mryes then
          begin
            dm.InsertSortie(sortie);
            dm.UpdateTable(sqlUpdStock);
            SpeedButton2.Click;
          end;
  end else

  if RgType.ItemIndex = 2 then {Traitement pour les bouteilles de consignation}
    begin
      //---------------------------Selection de la quantit� en stock----------
        code_art := edcode_art.Text;
        stock := dm.selectStockByArticle(code_art);

        Qte_ini := stock.NQte_mag;
        Qte_fin := Qte_ini+StrToInt(edQte.Text);
      //-------------------------- Insertion dans la table des entr�e----------
        with sortie do
          begin
            Scode_art_src :=QuotedStr('');
            SCode_art:=QuotedStr(edcode_art.Text);
            Scode_mag:=QuotedStr(edcode_mag.Text);
            NQte_sortie:=StrToInt(edQte.Text);
            NType_Sortie := 2 ;
            SUsager:=QuotedStr(lbUsager.Caption);
            Ddate_sortie:=QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',DateTimePicker1.DateTime));
            SPiece:=QuotedStr(edPiece.Text);
            Nstatut_canc:=0;
          end;
      //------------------------ Modification de la quantit� du stock ----------------------
            sqlUpdStock := 'Update tb_stock set   '
                        +'qte_mag = '+IntToStr(Qte_ini - StrToInt(edQte.Text))+','
                        +'qte_totale = '+IntToStr(Qte_ini - StrToInt(edQte.Text))+','
                        +' code_mag = '+QuotedStr(edcode_mag.Text)
                        +' where code_art = '+QuotedStr(edcode_art.Text);
      //*****************************************************************
          {Ecriture dans la table des mouvement du stock TmouvemntStock}
      //    code_art := edcode_art.Text;
          date_op := DateToStr(DateTimePicker1.Date);
          code_mag := edcode_mag.Text;

         SelectMouv := dm.selectMouvStock(code_art,date_op,code_mag);

         if (SelectMouv.Ddate_mouv.IsEmpty) then
          Begin
              with insertMouv do
                begin
                 // NidMouvStock := SelectMouv.NidMouvStock;
                  Ddate_mouv := date_op;
                  Scode_art := code_art;
                  Scode_mag := edcode_mag.Text;
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
                  Nqte_sortie := SelectMouv.Nqte_sortie+StrToInt(edQte.Text) ;
                end;
                dm.Update_moovStock(UpdateMouv);
            end ;

      if MessageDlg('Confirmez-vous la validation de l''ajout en stock?',mtConfirmation,[mbyes,mbno],0)=mryes then
        begin
          dm.InsertSortie(sortie);
          dm.UpdateTable(sqlUpdStock);
          SpeedButton2.Click;
        end;
    end;
end;

procedure TfrmSortieDivers.SpeedButton2Click(Sender: TObject);
begin
edcode_art.Clear;
edDesignation_art.Clear;
edcode_mag.Clear;
edDesignation_mag.Clear;
//RgType.ItemIndex := -1;

edQte.Clear;
FormShow(self);


end;

end.
