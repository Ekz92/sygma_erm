unit UNew_zone;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TfrmNew_zone = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    ednom: TEdit;
    edprix: TEdit;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    St_Liste_zone: TStringGrid;
    PopupMenu1: TPopupMenu;
    Modifier1: TMenuItem;
    Supprimer1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure St_Liste_zoneDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmNew_zone: TfrmNew_zone;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmNew_zone.FormActivate(Sender: TObject);
begin
Memo1.Clear;
TabSheet1.Show;

end;

procedure TfrmNew_zone.FormCreate(Sender: TObject);
begin
  with St_Liste_zone do
    begin
      Cells[0,0] := 'Dénomination';
      Cells[1,0] := 'Prix Liv.';
      Cells[2,0] := 'Commentaire';
    end;

end;

procedure TfrmNew_zone.SpeedButton1Click(Sender: TObject);
var
QAdd_zone : TSQLQuery;

begin
QAdd_zone:=TSQLQuery.Create(self);
QAdd_zone.SQLConnection:=dm.SQLConnection1;

if (ednom.Text='') then
begin
  MessageDlg('Entrez un nom de la zone!',mtError,[mbok],0);
  exit
end;

if (edprix.Text='')then
begin
  MessageDlg('Entrez le prix de la zone!',mtError,[mbok],0);
  exit
end;

if (Memo1.Text='') then
begin
  MessageDlg('Entrez une description de la zone!',mtError,[mbok],0);
  exit
end;


with QAdd_zone,sql do
  begin
    Add('Insert into tb_zone values(null,'
       +QuotedStr(edNom.Text)+','
       +FloatToStrF(StrToFloat(edprix.Text),TFloatFormat(ffFixed),10,2)+','
       +QuotedStr(Memo1.Text)+');'
    );
  end;


  if MessageDlg('Confirmez-vous l''ajout de la zone?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      try
        QAdd_zone.ExecSQL();
        MessageDlg('Nouvelle zone enregistée avec succès!',mtInformation,[mbok],0);
        SpeedButton2.Click;
      finally
        QAdd_zone.Free;
        DM.SQLConnection1.Close;
      end;
    end;

end;

procedure TfrmNew_zone.St_Liste_zoneDrawCell(Sender: TObject; ACol,
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

procedure TfrmNew_zone.TabSheet2Show(Sender: TObject);
var
  Qselect_zone :TSQLQuery;
  I: Integer;
begin
  Qselect_zone:=TSQLQuery.Create(self);
  Qselect_zone.SQLConnection :=dm.SQLConnection1;

  with Qselect_zone,SQL do
    begin
      Add('select * from tb_zone order by id_zone desc');
    end;

    try
      Qselect_zone.Open;
      St_Liste_zone.RowCount := Qselect_zone.RowsAffected +1;
      for I := 1 to Qselect_zone.RowsAffected do
        with St_Liste_zone,Qselect_zone do
          begin
            Cells[0,i] := FieldByName('nom_zone').AsString;
            Cells[1,i] := FieldByName('prix_zone').AsString;
            Cells[2,i] := FieldByName('comment_zone').AsString;
            Qselect_zone.Next;
          end;
    finally
      Qselect_zone.Free;
    end;

end;

end.
