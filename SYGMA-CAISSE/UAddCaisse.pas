unit UAddCaisse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TfrmAddCaisse = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    edcompte: TEdit;
    ednom: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmAddCaisse: TfrmAddCaisse;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmAddCaisse.Button1Click(Sender: TObject);
var
  caisse : TCaisse;
begin
if (edcompte.Text <>'') and (ednom.Text<>'') then
  begin
    with caisse do
      begin
        Scompte:=QuotedStr(edcompte.Text);
        Snom_caisse:=QuotedStr(ednom.Text);
      end;
      DM.InsertCaisse(caisse);
      FormShow(sender);
//      ShowMessage('Nouvelle caisse bien enregistrée');
      Button2.Click;
  end else
    MessageDlg('Merci de renseigner le N° de compte et le libellé',mtError,[mbRetry],0);
end;

procedure TfrmAddCaisse.Button2Click(Sender: TObject);
begin
 edcompte.Clear;
 ednom.Clear;

end;

procedure TfrmAddCaisse.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Compte';
    Cells[1,0]:='Libellé';
    Cells[2,0]:='Solde';
  end;
end;

procedure TfrmAddCaisse.FormShow(Sender: TObject);
var
  Psql : string;
  Caisses :TCaisseArray;
  I: Integer;
begin
  Psql := ' Order by id_caisse desc ' ;
  Caisses:=DM.SelectCaisses(Psql);

  StringGrid1.RowCount := Length(Caisses)+1;

  for I := Low(Caisses) to High(Caisses) do
    begin
      StringGrid1.Cells[0,i+1]:=caisses[i].Scompte;
      StringGrid1.Cells[1,i+1]:=caisses[i].Snom_caisse;
      StringGrid1.Cells[2,i+1]:=FloatToStrF(caisses[i].RSolde,ffNumber,15,2);
    end;
end;

procedure TfrmAddCaisse.StringGrid1DrawCell(Sender: TObject; ACol,
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
