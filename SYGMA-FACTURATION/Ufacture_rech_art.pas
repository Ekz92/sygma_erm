unit Ufacture_rech_art;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Data.FMTBcd,
  Data.DB, Data.SqlExpr;

type
  Tfrmfacture_rech_art = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edcode_art: TEdit;
    edDesign: TEdit;
    St_Art: TStringGrid;
    procedure edDesignChange(Sender: TObject);
    procedure St_ArtDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edcode_artExit(Sender: TObject);
    procedure St_ArtDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmfacture_rech_art: Tfrmfacture_rech_art;

implementation

{$R *.dfm}

uses UDM, USaisieFacture;

procedure Tfrmfacture_rech_art.edcode_artExit(Sender: TObject);
var
  Qrech_code :TSQLQuery;
  i : integer;
begin
  Qrech_code:=TSQLQuery.Create(self);
  Qrech_code.SQLConnection:=dm.SQLConnection1;

    with Qrech_code.SQL do
      begin
        Add('select A.*, S.* from tb_article A, tb_stock S'
          +' where A.code_art like  '+QuotedStr('%'+edcode_art.Text+'%')
          +' and A.code_art = S.code_art '
          +' and S.code_mag = '+QuotedStr(vCode_mag)
          );
      end;

      try
       Qrech_code.Open;
       if Qrech_code.IsEmpty then
          begin
            MessageDlg('Resultat de la recherche : 0 ligne trouv�e',mtInformation,[mbok],0);
            St_Art.RowCount :=2;
            St_Art.Rows[1].Clear;
          end
        else
        Begin
          for I := 1 to Qrech_code.RowsAffected do
            with St_Art, Qrech_code do
              begin
                Rows[i].Clear;
                RowCount:=RowsAffected+1;
                Cells[0,i] := FieldByName('code_art').AsString;
                Cells[1,i] := FieldByName('designation_art').AsString;
                Cells[2,i] := FieldByName('kilo').AsString;
                Cells[3,i] := FieldByName('type_art').AsString;
                Cells[4,i] := FieldByName('Qte_mag').AsString;
                Qrech_code.Next ;
              end;
        End;
        finally
          Qrech_code.Free;
        end;
end;

procedure Tfrmfacture_rech_art.edDesignChange(Sender: TObject);
var
  Qrech_code :TSQLQuery;
  i : integer;
begin
  Qrech_code:=TSQLQuery.Create(self);
  Qrech_code.SQLConnection:=dm.SQLConnection1;

    with Qrech_code.SQL do
      begin
        Add('select A.*, S.* from tb_article A, tb_stock S'
          +' where A.code_art like  '+QuotedStr('%'+edDesign.Text+'%')
          +' and A.code_art = S.code_art '
          +' and S.code_mag = '+QuotedStr(vCode_mag)
          );
      end;

      try
       Qrech_code.Open;
       if Qrech_code.IsEmpty then
          begin
            MessageDlg('Resultat de la recherche : 0 ligne trouv�e',mtInformation,[mbok],0);
            St_Art.RowCount :=2;
            St_Art.Rows[1].Clear;
          end
        else
        Begin
          for I := 1 to Qrech_code.RowsAffected do
            with St_Art, Qrech_code do
              begin
                Rows[i].Clear;
                RowCount:=RowsAffected+1;
                Cells[0,i] := FieldByName('code_art').AsString;
                Cells[1,i] := FieldByName('designation_art').AsString;
                Cells[2,i] := FieldByName('kilo').AsString;
                Cells[3,i] := FieldByName('type_art').AsString;
                Cells[4,i] := FieldByName('Qte_mag').AsString;
                Qrech_code.Next ;
              end;
        End;
        finally
          Qrech_code.Free;
        end;
end;

procedure Tfrmfacture_rech_art.FormCreate(Sender: TObject);
begin
with St_Art do
  begin
    Cells[0,0] := 'Code' ;
    Cells[1,0] := 'D�signation' ;
    Cells[2,0] := 'Kilo' ;
    Cells[3,0] := 'Type' ;
    Cells[4,0] := 'Qte' ;
  end;
end;

procedure Tfrmfacture_rech_art.FormShow(Sender: TObject);
var
  Qrech_code :TSQLQuery;
  i : integer;

begin
  edcode_art.SetFocus;
  edcode_art.Clear;
  edDesign.Clear;

  Qrech_code:=TSQLQuery.Create(self);
  Qrech_code.SQLConnection:=dm.SQLConnection1;

    with Qrech_code.SQL do
      begin
        Add('select A.*, S.* from tb_article A, tb_stock S'
          +' where A.code_art = S.code_art '
          +' and S.code_mag = '+QuotedStr(vCode_mag)
          );
      end;

      try
       Qrech_code.Open;
       if Qrech_code.IsEmpty then
          begin
            MessageDlg('Resultat de la recherche : 0 ligne trouv�e',mtInformation,[mbok],0);
            St_Art.RowCount :=2;
            St_Art.Rows[1].Clear;
          end
        else
        Begin
          for I := 1 to Qrech_code.RowsAffected do
            with St_Art, Qrech_code do
              begin
                Rows[i].Clear;
                RowCount:=RowsAffected+1;
                Cells[0,i] := FieldByName('code_art').AsString;
                Cells[1,i] := FieldByName('designation_art').AsString;
                Cells[2,i] := FieldByName('kilo').AsString;
                Cells[3,i] := FieldByName('type_art').AsString;
                Cells[4,i] := FieldByName('Qte_mag').AsString;
                Qrech_code.Next ;
              end;
        End;
        finally
          Qrech_code.Free;
        end;
end;

procedure Tfrmfacture_rech_art.St_ArtDblClick(Sender: TObject);
begin
with frmSaisieFacture ,St_Art do
  begin
{
      if (StrToInt(Cells[4,Row]) <= 0) and (cbTypeFact.Text = 'Comptoir') then
        begin
          MessageDlg('Veuillez approvisionner larticle selectionner',mtInformation,[mbok],0);
        end else
}
      begin
        ed_article.Text:= Cells[0,Row];
        eddesignation_art.Text :=Cells[1,row];
        edQte.SetFocus;
      end;
  end;
  close;
end;

procedure Tfrmfacture_rech_art.St_ArtDrawCell(Sender: TObject; ACol,
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
