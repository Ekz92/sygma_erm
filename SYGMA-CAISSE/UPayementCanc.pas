unit UPayementCanc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPayementCanc = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edpiece: TEdit;
    edmontant: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    edCodeClt: TEdit;
    edOpe: TEdit;
    edTypEncais: TEdit;
    edNumCompte: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmPayementCanc: TfrmPayementCanc;

implementation

{$R *.dfm}

uses UJournal_caisse, records, UDM, UConnexion;

procedure TfrmPayementCanc.Button1Click(Sender: TObject);
var
  Psql,PSql2,
  PsqlSelFacture,
  PsqlUpdFacture : string;
  Pc : TPayementCanc;
  Factures : TFacturationArray;
  I: Integer;
  mnt_r,mnt_p : Real;

  Caisse : TCaisseArray;
  PSqlCaisse,
  PsqlPaymt,
  num_compte,SqlUpCaisse,SqlUpPay,SqlUpHisCais,SqlUpBeneFact,
  sqlDelReleve,
  SqlCc,
  SqlUpCc,SqlDelJrl : string;

  Paymt : TPayement_caisse;
  CompteClt : TCompteClientArray;
  vSoldeCc,
  vSolde : real;

 // mnt_p : real;
begin
  if MessageDlg('Attention, cette action supprimera la facture. Voulez-vous Continuer ?',mtWarning,[mbyes,mbNo,mbCancel],0)=mrYes then
    begin
      PSql := ' update tb_payement_caisse set statut_canc = 1 '
              +' where code_ope = '+QuotedStr(edpiece.Text) ;

      PSql2 := ' update tb_historique_caisse set statut_canc = 1 '
              +' where ope = '+QuotedStr(edOpe.Text);

    { Selection des montant pay� et reste pour la mise � jour}
      PsqlSelFacture:=' where num_fact = '+QuotedStr(edpiece.Text);
      Factures:=dm.SelectFactures(PsqlSelFacture);

      for I := Low(Factures) to High(Factures) do
        begin
          mnt_r:=factures[i].Rmnt_r;
          mnt_p:=factures[i].Rmnt_p;
        end;

     { Mise � jour des montant dans la table de facturation}

     PsqlUpdFacture := 'Update tb_facturation set mnt_p = '+FloatToStr(mnt_p - StrToFloat(edmontant.Text))+','
                                                +' mnt_r ='+FloatToStr(mnt_r + StrToFloat(edmontant.Text)) +','
                                                +' statut = '+QuotedStr('AT')
                        +' where num_fact = '+QuotedStr(edpiece.Text);

     dm.UpdateTable(PsqlUpdFacture);

      with Pc do
        begin
          Spiece:=QuotedStr(edpiece.Text);
          Sope:=QuotedStr(edOpe.Text);
          Scodeclt:=QuotedStr(edcodeclt.Text);
          Rmontant:=StrToFloat(edmontant.Text);
          Smotif:=QuotedStr(Memo1.Text);
          Sdate_canc:=QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
          Suser_canc := QuotedStr(vUsager);
        end;
      if Trim(Memo1.Text)<>'' then
        begin
          dm.InsertPayementCanc(Pc);
          dm.UpdateTable(PSql);
          dm.UpdateTable(PSql2);

          {Mise � jour du solde de la caisse}
          PsqlPaymt:=' where num_fact = '+QuotedStr(edpiece.Text);
          Paymt := dm.selectPayement(PsqlPaymt);

          if not Paymt.Snum_fact.IsEmpty then
            begin
              mnt_p := Paymt.Rmontant_paye;
              num_compte := Paymt.Scompte_caisse;

              PSqlCaisse:= ' where num_compte = '+QuotedStr(num_compte);
              Caisse := dm.SelectCaisses(PSqlCaisse);

              for I := Low(Caisse) to High(Caisse) do vSolde := Caisse[i].RSolde;

              SqlUpCaisse := 'update tb_caisse set'
                            +' solde = '+FloatToStr(vSolde - mnt_p)
                            +' where num_compte = '+QuotedStr(num_compte);

              dm.UpdateTable(SqlUpCaisse);

              SqlUpPay := 'update tb_payement_caisse set'
                          +' statut_canc = 1'
                          +' where num_fact = '+QuotedStr(edpiece.Text);
              dm.UpdateTable(SqlUpPay);

              SqlUpHisCais := 'update tb_historique_caisse set'
                          +' statut_canc = 1'
                          +' where num_piece = '+QuotedStr(edpiece.Text);
              dm.UpdateTable(SqlUpHisCais);

              SqlUpBeneFact := 'update tb_bene_fact set'
                          +' statut_canc = 1'
                          +' where num_fact = '+QuotedStr(edpiece.Text);
              dm.UpdateTable(SqlUpBeneFact);

//            Ramener le montant pay� sur le compte du client en cas de payement par avance
              if edTypEncais.Text = 'AVANCE' then
                Begin
                  SqlCc := ' where code_clt = '+QuotedStr(edCodeClt.Text)  ;
                  CompteClt := dm.SelectCompteClient(SqlCc);

                  for I := Low(CompteClt) to High(CompteClt) do
                    begin
                      vSoldeCc := CompteClt[i].RSolde;
                    end;

                   SqlUpCc := 'update tb_compte_client set solde = '+FloatToStr(vSoldeCc+StrToFloat(edmontant.Text))
                               +' where num_cc = '+QuotedStr(edNumCompte.Text);
                   dm.UpdateTable(SqlUpCc);
                End;

      //        suppession de ligne sur le relev� du client
              sqlDelReleve := 'delete from tb_releve_client where operation_rc = '+ QuotedStr(edOpe.Text);
              dm.DeleteFromTable(sqlDelReleve);

//      Suppression dsur le journal de caisse
              SqlDelJrl := 'Delete from tb_etat_journal '
                          +' where num_ope = '+QuotedStr(edOpe.Text);
              dm.DeleteFromTable(SqlDelJrl);

              close;
            end;
        end else
          begin
            MessageDlg('Merci de renseigner le motif',mtError,[mbRetry],0);
          end;
       end;
end;

procedure TfrmPayementCanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmJournalCaisse.SpeedButton1Click(sender);

end;

procedure TfrmPayementCanc.FormShow(Sender: TObject);
begin
Memo1.Clear;

end;

end.
