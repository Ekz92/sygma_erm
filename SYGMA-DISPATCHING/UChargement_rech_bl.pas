unit UChargement_rech_bl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Data.FMTBcd,
  Data.DB, Data.SqlExpr;

type
  TfrmChargement_rech_bl = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ednum_bl: TEdit;
    St_bl: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure St_blDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure St_blDblClick(Sender: TObject);
    procedure ednum_blExit(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  frmChargement_rech_bl: TfrmChargement_rech_bl;

implementation

{$R *.dfm}

uses UChargement_veh, UDM;

procedure TfrmChargement_rech_bl.ednum_blExit(Sender: TObject);
var
  Qrech_bl :TSQLQuery;
  i : integer;
begin
  Qrech_bl:=TSQLQuery.Create(self);
  Qrech_bl.SQLConnection:=dm.SQLConnection1;

   with Qrech_bl.SQL do
      begin
          Add('select * from tb_bl where num_bl like '+QuotedStr(ednum_bl.Text+'%')
            +' and statut_bl = 0'
            +' order by date_bl desc'
          )
      end;
      try
       Qrech_bl.Open;
       if Qrech_bl.IsEmpty then
          begin
            MessageDlg('Resultat de la recherche : 0 ligne trouv?e',mtInformation,[mbok],0);
            St_bl.RowCount :=2;
            St_bl.Rows[1].Clear;
          end
        else
        Begin
          for I := 1 to Qrech_bl.RecordCount do
            with St_bl, Qrech_bl do
              begin
              Rows[i].Clear;
                RowCount:=RecordCount+1;
                Cells[0,i] := FieldByName('num_bl').AsString;
                Cells[1,i] := FieldByName('numbl_his').AsString;
                Cells[2,i] := FieldByName('nom_clt').AsString;
                Cells[3,i] := FieldByName('total_bouteille').AsString;
                Cells[4,i] := FieldByName('total_kilo').AsString;
                Cells[5,i] := FieldByName('prix_livraison').AsString;
                Cells[6,i] := FieldByName('date_bl').AsString;
                Qrech_bl.Next ;
              end;
        End;
        finally
          Qrech_bl.Free;
        end;
end;

procedure TfrmChargement_rech_bl.FormCreate(Sender: TObject);
begin
with St_bl do
  begin
    Cells[0,0] := 'N?BL';
    Cells[1,0] := 'N? His';
    Cells[2,0] := 'Client';
    Cells[3,0] := 'Tot bout.';
    Cells[4,0] := 'Tot Kgs';
    Cells[5,0] := 'Prix liv.';
    Cells[6,0] := 'Date BL';
  end;

end;

procedure TfrmChargement_rech_bl.FormShow(Sender: TObject);
begin
ednum_bl.OnExit(sender);
end;

procedure TfrmChargement_rech_bl.St_blDblClick(Sender: TObject);
var
  I: Integer;
begin
for I := 1 to frmChargement_veh.StringGrid1.RowCount-1 do
    if (St_bl.Cells[0,St_bl.Row] = frmChargement_veh.StringGrid1.Cells[0,i])
      and (St_bl.Cells[1,St_bl.Row] = frmChargement_veh.StringGrid1.Cells[1,i]) then
        begin
          MessageDlg('Erreur'+chr(10)+'Ce BL est d?j? s?lectionn?',mtError,[mbok],0);
          exit
        end;

with frmChargement_veh, St_bl do
  begin
    ednum_bl.Text:= Cells[0,Row];
    edhis.Text:= Cells[1,Row];
    edclient.Text :=Cells[2,row];
    edtot_bout.Text :=Cells[3,row];
    edTotal_kgs.Text :=Cells[4,row];
    edPrix_liv.Text := Cells[5,Row];
  end;
  close;
end;

procedure TfrmChargement_rech_bl.St_blDrawCell(Sender: TObject; ACol, ARow: Integer;
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

end.
