unit UVehicule;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.Mask,
  Vcl.StdCtrls, Vcl.Buttons, Data.FMTBcd, Data.DB, Data.SqlExpr, Vcl.ComCtrls;

type
  Tfrmvehicule = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SB_Add: TSpeedButton;
    SB_Modif: TSpeedButton;
    SB_annuler: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    edmarque: TEdit;
    edimmatriculation: TEdit;
    cbtype_veh: TComboBox;
    edcouleur: TEdit;
    edcompteur_veh: TEdit;
    edkilo_max: TEdit;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    Modifier1: TMenuItem;
    Supprimer1: TMenuItem;
    Label11: TLabel;
    cbClient: TComboBox;
    Label2: TLabel;
    eddate_sce: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SB_AddClick(Sender: TObject);
    procedure SB_ModifClick(Sender: TObject);
    procedure SB_annulerClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Modifier1Click(Sender: TObject);
    procedure Supprimer1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbClientKeyPress(Sender: TObject; var Key: Char);
    procedure cbClientCloseUp(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmvehicule: Tfrmvehicule;
  id_veh : integer;
  vCodeCltVeh : string;

implementation

{$R *.dfm}

uses records, UDM;

procedure Tfrmvehicule.cbClientCloseUp(Sender: TObject);
var
  Psql : string;
  Clts : TClientArray;
  I: Integer;
begin

    Psql := ' where nom_clt = '+QuotedStr(cbClient.Text);

    Clts := DM.selectClients(Psql);

    for I := Low(Clts) to High(Clts) do
      begin
        vCodeCltVeh:=Clts[i].SCodeClt;
      end;
end;

procedure Tfrmvehicule.cbClientKeyPress(Sender: TObject; var Key: Char);
var
  Psql : string;
  Clts : TClientArray;
  I: Integer;
begin

if key = #13 then
  begin
    Psql := ' where nom_clt = '+QuotedStr(cbClient.Text);

    Clts := DM.selectClients(Psql);

    for I := Low(Clts) to High(Clts) do
      begin
        vCodeCltVeh:=Clts[i].SCodeClt;
      end;
  end;
end;

procedure Tfrmvehicule.FormActivate(Sender: TObject);
var
  QSelect_type,
  QListe_veh :TSQLQuery;
  I: integer;
begin

edmarque.SetFocus;
SB_Modif.Enabled:=false;
cbtype_veh.Style:=csDropDownList;


  QSelect_type:=TSQLQuery.Create(self);
  QSelect_type.SQLConnection:=dm.SQLConnection1;

  with QSelect_type,SQL do
    begin
      Add('select * from tb_type_vehicule order by designation asc ');
    end;

    try
      QSelect_type.Open;
      for I := 1 to QSelect_type.RecordCount do
        begin
          cbtype_veh.Items.Add(QSelect_type.Fields[1].Value);
          QSelect_type.Next;
        end;
    finally
      QSelect_type.Free;
      dm.SQLConnection1.Close;
    end;

 QListe_veh:=TSQLQuery.Create(self);
  QListe_veh.SQLConnection:=DM.SQLConnection1;

  with QListe_veh,SQL do
    begin
      Add('select * from tb_vehicule order by id_veh desc') ;
    end;

    try
      QListe_veh.Open;
      StringGrid1.RowCount:=QListe_veh.RecordCount+1;
      for i:=1 to QListe_veh.RecordCount do
        with StringGrid1 do
          begin
            Cells[0,i]:=QListe_veh.FieldByName('marque_veh').AsString;
            Cells[1,i]:=QListe_veh.FieldByName('code_clt').AsString;
            Cells[2,i]:=QListe_veh.FieldByName('num_immat_veh').AsString;
            Cells[3,i]:=QListe_veh.FieldByName('compteur_veh').AsString;
            Cells[4,i]:=QListe_veh.FieldByName('type_veh').AsString;
            Cells[5,i]:=QListe_veh.FieldByName('kilo_max').AsString;

            QListe_veh.Next;
          end;
          if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;

    finally
       QListe_veh.Free;
       dm.SQLConnection1.Close;
    end;
end;

procedure Tfrmvehicule.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edmarque.Clear;
edimmatriculation.Clear;
//edcompteur_veh.Clear;
edcouleur.Clear;
//cbtype_veh.Clear;
//eddate_sce.Clear;

cbClient.Clear;
vCodeCltVeh:='';
end;

procedure Tfrmvehicule.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Marque';
    Cells[1,0]:='Client';
    Cells[2,0]:='N� Immat.';
    cells[3,0]:='Compteur';
    Cells[4,0]:='Type';
    cells[5,0]:='Kgs max';
  end;
end;

procedure Tfrmvehicule.FormShow(Sender: TObject);
var
  Psql : string;
  Clts : TClientArray;
  I: Integer;
begin
  Psql := '';

  Clts := DM.selectClients(Psql);

  for I := Low(Clts) to High(Clts) do
    begin
      cbClient.Items.Add(Clts[i].SnomClt);
    end;
end;

procedure Tfrmvehicule.Modifier1Click(Sender: TObject);
var
  Qselect_once_veh :TSQLQuery;
begin
  SB_Add.Enabled:=false;
  SB_Modif.Enabled:=True;

  Qselect_once_veh:=TSQLQuery.Create(self);
  Qselect_once_veh.SQLConnection:=dm.SQLConnection1;

  with Qselect_once_veh,SQL, StringGrid1 do
    begin
      Add('select * from tb_vehicule '
          +' where marque_veh = '+QuotedStr(Cells[0,Row])
          +' and num_immat_veh = '+QuotedStr(Cells[2,Row]));
    end;
   try
    Qselect_once_veh.Open;
    id_veh :=Qselect_once_veh.Fields[0].AsInteger;
    edDate_sce.Text:=Qselect_once_veh.FieldByName('date_mise_sce').AsString;
   finally
     Qselect_once_veh.Free;
   end;

  edmarque.Text:=StringGrid1.Cells[0,StringGrid1.Row];
  vCodeCltVeh :=StringGrid1.Cells[1,StringGrid1.Row];
  edimmatriculation.Text:=StringGrid1.Cells[2,StringGrid1.Row];
  edcompteur_veh.Text :=StringGrid1.Cells[3,StringGrid1.Row];
  cbtype_veh.Style:=csDropDown;
  cbtype_veh.Text:=StringGrid1.Cells[4,StringGrid1.Row];
  edkilo_max.Text:=StringGrid1.Cells[5,StringGrid1.Row];
end;

procedure Tfrmvehicule.SB_AddClick(Sender: TObject);
var
  QAdd_Veh : TSQLQuery;
begin
  QAdd_Veh:=TSQLQuery.Create(self);
  QAdd_Veh.SQLConnection:=dm.SQLConnection1;

//---------- V�rification de la date

try
  StrToDate(eddate_sce.Text);
except
  MessageDlg('Erreur, Entrez une date de mise en service valide',mtError,[mbok],0);
  exit
end;

if Trim(vCodeCltVeh) = '' then
begin
  MessageDlg('Veillez selectionner le client',mtError,[mbok],0);
  exit
end;

if edkilo_max.Text = '' then
begin
  MessageDlg('Veillez renseigner le PTAC',mtError,[mbok],0);
  exit
end;

if cbtype_veh.Text = '' then
begin
  MessageDlg('Veillez le type du v�hicule',mtError,[mbok],0);
  exit
end;

  with QAdd_Veh,SQL do
    begin
      Add('Insert into tb_vehicule values(null,'
            +QuotedStr(edmarque.Text)+','
            +QuotedStr(vCodeCltVeh)+','
            +QuotedStr(edimmatriculation.Text)+','
            +QuotedStr(edcouleur.Text)+','
            +QuotedStr(edcompteur_veh.Text)+','
            +QuotedStr(cbtype_veh.Text)+','
            +edkilo_max.Text+','
            +QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(edDate_sce.text)))  +','
            +'1'
            +')');

