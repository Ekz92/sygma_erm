unit UListeEntree;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.FMTBcd, Vcl.Menus, frxClass, frxDBSet, Data.DB, Data.SqlExpr, Vcl.Grids;

type
  TfrmListeEntree = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    Button1: TButton;
    Label1: TLabel;
    Panel2: TPanel;
    Button2: TButton;
    StringGrid1: TStringGrid;
    QLentree: TSQLQuery;
    frxDBfrxLEntree: TfrxDBDataset;
    frxLEntree: TfrxReport;
    PopupMenu1: TPopupMenu;
    Supprimer1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Supprimer1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeEntree: TfrmListeEntree;

implementation

{$R *.dfm}

uses UEntreeCanc, UDM;

procedure TfrmListeEntree.Button1Click(Sender: TObject);
var
  Query : TSQLQuery;
  sql : string;
  i:integer;
begin
  Query := TSQLQuery.Create(self);
  Query.SQLConnection := dm.SQLConnection1;

  sql := ' select * from tb_entree E, tb_Article A '
         +' where A.code_art = E.code_art '
         +' and date_entree between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
         +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
         +' and statut_canc = 0'
         +' order by date_entree desc ';

  try

    Query.SQL.Add(sql);
    Query.Open;
    for I := 1 to Query.RowsAffected do
      with StringGrid1, Query do
        begin
          RowCount:=RowsAffected+1;
            Cells[0,i] := FieldByName('id_entree').AsString;
            Cells[1,i] := FieldByName('code_art').AsString;
            Cells[2,i] := FieldByName('designation_art').AsString;
            Cells[3,i] := FieldByName('qte_entree').AsString;
            Cells[4,i] := FieldByName('code_mag').AsString;
            Cells[5,i] := FieldByName('date_entree').AsString;
            Cells[6,i] := FieldByName('num_piece').AsString;
          Query.Next ;
        end;

  finally
    Query.Free;
    dm.SQLConnection1.Close;
  end;
end;

procedure TfrmListeEntree.Button2Click(Sender: TObject);
var
  sql : string;
begin
  sql := ' select * from tb_entree E, tb_Article A, tb_magasin M'
         +' where A.code_art = E.code_art '
         +' and E.code_mag = M.code_mag '
         +' and date_entree between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
         +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
         +' and E.statut_canc = 0 '
         +' order by E.date_entree desc ';

    QLentree.SQL.Clear;
    QLentree.SQL.Add(sql);
    QLentree.Open;
    frxLEntree.ShowReport();
end;

procedure TfrmListeEntree.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='N°';
    Cells[1,0]:='code';
    Cells[2,0]:='Désignation';
    Cells[3,0]:='Qte';
    Cells[4,0]:='Magasin';
    Cells[5,0]:='Date';
    Cells[6,0]:='Pièce';
  end;

end;

procedure TfrmListeEntree.FormShow(Sender: TObject);
begin
StringGrid1.RowCount := 2;
StringGrid1.Rows[1].Clear;
d2.Date:=Now;
end;

procedure TfrmListeEntree.StringGrid1DrawCell(Sender: TObject; ACol,
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

procedure TfrmListeEntree.Supprimer1Click(Sender: TObject);
begin
with frmEntreeCanc, StringGrid1 do
  begin
    edArticle.Text:=Cells[1,Row];
    edpiece.Text:=Cells[6,Row];
    edqte.Text:=Cells[3,Row];
    edNum.Text := Cells[0,Row];
    ShowModal;
  end;

end;

end.
