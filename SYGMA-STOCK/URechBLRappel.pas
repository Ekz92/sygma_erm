unit URechBLRappel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmRechBLRappel = class(TForm)
    GroupBox1: TGroupBox;
    edRechFact: TEdit;
    St_facture: TStringGrid;
    Label1: TLabel;
    procedure edRechFactExit(Sender: TObject);
    procedure St_factureDblClick(Sender: TObject);
    procedure St_factureDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmRechBLRappel: TfrmRechBLRappel;

implementation

{$R *.dfm}

uses records, UDM, URappelBl;

procedure TfrmRechBLRappel.edRechFactExit(Sender: TObject);
var
  Psql : string;
  Bls : TBLArray;
  I: Integer;
begin
  Psql := ' where num_bl like  '+QuotedStr(edRechFact.Text+'%')
       //   +' and livpart = 1 '
          +' order by date_bl desc ';

  Bls := DM.SelectBl(Psql);
  St_facture.RowCount := Length(Bls)+1;

  for I := Low(Bls) to High(Bls) do
    begin
      with St_facture do
        begin
          Cells[0,i+1]:=Bls[i].Snum_bl;
          Cells[1,i+1]:= IntToStr(Bls[i].Nnum_bl_his);
          Cells[2,i+1]:=Bls[i].Scode_clt;
          Cells[3,i+1]:=Bls[i].Snom_clt;
          Cells[4,i+1]:=Bls[i].Sdate_bl;
          Cells[5,i+1]:=Bls[i].SpointVente;
        end;
    end;
    if St_facture.RowCount > 1 then St_facture.FixedRows:=1;
end;

procedure TfrmRechBLRappel.FormCreate(Sender: TObject);
begin
with St_facture do
  begin
    Cells[0,0]:='N� BL';
    Cells[1,0]:='N� His';
    Cells[2,0]:='Client';
    Cells[3,0]:='Nom';
    Cells[4,0]:='Date';
    Cells[5,0]:='Point';
  end;

end;

procedure TfrmRechBLRappel.St_factureDblClick(Sender: TObject);
begin
with frmRappelBL do
  begin
    ednumFacture.Text := St_facture.Cells[0,St_facture.Row]  ;
    edcodeClt.Text := St_facture.Cells[2,St_facture.Row];
    ednomClient.Text := St_facture.Cells[3,St_facture.Row]  ;
    EdPointVente.Text := St_facture.Cells[5,St_facture.Row];
  end;
  close;

end;

procedure TfrmRechBLRappel.St_factureDrawCell(Sender: TObject; ACol, ARow: Integer;
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
