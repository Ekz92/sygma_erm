unit UEncaissement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmEncaissement = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    DateEnc: TDateTimePicker;
    edPiece: TEdit;
    cbCaisse: TComboBox;
    edMontant: TEdit;
    mLibelle: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edMontantKeyPress(Sender: TObject; var Key: Char);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmEncaissement: TfrmEncaissement;

implementation

{$R *.dfm}

uses records, UDM, UConnexion;

procedure TfrmEncaissement.Button1Click(Sender: TObject);
var
  Enc : TEncaissement;
  EtatJrn : TEtatJournal;
  caisses : TCaisseArray;
  sqlCaisse,sqlUpd :string;
  vSolde : real;
  I,Maxope: Integer;

  hisCaisse : THistoriqueCaisse;
begin
  sqlCaisse := ' Where num_compte = '+QuotedStr(cbCaisse.Text);
  caisses := dm.SelectCaisses(sqlCaisse);

  for I := Low(caisses) to High(caisses) do
    begin
      vSolde := caisses[i].RSolde;
    end;

  {Nom�ro d'op�ration}

  Maxope := DM.SelectMaxOpe.NMaxOpe;
  Maxope := Maxope +1;

  if (Trim(edPiece.Text)='') and (Trim(edMontant.Text)='') and(Trim(mLibelle.Text)='') then
    begin
      MessageDlg('Vous devez renseigner les champs, Merci',mtError,[mbOk],0);
    end else
    begin
      with Enc do
        begin
          Sope :=QuotedStr('ope'+IntToStr(Maxope));
          SdateEnc:=QuotedStr(FormatDateTime('yyyy-mm-dd',DateEnc.Date));
          SNumCaisse := QuotedStr(cbCaisse.Text);
          SPiece := QuotedStr(edPiece.Text);
          SLibelle := QuotedStr(mLibelle.Text);
          RMontant := StrToFloat(edMontant.Text);
          SUsager := QuotedStr(vUsager);
          Nstatut_canc:=0;
        end;

//      Etat journal

        with EtatJrn do
          begin
            Sdate_ej:= DateToStr(DateEnc.Date);
            Snum_ope := 'ope'+IntToStr(Maxope);
            Snum_piece := edPiece.Text;
            Slibelle := mLibelle.Text;
            Sdebit := '-';
            Scredit := edMontant.Text;
            Ssens := 'C';
            Susager := vUsager;
          end;

        if MessageDlg('Voulez-vous enregistr� cette d�pense ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
          begin
            dm.InsertEncaissement(Enc);      {Insertion dans t_depense}
            dm.InsertEtatJournal(EtatJrn); //Insertion dans etat journal

            sqlUpd := 'Update tb_caisse ' {Requete Mise � jour du solde}
                    +' set solde = '+FloatToStr(vSolde + StrToFloat(edMontant.Text))
                    +' where num_compte = '+QuotedStr(cbCaisse.Text);

            dm.UpdateTable(sqlUpd); {Mise � jour du solde}
             { Insertion dasn la tale de l'historique de caisse}

            with hisCaisse do
              begin
                Ddate_hisc:= DateToStr(DateEnc.Date);
                Snum_piece:=edPiece.Text;
                Scode_cli := 'n�ant';
                Snom_cli := mLibelle.Text;
                SCaisse := cbCaisse.Text;
                Sope := 'ope'+IntToStr(Maxope);
                Ssens := 'C';
                Rmontant := StrToFloat(edMontant.Text);
                Susager:=vUsager;
                Nstatut_canc:=0;
              end;
              DM.InsertHisCaisse(hisCaisse);

            Button2.Click;
          end;
    end;
end;

procedure TfrmEncaissement.Button2Click(Sender: TObject);
begin
edPiece.Clear;
edMontant.Clear;
mLibelle.Clear;
end;

procedure TfrmEncaissement.edMontantKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button1.Click;
end;

procedure TfrmEncaissement.FormActivate(Sender: TObject);
  var
  PsqlCaisse : string;
  user : TUser;
begin
//**********************Selection de la caisse de l'utilisateur*********

  PsqlCaisse := ' where usager = '+QuotedStr(vUsager);
  user := dm.selectUser(PsqlCaisse);
  cbCaisse.Text := user.Snum_caisse;

  DateEnc.Date:=Now;
end;

procedure TfrmEncaissement.FormCreate(Sender: TObject);
begin
  mLibelle.Clear;

end;

end.
