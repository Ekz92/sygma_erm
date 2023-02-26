unit URech_Article_entree;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Data.FMTBcd,
  Data.DB, Data.SqlExpr;

type
  Tfrmrech_article_entree = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edcode_art: TEdit;
    Edit2: TEdit;
    StringGrid1: TStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edcode_artKeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure edcode_artChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmrech_article_entree: Tfrmrech_article_entree;
  FrmSource_e_s : string;

implementation

{$R *.dfm}

uses UDM, UEntree_en_magasin, records, USortieDivers;

procedure Tfrmrech_article_entree.edcode_artChange(Sender: TObject);
var
  Qrech_code :TSQLQuery;
  i : integer;
  SqlArt : string;
begin
  Qrech_code:=TSQLQuery.Create(self);
  Qrech_code.SQLConnection:=dm.SQLConnection1;

  begin
      SqlArt := 'select * from tb_article '
                +' where code_art like '+QuotedStr('%'+edcode_art.Text+'%');

      try
       Qrech_code.SQL.Add(SqlArt)           ;
       Qrech_code.Open;

       if Qrech_code.RecordCount=0 then
          begin
            MessageDlg('Resultat de la recherche : 0 ligne trouvée',mtInformation,[mbok],0);
            StringGrid1.RowCount :=2;
            StringGrid1.Rows[1].Clear;
          end
        else
        Begin
          for I := 1 to Qrech_code.RecordCount do
            with StringGrid1, Qrech_code do
              begin
                Rows[i].Clear;
                RowCount:=RecordCount+1;
                Cells[0,i] := FieldByName('code_art').AsString;
                Cells[1,i] := FieldByName('designation_art').AsString;
                Cells[2,i] := FieldByName('type_art').AsString;
                Qrech_code.Next ;
              end;
        End;
        finally
          Qrech_code.Free;
          dm.SQLConnection1.Close;
        end;
      end;
end;

procedure Tfrmrech_article_entree.edcode_artKeyPress(Sender: TObject;
  var Key: Char);
var
  Qrech_code :TSQLQuery;
  i : integer;
  SqlArt : string;
begin
  Qrech_code:=TSQLQuery.Create(self);
  Qrech_code.SQLConnection:=dm.SQLConnection1;

if key=#13 then
  begin
      SqlArt := 'select * from tb_article '
                +' where code_art like '+QuotedStr('%'+edcode_art.Text+'%');

      try
       Qrech_code.SQL.Add(SqlArt)           ;
       Qrech_code.Open;

       if Qrech_code.RecordCount=0 then
          begin
            MessageDlg('Resultat de la recherche : 0 ligne trouvée',mtInformation,[mbok],0);
            StringGrid1.RowCount :=2;
            StringGrid1.Rows[1].Clear;
          end
        else
        Begin
          for I := 1 to Qrech_code.RecordCount do
            with StringGrid1, Qrech_code do
              begin
                Rows[i].Clear;
                RowCount:=RecordCount+1;
                Cells[0,i] := FieldByName('code_art').AsString;
                Cells[1,i] := FieldByName('designation_art').AsString;
                Cells[2,i] := FieldByName('type_art').AsString;
                Qrech_code.Next ;
              end;
        End;
        finally
          Qrech_code.Free;
          dm.SQLConnection1.Close;
        end;
      end;

end;

procedure Tfrmrech_article_entree.FormActivate(Sender: TObject);
var
  QSelect_art : TSQLQuery;
  I: Integer;
  sql :string;
begin
  StringGrid1.RowCount := 2;
  StringGrid1.Rows[1].Clear;

  QSelect_art:=TSQLQuery.Create(self);
  QSelect_art.SQLConnection:=dm.SQLConnection1;

  //typeEntree := frmEntree_magasin.RgType.ItemIndex;
  if FrmSource_e_s = 'Entree' then
    begin
       if (vTypeEntree = 0) then sql := ' select * from tb_article where code_mag = '+QuotedStr('PFGB')
        else if (vTypeEntree = 1) then sql:='Select * from tb_article where code_mag = '+QuotedStr('PFGB')
        else if vTypeEntree = 2 then sql :='Select * from tb_article where code_mag <> '+QuotedStr('PFGB') ;
    end else
  if FrmSource_e_s = 'Sortie' then
    begin
       if (vTypeSortie = 0) then sql := ' select * from tb_article '
        else if (vTypeSortie = 1) then sql:='Select * from tb_article where code_mag = '+QuotedStr('PFGB')
        else if vTypeSortie = 2 then sql :='Select * from tb_article where code_mag = '+QuotedStr('PFBC');
    end ;

    try
      QSelect_art.SQL.Add(sql);
      QSelect_art.Open;

      for I := 1 to QSelect_art.RecordCount do
        with StringGrid1, QSelect_art do
          begin
            RowCount:=RecordCount+1;
            Cells[0,i] := FieldByName('code_art').AsString;
            Cells[1,i] := FieldByName('designation_art').AsString;
            Cells[2,i] := FieldByName('type_art').AsString;
            QSelect_art.Next
          end;
    finally
      QSelect_art.Free;
      QSelect_art.close;
    end;
end;

procedure Tfrmrech_article_entree.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0] := 'Code' ;
    Cells[1,0] := 'Désignation' ;
    Cells[2,0] := 'Type' ;
  end;
end;

procedure Tfrmrech_article_entree.StringGrid1DblClick(Sender: TObject);
var
  stock :TStock;
  code_art : string;
begin
  code_art := StringGrid1.Cells[0,StringGrid1.Row];
  stock := dm.selectStockByArticle(code_art);

  if FrmSource_e_s = 'Entree' then
    begin
      with frmEntree_magasin ,StringGrid1 do
        begin
          edcode_art.Text:= Cells[0,Row];
          edDesignation_art.Text :=Cells[1,row];
          edcode_mag.Text := stock.Scode_mag;
        end;
    end else
  if FrmSource_e_s = 'Sortie' then
    begin
      with frmSortieDivers ,StringGrid1 do
        begin
          edcode_art.Text:= Cells[0,Row];
          edDesignation_art.Text :=Cells[1,row];
          edcode_mag.Text := stock.Scode_mag;
        end;
    end ;
    close;
end;

procedure Tfrmrech_article_entree.StringGrid1DrawCell(Sender: TObject; ACol,
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
