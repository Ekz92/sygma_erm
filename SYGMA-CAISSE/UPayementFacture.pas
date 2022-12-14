unit UPayementFacture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.Menus, frxClass,
  frxDBSet, Data.DB, Data.SqlExpr, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TfrmPayementFacture = class(TForm)
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    edRechNumFact: TEdit;
    edRechNomClt: TEdit;
    Panel2: TPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    eddate: TEdit;
    cbTypEncais: TComboBox;
    edFacture: TEdit;
    cb_bk: TComboBox;
    edCodeBk: TEdit;
    edcodeclt: TEdit;
    edLibEncais: TEdit;
    ednomclt: TEdit;
    cbCaisse: TComboBox;
    edCompte: TEdit;
    edMontant_T: TEdit;
    edOperation: TEdit;
    edmontantReste: TEdit;
    edMontant: TEdit;
    Button1: TButton;
    Button2: TButton;
    frxRecuCaisse: TfrxReport;
    QRecu: TSQLQuery;
    frxDBRecuCaisse: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Forage1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edRechNumFactChange(Sender: TObject);
    procedure edRechNomCltChange(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure cbTypEncaisCloseUp(Sender: TObject);
    procedure cb_bkCloseUp(Sender: TObject);
    procedure cbCaisseCloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edMontantKeyPress(Sender: TObject; var Key: Char);
    procedure Forage1Click(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  frmPayementFacture: TfrmPayementFacture;
  vMnt_t,
  vMnt_p,
  vMnt_r,
  vCaisse_solde  : real;

implementation

{$R *.dfm}

uses records, UDM, UConnexion;

procedure TfrmPayementFacture.Button1Click(Sender: TObject);
var
  PayeCaisse : TPayement_caisse;
  hisCaisse : THistoriqueCaisse;

  query : TSQLQuery;

  RC,RC_avance : TReleve_client;
  caisses :TCaisseArray;
  TypEncais : TTypeEncaissementArray;
  vTypEncais : string;

  UpdateSql,
  statut,
  UpdatePayement,
  UpdateSolde,
  SqlUpdate_cc,
  PsqlCaisse ,SqlUpdCom,
  SqlCmd ,
  sqlTypEnc,SqlUpCc,
  vNumCc : string;
  vMontant_p,
  vMontant_r,
  vMnt_dif:Real;

  Sql_cc : string;
  solde, vSolde : real;
  i,vNumCmd:integer;
  ccs : TCompteClientArray;
  EtatJrn : TEtatJournal;

  avd : TAvanceDetail;

  maxIdAvance : TMaxIdAvance;
  vOpe : integer;
begin
{V?rification de si la facture est s?l?ctionn?}
if edFacture.Text='' then
begin
  MessageDlg('Veuillez selectionner une facture ? pay?e', mtError,[mbRetry],0);
  exit
end;

if cbTypEncais.Text='' then
BEGIN
  MessageDlg('Veuillez selectionner un type d''encaissement', mtError,[mbRetry],0);
  exit
END;

if (cbTypEncais.Text='Ch?que') and (cb_bk.Text='') then
BEGIN
  MessageDlg('Veuillez selectionner la banque', mtError,[mbRetry],0);
  exit
END;

if (edLibEncais.Text='') then
BEGIN
  MessageDlg('Veuillez sp?cifier le libell? de l''encaissement', mtError,[mbRetry],0);
  exit
END;

if (edCompte.Text='') then
BEGIN
  MessageDlg('Veuillez s?lectionner la caisse', mtError,[mbRetry],0);
  exit
END;


if (edMontant.Text='') then
BEGIN
  MessageDlg('Veuillez entrer le montant pay?', mtError,[mbRetry],0);
  exit
END;
if edMontant.Text = 'Sold?e' then
begin
  MessageDlg('Cette facture est d?j? sold?e', mtError,[mbRetry],0);
  exit
end;

if MessageDlg('Voulez-vous poc?der au payement de cette facture ?',mtWarning,[mbyes,mbno],0)=mrYes then
  begin
{ Insertion dans la table du relev? client}

//      R?cup?ration du solde compte du client
      Sql_cc := ' Where code_clt = '+QuotedStr(edcodeclt.Text);
      ccs := dm.SelectCompteClient(Sql_cc);

      for I := Low(ccs) to High(ccs) do
        begin
          solde := ccs[i].RSolde;
          vNumCc:= ccs[i].SNum_cc;
        end;

    if (cbTypEncais.Text='Ch?que') then
        begin
          with RC do
            begin
              SCode_client:=QuotedStr(edcodeclt.Text);
              Snom_client:=QuotedStr(ednomclt.Text);
              SDate_rs := QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
              SOperation:=QuotedStr('Tr?sorerie');
              SCaisse:=QuotedStr(edCodeBk.Text);
              SPiece:=QuotedStr(edFacture.Text);
              SAvance_debit:=QuotedStr('-');
              SAvance_credit:=QuotedStr('-');
              SFactRet_debit:=QuotedStr('-');
              SFactRet_credit:=QuotedStr(edMontant.Text);
              SLibelle:=QuotedStr(edLibEncais.Text);
            end;
            dm.InsertReleveClient(RC);
        end else
    if (cbTypEncais.Text='Ch?que') then
        begin
          with RC do
            begin
              SCode_client:=QuotedStr(edcodeclt.Text);
              Snom_client:=QuotedStr(ednomclt.Text);
              SDate_rs := QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
              SOperation:=QuotedStr('Tr?sorerie');
              SCaisse:=QuotedStr(edCodeBk.Text);
              SPiece:=QuotedStr(edFacture.Text);
              SAvance_debit:=QuotedStr('-');
              SAvance_credit:=QuotedStr('-');
              SFactRet_debit:=QuotedStr('-');
              SFactRet_credit:=QuotedStr(edMontant.Text);
              SLibelle:=QuotedStr(edLibEncais.Text);
            end;
            dm.InsertReleveClient(RC);

        //      Etat journal
          with EtatJrn do
            begin
              Sdate_ej:= eddate.Text;
              Snum_ope := edOperation.Text;
              Snum_piece := edFacture.Text;
              Slibelle := edLibEncais.Text+' '+ednomclt.Text;
              Sdebit := '-';
              Scredit := edMontant.Text;
              Ssens := 'C';
              Susager := vUsager;
            end;
          dm.InsertEtatJournal(EtatJrn); //Insertion dans etat journal

        end ;

    if (cbTypEncais.Text='Avance') and (solde >= StrToFloat(edMontant.Text)) then
    begin{ Pour les imputations d'avances }
      with RC_avance do //ligne de d?bit d'avance
        begin
          SCode_client:=QuotedStr(edcodeclt.Text);
          Snom_client:=QuotedStr(ednomclt.Text);
          SDate_rs := QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
          SOperation:=QuotedStr(edOperation.Text);
          SCaisse:=QuotedStr('O.D');
          SPiece:=QuotedStr('Avance');
          SAvance_debit:=QuotedStr(edMontant.Text);
          SAvance_credit:=QuotedStr('-');
          SFactRet_debit:=QuotedStr('-');
          SFactRet_credit:=QuotedStr('-');
          SLibelle:=QuotedStr(edLibEncais.Text);
        end;
        dm.InsertReleveClient(RC_avance);

      with RC_avance do //Ligne de cr?dit de facture
        begin
          SCode_client:=QuotedStr(edcodeclt.Text);
          Snom_client:=QuotedStr(ednomclt.Text);
          SDate_rs := QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
          SOperation:=QuotedStr(edOperation.Text);
          SCaisse:=QuotedStr('O.D');
          SPiece:=QuotedStr(edFacture.Text);
          SAvance_debit:=QuotedStr('-');
          SAvance_credit:=QuotedStr('-');
          SFactRet_debit:=QuotedStr('-');
          SFactRet_credit:=QuotedStr(edMontant.Text);
          SLibelle:=QuotedStr(edLibEncais.Text);
        end;
        dm.InsertReleveClient(RC_avance);

    //      Etat journal
      with EtatJrn do
        begin
          Sdate_ej:= eddate.Text;
          Snum_ope := edOperation.Text;
          Snum_piece := edFacture.Text;
          Slibelle := edLibEncais.Text+' du client '+ednomclt.Text;
          Sdebit := '-';
          Scredit := '-';
          Ssens := 'C';
          Susager := vUsager;
        end;
      dm.InsertEtatJournal(EtatJrn); //Insertion dans etat journal

    { Mise ? jour du compte client}

      SqlUpdate_cc := 'Update tb_compte_client set '
                        +'solde = '+FloatToStr(solde - StrToFloat(edMontant.Text))
                        +' where code_clt = '+QuotedStr(edcodeclt.Text);

      dm.UpdateTable(SqlUpdate_cc);
    end  else
    if (cbTypEncais.Text='Esp?ce') then
        begin
          with RC do
            begin
              SCode_client:=QuotedStr(edcodeclt.Text);
              Snom_client:=QuotedStr(ednomclt.Text);
              SDate_rs := QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
              SOperation:=QuotedStr(edOperation.Text);
              SCaisse:=QuotedStr('CCP');
              SPiece:=QuotedStr(edFacture.Text);
              SAvance_debit:=QuotedStr('-');
              SAvance_credit:=QuotedStr('-');
              SFactRet_debit:=QuotedStr('-');
        if StrToFloat(edmontantReste.Text) < StrToFloat(edMontant.Text) then SFactRet_credit := QuotedStr(edmontantReste.Text) else SFactRet_credit := QuotedStr(edMontant.Text);
//              SFactRet_credit:=QuotedStr(edMontant.Text);
              SLibelle:=QuotedStr(edLibEncais.Text);
            end;
            dm.InsertReleveClient(RC);

            //      Etat journal
        with EtatJrn do
          begin
            Sdate_ej:= eddate.Text;
            Snum_ope := edOperation.Text;
            Snum_piece := edFacture.Text;
            Slibelle := edLibEncais.Text;
            Sdebit := '-';
            Scredit := edMontant.Text;
            Ssens := 'C';
            Susager := vUsager;
          end;
        dm.InsertEtatJournal(EtatJrn); //Insertion dans etat journal

        end
     else
    if (cbTypEncais.Text='Avance') and (solde < StrToFloat(edMontant.Text)) then
     begin
      MessageDlg('Le solde de votre compte est inf?rieur au montant saisi',mtError,[mbRetry],0);
      Exit
     end;

     {Ligne du d?bit facture sur le relev? pour les payement partielle

     if (StrToFloat(edmontantReste.Text) > StrToFloat(edMontant.Text)) then
       begin
        with RC do
          begin
            SCode_client:=QuotedStr(edcodeclt.Text);
            Snom_client:=QuotedStr(ednomclt.Text);
            SDate_rs := QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
            SOperation:=QuotedStr('Vente');
            SCaisse:=QuotedStr('CCP');
            SPiece:=QuotedStr(edFacture.Text);
            SAvance_debit:=QuotedStr('-');
            SAvance_credit:=QuotedStr('-');
            SFactRet_debit:=QuotedStr(FloatToStr(StrToFloat(edmontantReste.Text)-StrToFloat(edMontant.Text)));
            SFactRet_credit:=QuotedStr('-');
            SLibelle:=QuotedStr('D');
          end;
          dm.InsertReleveClient(RC);
       end;                }

//       selection du code du type d'encaissement

    sqlTypEnc := ' where libelle_tenc = '+QuotedStr(cbTypEncais.Text);
    TypEncais := dm.SelectTypeEncaissement(sqlTypEnc);
    for I := Low(TypEncais) to High(TypEncais) do vTypEncais := TypEncais[i].Scode_tenc;


    with PayeCaisse do
      begin
        Sdate_paye := eddate.Text;
        Snum_fact := edFacture.Text;
        Scode_clt :=edcodeclt.Text;
        Snom_clt := ednomclt.Text;
        Scode_ope := edOperation.Text;
        Snom_caisse := cbCaisse.Text;
        Scompte_caisse := edCompte.Text;
        Rmontant_paye := StrToFloat(edMontant.Text);
      end;
      DM.InsertPayementCaisse(PayeCaisse);

    with hisCaisse do
      begin
        Ddate_hisc:=eddate.Text;
        Snum_piece:=edFacture.Text;
        Scode_cli := edcodeclt.Text;
        Snom_cli := ednomclt.Text;
        STypEnc := vTypEncais;
        SCaisse := edCompte.Text;
        Sope := edOperation.Text;
        Ssens := 'C';
        if StrToFloat(edmontantReste.Text) < StrToFloat(edMontant.Text) then Rmontant := StrToFloat(edmontantReste.Text) else Rmontant := StrToFloat(edMontant.Text);
        Susager:=vUsager;
        Nstatut_canc:=0;
      end;
      DM.InsertHisCaisse(hisCaisse);

//Ajout du surplus du payement sur le compte du client

      if StrToFloat(edMontant.Text) > StrToFloat(edmontantReste.Text) then
      begin
        MessageDlg('Le montant re?u est sup?rieur au montant de la facture. '
                      +'La diff?rence du montant sera passer sur le compte du client en avance facture',
                      mtInformation,[mbOK],0) ;
        begin
//         ajout du montant au compte du client
         vMnt_dif:= StrToFloat(edMontant.Text) - StrToFloat(edmontantReste.Text);

          SqlUpCc := 'Update tb_compte_client set '
                            +'solde = '+FloatToStr(solde + vMnt_dif )
                            +' where code_clt = '+QuotedStr(edcodeclt.Text);

          dm.UpdateTable(SqlUpCc);

        {Insertion dans la table des relev?s}

        maxIdAvance := dm.SelectMaxIdAvance;
        vOpe := maxIdAvance.NMaxId + 1;

        with rc do
          begin
            SCode_client:=QuotedStr(edcodeClt.Text);
            Snom_client:=QuotedStr(edNomClt.Text);
            SDate_rs:=QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
            SOperation:=IntToStr(vOpe);
            SCaisse:=QuotedStr('Tr?sorerie');
            SPiece:=QuotedStr(IntToStr(vOpe));
            SAvance_debit:=QuotedStr('-');
            SAvance_credit:=QuotedStr(FloatToStr(vMnt_dif));
            SFactRet_debit:=QuotedStr('-') ;
            SFactRet_credit:=QuotedStr('-');
            SLibelle:=QuotedStr('Avance par surplus de caisse');
          end;
          dm.InsertReleveClient(rc);

//          Insertion du surplus comme avance

          with avd do
            begin
              Sdate_ccd := QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', Now));
              Nope := vOpe;
              Scode_clt := QuotedStr(edcodeClt.Text);
              Snom_clt := QuotedStr(edNomClt.Text);
              Scompte_clt := QuotedStr(vNumCc);
              Rmontant := vMnt_dif;
              Scode_user := QuotedStr(vUsager);
              Nstatut_canc := 0;
            end;
            dm.InsertAvanceDetail(avd);

        end;
      end;

////      Etat journal
//  with EtatJrn do
//    begin
//      Sdate_ej:= eddate.Text;
//      Snum_ope := edOperation.Text;
//      Snum_piece := edFacture.Text;
//      Slibelle := edLibEncais.Text;
//      Sdebit := '-';
//      Scredit := edMontant.Text;
//      Ssens := 'C';
//      Susager := vUsager;
//    end;
//  dm.InsertEtatJournal(EtatJrn); //Insertion dans etat journal


{ Changement de statut }
      if vMnt_r <= StrToFloat(edMontant.Text) then
          statut:='PA'
      else
          statut:='AT';

          UpdateSql := 'Update tb_facturation set statut='+QuotedStr(statut)
                  +' where num_fact = '+QuotedStr(edFacture.Text);

      DM.UpdateTable(UpdateSql);
{Mise ? jour des montant  }

      if StrToFloat(edmontantReste.Text) < StrToFloat(edMontant.Text) then
        UpdatePayement := 'Update tb_facturation set'
                        +' mnt_p = '+FloatToStr(vMnt_t)+','
                        +' mnt_r = 0'
                        +' Where num_fact = '+QuotedStr(edFacture.Text)
      else
        UpdatePayement := 'Update tb_facturation set'
                        +' mnt_p = '+FloatToStr(vMnt_p + StrToFloat(edMontant.Text))+','
                        +' mnt_r = '+FloatToStr(vMnt_r - StrToFloat(edMontant.Text))
                        +' Where num_fact = '+QuotedStr(edFacture.Text);

      DM.UpdateTable(UpdatePayement);

{ Mise ? jour du solde de la caisse}

    {Selection de la caisse}

  PsqlCaisse := ' Where num_compte = '+QuotedStr(edCompte.Text);
  Caisses:=DM.SelectCaisses(PsqlCaisse);

  for I := Low(Caisses) to High(Caisses) do
    begin
      vSolde:=caisses[i].RSolde;
    end;

    UpdateSolde := 'Update tb_caisse set solde = '+ FloatToStr(vSolde + StrToFloat(edMontant.Text))
                  +' where num_compte = '+QuotedStr(edCompte.Text);
    DM.UpdateTable(UpdateSolde);

{Modification des montants de la commande }

      query:=TSQLQuery.Create(self);
      query.SQLConnection := dm.SQLConnection1;

      SqlCmd := 'select * from tb_facturation tf '
                  +' inner join tb_commande_camion tcc on tf.num_comc = tcc.num_comc '
                  +' where tf.num_fact = '+QuotedStr(edFacture.Text);
      try
        query.SQL.Add(SqlCmd);
        query.Open;

        if query.FieldByName('type_fact').AsString = 'Camion' then
          begin
            vMontant_p  := query.FieldByName('montant_p').AsFloat;
            vMontant_r  := query.FieldByName('montant_r').AsFloat;
            vNumCmd     := query.FieldByName('num_comc').AsInteger ;


            SqlUpdCom := 'update tb_commande_camion set '
                      +' montant_p = '+FloatToStr(vMontant_p + StrToFloat(edMontant.Text))+','
                      +' montant_r = '+FloatToStr(vMontant_r - StrToFloat(edMontant.Text))
                      +' where num_comc = '+IntToStr(vNumCmd);
            DM.UpdateTable(SqlUpdCom);
          end;
      finally
        query.Free;
      end;

{Pr?paration et affichage du re?u de caisse}

      with QRecu do
        begin
          SQL.Clear;
          SQL.Add('Select * from tb_facturation F, tb_client C '
                    +' where F.code_clt = C.code_clt '
                    +' and num_fact='+QuotedStr(edFacture.Text));
          frxRecuCaisse.ShowReport();
        end;
//
      Button2.Click;
      FormShow(Sender);

  end else
    begin
      Button2.Click;
      FormShow(sender);
    end;
end;


procedure TfrmPayementFacture.Button2Click(Sender: TObject);
begin
//  eddate.Clear;
  edFacture.Clear;
  edMontant_T.Clear;
  edMontant.Clear;
  edLibEncais.Clear;

//  edCompte.Clear;
  edcodeclt.Clear;
  ednomclt.Clear;
  edmontantReste.Clear;
  edCodeBk.Clear;

end;

procedure TfrmPayementFacture.cbCaisseCloseUp(Sender: TObject);
var
  Psql : string;
  Caisses :TCaisseArray;
  I: Integer;
begin
  {Selection de la caisse}
  Psql := ' Where nom_caisse = '+QuotedStr(cbCaisse.Text);
  Caisses:=DM.SelectCaisses(Psql);

  for I := Low(Caisses) to High(Caisses) do
    begin
      edCompte.Text:=caisses[i].Scompte;
      vCaisse_solde:=caisses[i].RSolde;
    end;
    {Auomatisation du libell?}
    if cbTypEncais.Text = 'Avance' then
      edLibEncais.Text:='Imputation avance/facture '+edFacture.Text
    else
    if cbTypEncais.Text='Esp?ce' then
      edLibEncais.Text := 'Encaissement de facture en esp?ce'
    else
        edLibEncais.Clear ;
    if cbTypEncais.Text = 'Ch?que' then cb_bk.Enabled := True else cb_bk.Enabled := False;
end;

procedure TfrmPayementFacture.cbTypEncaisCloseUp(Sender: TObject);
var
  Psql : string;
  Caisses :TCaisseArray;
  I: Integer;
begin
  {Selection de la caisse}
  Psql := ' Where nom_caisse = '+QuotedStr(cbCaisse.Text);
  Caisses:=DM.SelectCaisses(Psql);

  for I := Low(Caisses) to High(Caisses) do
    begin
      edCompte.Text:=caisses[i].Scompte;
      vCaisse_solde:=caisses[i].RSolde;
    end;
    {Auomatisation du libell?}
    if cbTypEncais.Text = 'Avance' then
      edLibEncais.Text:='Imputation avance/facture '+edFacture.Text
    else
    if cbTypEncais.Text='Esp?ce' then
      edLibEncais.Text := 'Encaissement de facture en esp?ce'
    else
        edLibEncais.Clear ;
    if cbTypEncais.Text = 'Ch?que' then cb_bk.Enabled := True else cb_bk.Enabled := False;
end;

procedure TfrmPayementFacture.cb_bkCloseUp(Sender: TObject);
var
  BKs :TBankArray;
  SqlBk :string;
  i:integer;
begin
  { Liste des banques }
  SqlBk := ' where nom_bk  = '+QuotedStr(cb_bk.Text);
  BKs := dm.SelectBank(SqlBk);

  for I := Low(BKs) to High(BKs) do
    begin
      edCodeBk.Text:=BKs[i].Scode_bk;
    end;
end;

procedure TfrmPayementFacture.edMontantKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button1.Click;
end;

procedure TfrmPayementFacture.edRechNomCltChange(Sender: TObject);
var
  factures : TFacturationArray;
  i:integer;
  Psql : string;
begin
  Psql := ' Where nom_clt like '+QuotedStr('%'+edRechNomClt.Text+'%')
          +' and statut_canc = 0'
//          +' and usager = '+QuotedStr(vUsager)
          +' order by date_fact desc';

  factures:=dm.SelectFactures(Psql);
  StringGrid1.RowCount := Length(factures)+1;

  for I := Low(factures) to High(factures) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1]:=factures[i].Sdate_fact;
          Cells[1,i+1]:=factures[i].SNum_fact;
          Cells[2,i+1]:=factures[i].Scode_clt;
          Cells[3,i+1]:=factures[i].Snom_clt;
          Cells[4,i+1]:=FloatToStr(factures[i].Rmnt_t);
          Cells[5,i+1]:=FloatToStr(factures[i].Rmnt_p);
          Cells[6,i+1]:=FloatToStr(factures[i].Rmnt_r);
          Cells[7,i+1]:=factures[i].Sstatut;
        end;
    end;
    if StringGrid1.RowCount > 1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmPayementFacture.edRechNumFactChange(Sender: TObject);
var
  factures : TFacturationArray;
  i:integer;
  Psql : string;
begin

//  if edRechNumFact.Text<>'' then
//    begin
//      edRechNomClt.Clear;
//      edRechNomClt.Enabled:=false;
//    end else
//    begin
//      edRechNomClt.Enabled:=True;
//    end;


  Psql := ' Where num_fact like '+QuotedStr('%'+edRechNumFact.Text+'%')
          +' and statut_canc = 0'
          +' and usager = '+QuotedStr(vUsager)
          +' order by date_fact desc';

  factures:=dm.SelectFactures(Psql);
  StringGrid1.RowCount := Length(factures)+1;

  for I := Low(factures) to High(factures) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1]:=factures[i].Sdate_fact;
          Cells[1,i+1]:=factures[i].SNum_fact;
          Cells[2,i+1]:=factures[i].Scode_clt;
          Cells[3,i+1]:=factures[i].Snom_clt;
          Cells[4,i+1]:=FloatToStr(factures[i].Rmnt_t);
          Cells[5,i+1]:=FloatToStr(factures[i].Rmnt_p);
          Cells[6,i+1]:=FloatToStr(factures[i].Rmnt_r);
          Cells[7,i+1]:=factures[i].Sstatut;
        end;
    end;
    if StringGrid1.RowCount > 1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmPayementFacture.Forage1Click(Sender: TObject);
var
  Sql : string;
begin
  Sql := 'Update tb_facturation set '
          +'statut = '+QuotedStr('FO')
          +' where num_fact = '+QuotedStr(StringGrid1.Cells[1,StringGrid1.Row]);

  if StringGrid1.Cells[7,StringGrid1.Row]<> 'PA' then
    begin
      if MessageDlg('Voulez-vous forcer cette facture ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then

      dm.UpdateTable(Sql);
    end else
    begin
      MessageDlg('Cette facture a d?j? ?t? pay?e ou forc?e',mtInformation,[mbOK],0)
    end;

    FormShow(sender);
end;

procedure TfrmPayementFacture.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Date';
    Cells[1,0]:='Facture';
    Cells[2,0]:='Code' ;
    Cells[3,0]:='Client' ;
    Cells[4,0]:='Montant';
    Cells[5,0]:='Pay?';
    Cells[6,0]:='Reste';
    Cells[7,0]:='Statut';
  end;

end;

procedure TfrmPayementFacture.FormShow(Sender: TObject);
var
  Psql : string;
  factures : TFacturationArray;
  I,k: Integer;

  PsqlCaisse : string;
  Caisses : TCaisseArray;

  Maxope :Integer;

  Tencs :  TTypeEncaissementArray;
  PsqlTencs : string;

  BKs :TBankArray;
  SqlBk,dat :string;
  user : TUser;
begin
  cbCaisse.Clear;
  cbTypEncais.Clear;
  edLibEncais.Clear;

  { Liste des banques }
  SqlBk :='';
  BKs := dm.SelectBank(SqlBk);

  for I := Low(BKs) to High(BKs) do
    begin
      cb_bk.Items.Add(BKs[i].SNom_bk);
    end;

//**************** Affichage du type d'encaissement
  PsqlTencs :='';
  Tencs := dm.SelectTypeEncaissement(PsqlTencs);
  cbTypEncais.Items.Add('A Selectionner');//La preniere
  for I := Low(Tencs) to High(Tencs) do
    begin
      cbTypEncais.Items.Add(Tencs[i].Slibelle_tenc);
    end;
    cbTypEncais.ItemIndex := 0;

//  if cbTypEncais.Text='ESPECE' then edLibEncais.Text := 'Encaissement de facture en esp?ce';
  { Selection automatique de la caisse de l'utilisateur}
  PsqlCaisse := ' where usager = '+QuotedStr(vUsager);
  user := dm.selectUser(PsqlCaisse);
  edCompte.Text := user.Snum_caisse;
  dat := DateToStr(now);

//******************************* Affichage dans la grid
  Psql := ' where statut_canc = 0'
//          +' and date_fact between '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(dat))+' 00:00:00')
//          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(dat))+' 23:59:59')
//          +' and usager = '+QuotedStr(vUsager)
          +' Order by id_fact desc '   ;
  factures := DM.SelectFactures(Psql);

  StringGrid1.RowCount:=Length(factures)+1;

  for I := Low(factures) to High(factures) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1]:=factures[i].Sdate_fact;
          Cells[1,i+1]:=factures[i].SNum_fact;
          Cells[2,i+1]:=factures[i].Scode_clt;
          Cells[3,i+1]:=factures[i].Snom_clt;
          Cells[4,i+1]:=FloatToStr(factures[i].Rmnt_t);
          Cells[5,i+1]:=FloatToStr(factures[i].Rmnt_p);
          Cells[6,i+1]:=FloatToStr(factures[i].Rmnt_r);
          Cells[7,i+1]:=factures[i].Sstatut;
        end;
    end;

    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;

//*********************** Selection de caisse***************
{    PsqlCaisse := '';
    Caisses := DM.SelectCaisses(PsqlCaisse);

    for k := Low(Caisses) to High(Caisses) do
      begin
        cbCaisse.Items.Add(Caisses[k].Snom);
      end;  }
//**********************Selection de la caisse de l'utilisateur*********

  PsqlCaisse := ' where usager = '+QuotedStr(vUsager);
  user := dm.selectUser(PsqlCaisse);
  edCompte.Text := user.Snum_caisse;

//***********************
eddate.Text:=DateTimeToStr(Now);

  Maxope := DM.SelectMaxOpe.NMaxOpe;
  Maxope := Maxope +1;
  edOperation.Text := 'ope'+IntToStr(Maxope)


end;

procedure TfrmPayementFacture.StringGrid1DblClick(Sender: TObject);
begin
  with StringGrid1 do
    begin
      if Cells[7,Row]<>'Pay?e' then
        begin
          edFacture.Text:=Cells[1,Row];
          edcodeclt.Text:=Cells[2,Row];
          ednomclt.Text:=Cells[3,Row];
          edMontant_T.Text:=Cells[4,Row];
          edmontantReste.Text:=Cells[6,Row];

          vMnt_p := StrToFloat(Cells[5,Row]);
          vMnt_r := StrToFloat(Cells[6,Row]);
          vMnt_t := StrToFloat(Cells[4,Row])
        end else
        begin
          MessageDlg('Cette facture a d?j? ?t? pay?e', mtWarning,[mbok],0);
        end;

        if Cells[6, Row]='0' then
          begin
            edMontant.ReadOnly := True;
            edMontant.Text := 'Sold?';
            edMontant.Color:=clred;
            edMontant.Font.Color := clWhite;
          end else
          begin
            edMontant.ReadOnly:= False;
            edMontant.Clear;
            edMontant.ParentColor := True;
            edMontant.Font.Color := clblack;

            edMontant.SetFocus;
          end;
    end;

end;

procedure TfrmPayementFacture.StringGrid1DrawCell(Sender: TObject; ACol,
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
