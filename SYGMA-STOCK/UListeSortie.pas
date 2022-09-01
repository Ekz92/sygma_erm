unit UListeSortie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, frxClass, frxDBSet,
  Data.DB, Data.SqlExpr, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TfrmListeSortie = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    Panel2: TPanel;
    Button2: TButton;
    frxLSortie: TfrxReport;
    QLSortie: TSQLQuery;
    QLSortieid_sortie: TIntegerField;
    QLSortiecode_art: TStringField;
    QLSortiecode_mag: TStringField;
    QLSortieqte_sortie: TIntegerField;
    QLSortieusager: TStringField;
    QLSortiedate_sortie: TSQLTimeStampField;
    QLSortieid_art: TIntegerField;
    QLSortiecode_art_1: TStringField;
    QLSortiedesignation_art: TStringField;
    QLSortietype_art: TStringField;
    QLSortiekilo: TFloatField;
    QLSortiecode_mag_1: TStringField;
    QLSortieid_mag: TIntegerField;
    QLSortiecode_mag_2: TStringField;
    QLSortiedesignation_mag: TStringField;
    frxDBLSortie: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmListeSortie: TfrmListeSortie;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmListeSortie.Button1Click(Sender: TObject);
var
  Query : TSQLQuery;
  sql : string;
  i:integer;
begin
  Query := TSQLQuery.Create(self);
  Query.SQLConnection := dm.SQLConnection1;

  sql := ' select * from tb_sortie S, tb_Article A '
         +' where A.code_art = S.code_art '
          +' and date_sortie between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
         +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59');

  try

    Query.SQL.Add(sql);
    //Query.SQL.SaveToFile('g:\todo');
    Query.Open;
    for I := 1 to Query.RowsAffected do
      with StringGrid1, Query do
        begin
          RowCount:=RowsAffected+1;
            Cells[0,i] := FieldByName('code_art').AsString;
            Cells[1,i] := FieldByName('designation_art').AsString;
            Cells[2,i] := FieldByName('qte_sortie').AsString;
            Cells[3,i] := FieldByName('code_mag').AsString;
            Cells[4,i] := FieldByName('date_sortie').AsString;
          Query.Next ;
        end;

  finally
    Query.Free;
  end;
end;

procedure TfrmListeSortie.Button2Click(Sender: TObject);
var
  sql : string;
begin
  sql := ' select * from tb_sortie S, tb_Article A, tb_magasin M'
         +' where A.code_art = S.code_art '
         +' and S.code_mag = M.code_mag '
         +' and S.date_sortie between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d1.Date)+'00:00:00')
         +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd ',d2.Date)+'23:59:59')
         +' order by S.date_sortie desc';

    QLSortie.SQL.Clear;
    QLSortie.SQL.Add(sql);
    QLSortie.Open;
    frxLSortie.ShowReport();
end;

procedure TfrmListeSortie.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='code';
    Cells[1,0]:='Désignation';
    Cells[2,0]:='Qte';
    Cells[3,0]:='Magasin';
    Cells[4,0]:='Date';
  end;

end;

procedure TfrmListeSortie.FormShow(Sender: TObject);
begin
d2.Date :=Now;
end;

procedure TfrmListeSortie.StringGrid1DrawCell(Sender: TObject; ACol,
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
