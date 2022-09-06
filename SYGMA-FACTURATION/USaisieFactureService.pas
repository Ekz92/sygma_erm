unit USaisieFactureService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, frxClass, frxDBSet,
  Data.DB, Data.SqlExpr, Vcl.Menus, Vcl.Grids, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TfrmSaisieFactureService = class(TForm)
    GbClient: TGroupBox;
    Label7: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    ednomClt: TEdit;
    edCodeClt: TEdit;
    eddate: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbTypeService: TComboBox;
    edCodeTypeSce: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edDesign_sce: TEdit;
    edpu: TEdit;
    edqte: TEdit;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Label6: TLabel;
    lbMontant: TLabel;
    Button3: TButton;
    Button4: TButton;
    st_factureService: TStringGrid;
    PopupMenu1: TPopupMenu;
    Supprimercetteligne1: TMenuItem;
    frxFacturationService: TfrxReport;
    QFacture: TSQLQuery;
    frxQFactureService: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbTypeServiceCloseUp(Sender: TObject);
    procedure edCodeCltDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure st_factureServiceDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmSaisieFactureService: TfrmSaisieFactureService;
  vMnt_t,
  vMnt_p,
  vMnt_r  : real;
  vQteTotal : integer;

implementation

{$R *.dfm}

uses records, UDM, USelectClientFacturation, UConnexion;

procedure TfrmSaisieFactureService.Button1Click(Sender: TObject);
var
  k,i :integer;
begin
  if (edCodeTypeSce.Text<>'') and (trim(edDesign_sce.Text)<>'') and (StrToFloat(edpu.Text)<>0) and (StrToInt(edqte.Text)<>0) then
    begin
      with st_factureService do
        begin
          RowCount := RowCount+1;
          k:=RowCount-1;
          Cells[0,k]:= edDesign_sce.Text;
          Cells[1,k]:= edpu.Text;
          Cells[2,k]:= edqte.Text;
          Cells[3,k]:= FloatToStr(StrToInt(edqte.Text)*StrToFloat(edpu.Text));
          Cells[4,k]:=edCodeTypeSce.Text;
          if RowCount>1 then FixedRows:=1;
        end;
      edCodeTypeSce.Clear;

    //  Calcul des totaux
      vMnt_t := 0;
      vQteTotal := 0;

      for I := 1 to st_factureService.RowCount-1 do
        begin
          vMnt_t := vMnt_t + StrToFloat(st_factureService.Cells[3,i]);
          vQteTotal := vQteTotal + StrToInt(st_factureService.Cells[2,i]);
        end;
        lbMontant.Caption:=FloatToStrF(vMnt_t,ffNumber,15,2);
        Button2.Click;
    end else
    MessageDlg('Veillez renseigner tous les champs et selectionner le type de service',
                mtError,[mbok],0);
end;

procedure TfrmSaisieFactureService.Button2Click(Sender: TObject);
begin
edDesign_sce.Clear;
edpu.Clear;
edqte.Clear;

end;

procedure TfrmSaisieFactureService.Button3Click(Sender: TObject);
var
  vNumFact,Psql : string;
  ParamNumFact : TParametreNumFactureArray;
  i:integer;

  MaxIdFact : TMaxIdFacture;
  MaxID : integer;

  facture : TFacturation;
  facture_detail :TFacturation_detail;

  RC : TReleve_client;

begin
{G�n�ration du num�ro de facture}

  MaxIdFact := DM.SelectMaxIdFacture;
  MaxID:=MaxIdFact.NMaxId;
  vNumFact:='SCE'+IntToStr(MaxID + 1);