//            SaveToFile('g:\vehicule.txt');
    end;

    try
     if (edmarque.Text<>'') and (edimmatriculation.Text<>'')and(cbtype_veh.Text<>'')
     then
        begin
          QAdd_Veh.ExecSQL();
          MessageDlg('V�hicule bien enregistr� ',mtInformation,[mbok],0);
          SB_annuler.Click;
          FormActivate(self);
        end else
        begin
          MessageDlg('Erreur !!! Veillez renseigner tous les champs SVP',mtError,[mbOK],0);
        end;
    finally
      QAdd_Veh.Free;
      dm.SQLConnection1.Close;
    end;
end;

procedure Tfrmvehicule.SB_annulerClick(Sender: TObject);
begin
edmarque.Clear;
cbClient.Text:='';
edimmatriculation.Clear;
//edcompteur_veh.Clear;
edcouleur.Clear;
//cbtype_veh.Clear;
//eddate_sce.Clear;
//edkilo_max.Clear;

SB_Modif.Enabled:=false;
SB_Add.Enabled:=true;

FormActivate(self);
edmarque.SetFocus;
cbtype_veh.Style:=csDropDownList;

vCodeCltVeh :='';
end;

procedure Tfrmvehicule.SB_ModifClick(Sender: TObject);
Var
  Qupdate_veh : TSQLQuery;
