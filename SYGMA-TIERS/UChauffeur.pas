unit UChauffeur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls,
  Vcl.Buttons, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  Tfrmchauffeur = class(TForm)
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SB_Ajouter: TSpeedButton;
    SB_Modif: TSpeedButton;
    SB_annuler: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ednum_mat_chauf: TEdit;
    ednom_chauf: TEdit;
    edprenom_chauf: TEdit;
    edtel_chauf: TEdit;
    edmail_chauf: TEdit;
    edadresse_chaf: TEdit;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    Modifier1: TMenuItem;
    Supprimer1: TMenuItem;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmchauffeur: Tfrmchauffeur;

implementation

{$R *.dfm}

uses records, UDM;

procedure Tfrmchauffeur.FormActivate(Sender: TObject);
  var
  QListe_chauf :TSQLQuery;
  I: integer;
begin
SB_Modif.Enabled:=false;
ednum_mat_chauf.Enabled:=true;

 QListe_chauf:=TSQLQuery.Create(self);
  QListe_chauf.SQLConnection:=DM.SQLConnection1;

  with QListe_chauf,SQL do
    begin
      Add('select * from tb_chauffeur order by id_chauf desc') ;
    end;

    try
      QListe_chauf.Open;
      StringGrid1.RowCount:=QListe_chauf.RecordCount+1;
      for i:=1 to QListe_chauf.RecordCount do
        with StringGrid1 do
          begin
            Cells[0,i]:=QListe_chauf.FieldByName('num_mat_chauf').AsString;
            Cells[1,i]:=QListe_chauf.FieldByName('nom_chauf').AsString;
            Cells[2,i]:=QListe_chauf.FieldByName('prenom_chauf').AsString;
            Cells[3,i]:=QListe_chauf.FieldByName('tel_chauf').AsString;
            Cells[4,i]:=QListe_chauf.FieldByName('mail_chauf').AsString;
            Cells[5,i]:=QListe_chauf.FieldByName('adresse_chauf').AsString;

            QListe_chauf.Next;
          end;
    finally
       QListe_chauf.Free;
       dm.SQLConnection1.Close;
    end;
end;



procedure Tfrmchauffeur.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='N� Mat.';
    Cells[1,0]:='Nom';
    Cells[2,0]:='Pr�noms';
    cells[3,0]:='T�l';
    Cells[4,0]:='E-mail' ;
    Cells[5,0]:='Adresse' ;
  end;
end;

procedure Tfrmchauffeur.StringGrid1DrawCell(Sender: TObject; ACol,
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