{ Insertion dans la table facturation }
  if st_factureService.RowCount > 1 then
    begin
      if MessageDlg('Voulez-vous proc�der � l''enregistrement de cette facture ?',mtWarning,[mbyes,mbno],0)=mrYes then
        begin
          with facture do
            begin
              Sdate_fact:=DateToStr(edDate.Date)+''+TimeToStr(now);
              SNum_fact:=vNumFact;
              Scode_clt:=edCodeClt.Text;
              Snom_clt := ednomClt.Text;
              NQte_total:=vQteTotal;
              Rmnt_t:=vMnt_t;
              Rmnt_p:=0;
              Rmnt_r:=vMnt_t ;
              Sstatut := 'AT';
              Stype_fact:='Comptoir';
              Svehicule:='';
              Snum_comc:='';
              NStatut_canc := 0;
              SUsager := vUsager
            end;
            DM.InsertFacturation(facture);

        //    Insertion dans la table details de facture

            for I := 1 to st_factureService.RowCount-1 do
              begin
                with facture_detail do
                  begin
                    Sdate_fact:=DateToStr(edDate.DateTime);
                    Snum_fact:=vNumFact;
                    Scode_mag:='';
                    Sdesignation_mag:='';
                    Scode_tarif := '';
                    Sdesignation_tarif := '';
                    Scode_clt := edCodeClt.Text;
                    Snom_clt := ednomClt.Text;
                    Scode_art := st_factureService.Cells[4,i];
                    Sdesignation_art:=st_factureService.Cells[0,i];
                    Nqte_art := StrToInt(st_factureService.Cells[2,i]);
                    RPrixU := StrToFloat(st_factureService.Cells[1,i]);
                    RPrixT := StrToFloat(st_factureService.Cells[3,i]);
                  end;
                DM.InsertFacturetion_detail(facture_detail);
              end;

        //    {Insertion de la facture d�biteur dans la table relev� client}

              with RC do
                begin
                  SCode_client:=QuotedStr(edCodeClt.Text);
                  Snom_client:=QuotedStr(ednomClt.Text);
                  SDate_rs := QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
                  SOperation:=QuotedStr(vNumFact);
                  SCaisse:=QuotedStr('Vente');
                  SPiece:=QuotedStr(vNumFact);
                  SAvance_debit:=QuotedStr('-');
                  SAvance_credit:=QuotedStr('-');
                  SFactRet_debit:=QuotedStr(FloatToStr(vMnt_t));
                  SFactRet_credit:=QuotedStr('-');
                  SLibelle:=QuotedStr('D');
                end;
                dm.InsertReleveClient(RC);

                with QFacture do
                  begin
                    SQL.Clear;
                    SQL.Add('Select * from tb_facturation F,tb_facturation_detail fd, tb_client C '
                            +' where F.num_fact = fd.num_fact '
//                            +' and A.code_art = fd.code_art '
                            +' and C.code_clt = F.code_clt '
                            +' and F.num_fact = '+QuotedStr(vNumFact)
                            );
                    Open;
                  end;
                  frxFacturationService.ShowReport();


                st_factureService.RowCount := 1;
                lbMontant.Caption:='0';
        end;
    end else
    MessageDlg('Veillez ajouter un service vendu',mtError,[mbOK],0);
end;

procedure TfrmSaisieFactureService.cbTypeServiceCloseUp(Sender: TObject);
var
  Ts : TTypeServiceArray;
  i : integer;
  Psql,vCode_ts : string;
begin
  Psql :=' where design_ts = '+QuotedStr(cbTypeService.Text);
  Ts := dm.selectTypeServices(Psql);

  for I := Low(Ts) to High(Ts) do
    begin
      vCode_ts := Ts[i].Scode_ts;
    end;
    edCodeTypeSce.Text:=vCode_ts;

end;

procedure TfrmSaisieFactureService.edCodeCltDblClick(Sender: TObject);
begin
  vFormclt := 'SFS';
  frmSelectClientFacturation.ShowModal;
end;

procedure TfrmSaisieFactureService.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
cbTypeService.Clear;

end;

procedure TfrmSaisieFactureService.FormCreate(Sender: TObject);
begin
with st_factureService do
  begin
    Cells[0,0] := 'Service';
    Cells[1,0] := 'PU';
    Cells[2,0] := 'Qte';
    Cells[3,0] := 'PT';
    Cells[4,0] := 'TypSce'
  end;

end;

procedure TfrmSaisieFactureService.FormShow(Sender: TObject);
var
  Ts : TTypeServiceArray;
  i : integer;
  Psql : string;
begin
  eddate.Date := Now;
  Psql :='';
  Ts := dm.selectTypeServices(Psql);

  for I := Low(Ts) to High(Ts) do
    begin
      cbTypeService.Items.Add(Ts[i].Sdesign_ts);
    end;
end;

procedure TfrmSaisieFactureService.st_factureServiceDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
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