begin
  Qupdate_veh:=TSQLQuery.Create(self);
  Qupdate_veh.SQLConnection := dm.SQLConnection1;

//---------- V�rification de la date

try
  StrToDate(eddate_sce.Text);
except
  MessageDlg('Erreur, Entrez une date de mise en service valide',mtError,[mbok],0);
  exit
end;

if Trim(vCodeCltVeh) = '' then
begin
  MessageDlg('Veillez selectionner le client',mtError,[mbok],0);
  exit
end;

if edkilo_max.Text = '' then
begin
  MessageDlg('Veillez renseigner le PTAC',mtError,[mbok],0);
  exit
end;

if cbtype_veh.Text = '' then
begin
  MessageDlg('Veillez le type du v�hicule',mtError,[mbok],0);
  exit
end;


  with Qupdate_veh,SQL do
    begin
     Add('Update tb_vehicule set marque_veh = '+QuotedStr(edmarque.Text)+','
          +'code_clt = '+QuotedStr(vCodeCltVeh)+','
          +'num_immat_veh = '+QuotedStr(edimmatriculation.Text) +','
          +'compteur_veh = '+QuotedStr(edcompteur_veh.Text)+','
          +'type_veh = '+QuotedStr(cbtype_veh.Text) +','
          +'kilo_max = '+edkilo_max.Text+','
          +'date_mise_sce = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(edDate_sce.text)))
          +' where id_veh = '+IntToStr(id_veh));
    end;

     if (edmarque.Text<>'') and (edimmatriculation.Text<>''){and(edcouleur.Text<>'')} and(cbtype_veh.Text<>'')then
      begin
        beep;
        if MessageDlg('Voulez-vous enregistrer ces modification ?',mtConfirmation,[mbyes,mbno],0)=mrYes then
          begin
            TRY
              Qupdate_veh.ExecSQL();
              MessageDlg('Modification bien enregistr�e',mtInformation,[mbok],0);
              SB_annuler.Click;
            FINALLY
              Qupdate_veh.Free;
              dm.SQLConnection1.Close;
            END;
          end;
         end else
         begin
          beep;
          MessageDlg('Erreur !!! Veillez entrer la d�signation SVP',mtError,[mbok],0);
       end;

end;

procedure Tfrmvehicule.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
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

procedure Tfrmvehicule.Supprimer1Click(Sender: TObject);
var
  Qdel_veh,
  Qselect_once_veh :TSQLQuery;
begin
//--------------------selection de l'id du v�hicule
  Qselect_once_veh:=TSQLQuery.Create(self);
  Qselect_once_veh.SQLConnection:=dm.SQLConnection1;

  with Qselect_once_veh,SQL, StringGrid1 do
    begin
      Add('select * from tb_vehicule '
          +' where marque_veh = '+QuotedStr(Cells[0,Row])
          +' and modele_veh = '+QuotedStr(Cells[1,Row])
          +' and num_immat_veh = '+QuotedStr(Cells[2,Row]));
    end;
   try
    Qselect_once_veh.Open;
    id_veh :=Qselect_once_veh.Fields[0].AsInteger;
   finally
     Qselect_once_veh.Free;
   end;

//----------------------- debut de la suppression

  Qdel_veh:=TSQLQuery.Create(self);
  Qdel_veh.SQLConnection:=dm.SQLConnection1;

  with Qdel_veh,SQL do
    begin
      Add('delete from tb_vehicule '
          +' where id_veh = ' +IntToStr(id_veh)
      );
    end;
 beep;
 if MessageDlg('Voulez-vous supprimer cet enregistrement?',mtWarning,[mbyes,mbno],0)=mrYes then
    begin
      try
        Qdel_veh.ExecSQL();
        ShowMessage('Enregistrement bien supprim�');
        FormActivate(self);
      finally
        Qdel_veh.Free;
      end;
    end;
end;

end.
