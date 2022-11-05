unit UAddCommandeCamion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmAddCommandeCamion = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edCommande: TEdit;
    edChargement: TEdit;
    edV�hicule: TEdit;
    edMontant: TEdit;
    Button1: TButton;
    Button2: TButton;
    edPiece: TEdit;
    frxQComCam: TfrxReport;
    frxDBQComCam: TfrxDBDataset;
    QComCam: TSQLQuery;
    edDate: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edChargementDblClick(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmAddCommandeCamion: TfrmAddCommandeCamion;

implementation

{$R *.dfm}

uses records, UDM, URechChargCom;

procedure TfrmAddCommandeCamion.Button1Click(Sender: TObject);
var
  ComCam : TCommandeCamion;
  sql,
  SqlUpChg : string;

  mVehicule,mMontant: TfrxMemoView;
  Component: TfrxComponent;
begin
if Trim(edChargement.Text)<>'' then
  begin
  with ComCam do
    begin
      Nnum_comc := StrToInt(edCommande.Text);
      Sdate_com:=QuotedStr(FormatDateTime('yyyy-mm-dd',edDate.Date));
      Nchargement := StrToInt(edChargement.Text);
      Spiece := QuotedStr(edPiece.Text);
      Svehicule := QuotedStr(edV�hicule.Text);
      Rmontant := StrToFloat(edMontant.Text);
      Rmontant_p:=0;
      Rmontant_r:=StrToFloat(edMontant.Text);
      Nstatut_cmd := 0;
    end;
    if MessageDlg('Confirmez-vous la cr�ation de cette commande ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        dm.InsertCommandeCam(ComCam);

        SqlUpChg := 'Update tb_vte_chargveh set '
                    +'statut_com = 1 '
                    +' where numCharg = '+edChargement.Text;
        dm.UpdateTable(SqlUpChg);

        sql := 'select * from tb_vte_chargvehd ch, tb_commande_camion c '
                +' where ch.numCharg = '+QuotedStr(edChargement.Text)
                +' and c.num_comc = '+QuotedStr(edCommande.Text)
                +' and ch.numCharg = c.chargement';

        QComCam.SQL.Clear;
        QComCam.SQL.Add(sql);
        QComCam.Open;

        frxQComCam.ShowReport();

        Button2.Click;
      end;
  end else
  MessageDlg('Tous les champs sont obligatoires', mtError,[mbOK],0);
end;

procedure TfrmAddCommandeCamion.Button2Click(Sender: TObject);
begin
  edChargement.Clear;
  edPiece.Clear;
  edV�hicule.Clear;
  edMontant.Clear;

  FormShow(Sender);

end;

procedure TfrmAddCommandeCamion.edChargementDblClick(Sender: TObject);
begin
frmRechChargCom.ShowModal;
end;

procedure TfrmAddCommandeCamion.FormShow(Sender: TObject);
  var
    numCom :integer;
begin
  numCom :=dm.SelectMaxComCam.NnumMax +1 ;
  edCommande.Text := IntToStr(numCom);
  edDate.Date := Now;
end;

end.
