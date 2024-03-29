unit UChargement_veh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Grids;

type
  TfrmChargement_veh = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Label12: TLabel;
    lbnum_chargement: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    edKgs_max: TEdit;
    ednum_immat: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SB_Annuler: TSpeedButton;
    SB_Add: TSpeedButton;
    ednum_bl: TEdit;
    edhis: TEdit;
    edtot_bout: TEdit;
    edTotal_kgs: TEdit;
    edPrix_liv: TEdit;
    edclient: TEdit;
    Panel3: TPanel;
    Label11: TLabel;
    lbtotal_kilo: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    lbtot_bout: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    lbprix_liv: TLabel;
    SB_valider: TSpeedButton;
    SB_Tout_Annuler: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Modifierlaligne1: TMenuItem;
    Supprimerlaligne1: TMenuItem;
    RDispatching1: TfrxReport;
    frxHeader: TfrxDBDataset;
    QHeader: TSQLQuery;
    QHeaderid_mis_spec: TIntegerField;
    QHeadernum_matricule_chauf: TIntegerField;
    QHeadernum_immat_veh: TStringField;
    QHeadernum_ordre_mission: TStringField;
    QHeaderdate_depart: TDateField;
    QHeaderheure_depart: TTimeField;
    QHeaderType_mission: TIntegerField;
    QHeadernum_chargement: TStringField;
    QHeaderretour: TIntegerField;
    QHeaderid_chauf: TIntegerField;
    QHeadernum_mat_chauf: TIntegerField;
    QHeadernom_chauf: TStringField;
    QHeaderprenom_chauf: TStringField;
    QHeadertel_chauf: TStringField;
    QHeadermail_chauf: TStringField;
    QHeaderadresse_chauf: TStringField;
    frxDispatching: TfrxDBDataset;
    QDispatching: TSQLQuery;
    procedure ednum_immatDblClick(Sender: TObject);
    procedure ednum_blDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SB_AddClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SB_AnnulerClick(Sender: TObject);
    procedure SB_validerClick(Sender: TObject);
    procedure SB_Tout_AnnulerClick(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmChargement_veh: TfrmChargement_veh;

implementation

{$R *.dfm}

uses UChargement_rech_veh, UChargement_rech_bl, UDM, UConnexion;

procedure TfrmChargement_veh.ednum_blDblClick(Sender: TObject);
begin
if ednum_immat.Text='' then
  MessageDlg('Erreur'+chr(10)+'Selectionner un v�hicule d''abord',mtError,[mbok],0)
else
  frmChargement_rech_bl.ShowModal;
end;

procedure TfrmChargement_veh.ednum_immatDblClick(Sender: TObject);
begin
frmchargement_Rech_veh.ShowModal;
end;

procedure TfrmChargement_veh.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  QVide_temp : TSQLQuery;
begin
  QVide_temp:=TSQLQuery.Create(self);
  QVide_temp.SQLConnection:=dm.SQLConnection1;

  with QVide_temp,SQL do
    begin
      Add('truncate table tb_temp_chargement');
    end;

    try
//      QVide_temp.ExecSQL();
    finally
      QVide_temp.Free;
    end;

end;

procedure TfrmChargement_veh.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0] := 'N�BL';
    Cells[1,0] := 'N�His';
    Cells[2,0] := 'Client';
    Cells[3,0] := 'Tot bout.';
    Cells[4,0] := 'Tot Kgs';
    Cells[5,0] := 'Prix liv';
  end;
end;

procedure TfrmChargement_veh.FormShow(Sender: TObject);
VAR
  QSelect_chargement : TSQLQuery;
  V_num_chargement : integer;
begin
DateTimePicker1.DateTime := StrToDateTime(DateTimeToStr(Now));
//------------------------ G�n�rer le num�ro du chargement ---------------
  QSelect_chargement:=TSQLQuery.Create(self);
  QSelect_chargement.SQLConnection:=dm.SQLConnection1;

  with QSelect_chargement,SQL do
    begin
      Add('select max(id_chargement) from tb_chargement_veh');
    end;
    try
      begin
        QSelect_chargement.Open;

        if QSelect_chargement.RecordCount = 0 then
          V_num_chargement := 1
        else
          V_num_chargement := QSelect_chargement.Fields[0].Value;
      end;
   finally
      QSelect_chargement.Free;
   end;

    lbnum_chargement.Caption := 'CH00'+IntToStr(V_num_chargement+1)
