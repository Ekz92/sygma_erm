unit URechFacture_BL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmRechFActureBL = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edRechFact: TEdit;
    St_facture: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure St_factureDblClick(Sender: TObject);
    procedure St_factureDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure edRechFactExit(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  frmRechFActureBL: TfrmRechFActureBL;

implementation

{$R *.dfm}

uses UCreer_BL, records, UDM;

procedure TfrmRechFActureBL.edRechFactExit(Sender: TObject);
var
  Psql : string;
  Factures : TFacturationArray;
  I: Integer;
begin
  Psql := ' where num_fact like  '+QuotedStr(edRechFact.Text+'%')
          +' and statut = '+QuotedStr('PA') +' or statut='+ QuotedStr('FO')
          +' and statut_canc = 0'
          +' order by date_fact desc ';

  Factures := DM.SelectFactures(Psql);
  St_facture.RowCount := Length(Factures)+1;

  for I := Low(Factures) to High(Factures) do
    begin
      with St_facture do
        begin
          Cells[0,i+1]:=Factures[i].SNum_fact;
          Cells[1,i+1]:=Factures[i].Scode_clt;
          Cells[2,i+1]:=Factures[i].Snom_clt;
          Cells[3,i+1]:=Factures[i].Sdate_fact;
          Cells[4,i+1]:=Factures[i].Sstatut;
        end;
    end;
    if St_facture.RowCount > 1 then St_facture.FixedRows:=1;

end;

procedure TfrmRechFActureBL.FormCreate(Sender: TObject);
begin
with St_facture do
  begin
    Cells[0,0]:='N? Fact';
    Cells[1,0]:='Client';
    Cells[2,0]:='Nom';
    Cells[3,0]:='Date';
    Cells[4,0]:='Statut';
    Cells[5,0]:='N? His';
  end;

end;

procedure TfrmRechFActureBL.FormShow(Sender: TObject);
var
  Psql : string;
  Factures : TFacturationArray;
  I: Integer;
begin
  edRechFact.SetFocus;
  Psql := ' where num_fact like  '+QuotedStr(edRechFact.Text+'%')
          +' and statut = '+QuotedStr('PA') +' or statut='+ QuotedStr('FO')
          +' and statut_canc = 0'
          +' order by date_fact desc ';

  Factures := DM.SelectFactures(Psql);
  St_facture.RowCount := Length(Factures)+1;

  for I := Low(Factures) to High(Factures) do
    begin
      with St_facture do
        begin
          Cells[0,i+1]:=Factures[i].SNum_fact;
          Cells[1,i+1]:=Factures[i].Scode_clt;
          Cells[2,i+1]:=Factures[i].Snom_clt;
          Cells[3,i+1]:=Factures[i].Sdate_fact;
          Cells[4,i+1]:=Factures[i].Sstatut;
        end;
    end;
    if St_facture.RowCount > 1 then St_facture.FixedRows:=1;
// St_facture.RowCount:=2;
// St_facture.Rows[1].Clear;

end;

procedure TfrmRechFActureBL.St_factureDblClick(Sender: TObject);
begin
with frm_nouveau_BL do
  begin
    ednumFacture.Text := St_facture.Cells[0,St_facture.Row]  ;
    edcodeClt.Text := St_facture.Cells[1,St_facture.Row];
    ednomClient.Text := St_facture.Cells[2,St_facture.Row]  ;
  end;
  close;

end;

procedure TfrmRechFActureBL.St_factureDrawCell(Sender: TObject; ACol,
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