end;

procedure TfrmChargement_veh.SB_AddClick(Sender: TObject);
var
  k,i,
  Tbout: integer;
  TKilo,
  TPrixliv  : Real;

begin
  { Ajout dans la grille }
  with StringGrid1 do
    begin
      RowCount := RowCount+1;
      k:=RowCount-1;
      Cells[0,k]:= ednum_bl.Text;
      Cells[1,k]:= edhis.Text;
      Cells[2,k]:= edclient.Text;
      Cells[3,k]:= edtot_bout.Text;
      Cells[4,k]:= edTotal_kgs.Text;
      Cells[5,k]:= edPrix_liv.Text;

      if RowCount>1 then
        FixedRows:=1;
    end;

 { Calcules de total bouteille, prix et kilo}
  TKilo := 0;
  Tbout := 0;
  TPrixliv := 0;

  for I := 1 to StringGrid1.RowCount - 1 do
    begin
      Tbout := Tbout + StrToInt(StringGrid1.Cells[3,i]);
      TKilo := TKilo + StrToFloat(StringGrid1.Cells[4,i]);
      TPrixliv := TPrixliv + StrToFloat(StringGrid1.Cells[5,i]);
    end;

      lbtot_bout.Caption := IntToStr(Tbout);
      lbtotal_kilo.Caption := FloatToStr(TKilo);
      lbprix_liv.Caption := FloatToStr(TPrixliv) ;

      SB_Annuler.Click;
end;

procedure TfrmChargement_veh.SB_AnnulerClick(Sender: TObject);
begin
  ednum_bl.Clear;
  edclient.Clear;
  edtot_bout.Clear;
  edTotal_kgs.Clear;
  edPrix_liv.Clear;
  edhis.Clear;

  ednum_bl.SetFocus;
end;

procedure TfrmChargement_veh.SB_Tout_AnnulerClick(Sender: TObject);
var
  I: Integer;
  QVide_temp : TSQLQuery;
begin
  QVide_temp:=TSQLQuery.Create(self);
  QVide_temp.SQLConnection:=dm.SQLConnection1;

  with QVide_temp,SQL do
    begin
      Add('truncate table tb_temp_chargement');
    end;

    try
      QVide_temp.ExecSQL();
    finally
      QVide_temp.Free;
    end;

for I := 1 to StringGrid1.RowCount-1 do
  begin
    StringGrid1.Rows[i].Clear;
    StringGrid1.RowCount:=1;
  end;

  lbtotal_kilo.Caption := '0';
  lbprix_liv.Caption := '0';
  lbtot_bout.Caption := '0';

  FormShow(self);

end;

procedure TfrmChargement_veh.SB_validerClick(Sender: TObject);
var
  QInsert_chargement_detail,
  QInsert_chargement,
  QUpdate_chargement,
  QVide_temp_chargement : TSQLQuery;
  vValeur : string ;
  i : integer;
begin

{
  if StrToFloat(edKgs_max.Text) < StrToFloat(lbtotal_kilo.Caption) then
    begin
      MessageDlg('Erreur,'+chr(10)+'Le total des charges doit �tre inf�rieur'+chr(10)+' � la charge supporter par ce v�hicule',mtError,[mbok],0);
  //    exit
    end else

}
  Begin

      vValeur := '';
    //---------------------------- insertion detail chargement----------------------------
      for I := 1 to StringGrid1.RowCount-1 do
      begin
        with StringGrid1 do
          begin
            vValeur := vValeur
                        +'(null,'
                        +QuotedStr(lbnum_chargement.Caption)+','
                        +QuotedStr(Cells[0,i])+','
                        +QuotedStr(Cells[1,i])+','   //Num�ro d'historique de BL
                        +QuotedStr(Cells[2,i])+','
                        +QuotedStr(Cells[3,i])+','
                        +FloatToStrF(StrToFloat(Cells[4,i]),TFloatFormat(ffFixed),10,2) +','
                        +FloatToStrF(StrToFloat(Cells[5,i]),TFloatFormat(ffFixed),10,2) +')'  ;

                        if i<RowCount-1 then
                          vValeur:=vValeur+','           ;

          end;
      end;

      QInsert_chargement_detail:=TSQLQuery.Create(self);
      QInsert_chargement_detail.SQLConnection:=dm.SQLConnection1;

      with QInsert_chargement_detail,SQL do
        begin
          Add('Insert into tb_chargement_detail values '+vValeur);
        end;

    //--------------------------------------- Insertion dans chargement -------------------------

      QInsert_chargement:=TSQLQuery.Create(self);
      QInsert_chargement.SQLConnection:=dm.SQLConnection1;


      with QInsert_chargement,SQL do
        begin
          Add('Insert into tb_chargement_veh values(null,'
             +QuotedStr(lbnum_chargement.Caption)+','
             +QuotedStr(ednum_immat.Text)+','
             +lbtot_bout.Caption+','
             +FloatToStrF(StrToFloat(lbtotal_kilo.Caption),TFloatFormat(ffFixed),10,2) +','
             +FloatToStrF(StrToFloat(lbprix_liv.Caption),TFloatFormat(ffFixed),10,2) +','
             +QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',DateTimePicker1.DateTime))+','
             +QuotedStr(vUsager)+','
             +'0'+','
             +'0'+');'
          ) ;

        end;

        try
          QInsert_chargement.ExecSQL();
          QInsert_chargement_detail.ExecSQL();
        finally
          QInsert_chargement.Free;
          QInsert_chargement_detail.Free;
        end;

    //--------------------------- mise a jour du statut des BL apr�s chargement ---------------------

      QUpdate_chargement:=TSQLQuery.Create(self);
      QUpdate_chargement.SQLConnection:=dm.SQLConnection1;

         for I := 1 to StringGrid1.RowCount-1 do
              With QUpdate_chargement,SQL ,StringGrid1 do
                begin
                  Clear;
                  Add('Update tb_bl set '
                      +' statut_bl = 1 '
                      +' where num_bl = '+QuotedStr(Cells[0,i])
                      +' and numbl_his = '+Cells[1,i]  );

                QUpdate_chargement.ExecSQL();
                end;
                QUpdate_chargement.Free;

      //------------------------------- vider la table temp_chargement-------------

      QVide_temp_chargement:=TSQLQuery.Create(self);
      QVide_temp_chargement.SQLConnection:=dm.SQLConnection1;

      WITH QVide_temp_chargement,SQL do
        begin
          Add('Truncate table tb_temp_chargement ')  ;
        end;

        try
          QVide_temp_chargement.ExecSQL();
        finally
          QVide_temp_chargement.Free;
        end;

        MessageDlg('Chargement bien �ffectu�',mtInformation,[mbok],0);{
// fiche dispatching
        with  QDispatching, SQL do
          begin
            Clear;
            Add('SELECT * FROM tb_mission_speciale MS, tb_chargement_detail C, tb_bl_detail BLs, tb_bl BL'
                  +' WHERE MS.num_chargement = C.num_chargement '
                  +' and c.num_BL = BLs.num_bl '
                  +' and BL.num_bl = BLs.num_bl '
                  +' AND MS.num_ordre_mission = '+QuotedStr(StringGrid1.Cells[0,StringGrid1.Row]) ) ;
          end;

        with  QHeader, SQL do
          begin
            Clear;
            Add('SELECT * FROM tb_mission_speciale MS, tb_chauffeur tc '
                  +'WHERE MS.num_ordre_mission = '+QuotedStr(lb)
                  +'and ms.num_matricule_chauf = tc.num_mat_chauf ' );
          end;

          try
            QDispatching.ExecSQL();
            QHeader.Open;
            RDispatching1.ShowReport();
          finally
            //QDispatching.Free;
            //QHeader.Free;
          end;
      }
          SB_Tout_Annuler.Click;
    End;
end;

procedure TfrmChargement_veh.StringGrid1DrawCell(Sender: TObject; ACol,
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
