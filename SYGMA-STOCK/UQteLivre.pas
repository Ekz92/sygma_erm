unit UQteLivre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmQteLivre = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edQteLive: TEdit;
    Button1: TButton;
    procedure edQteLiveKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmQteLivre: TfrmQteLivre;

implementation

{$R *.dfm}

uses UCreer_BL, UDM, records;

procedure TfrmQteLivre.Button1Click(Sender: TObject);
var
  i : integer;
  article :TArticle;
    kilo,Tkilo : real;
  //*****
  vClient,
  code_art : string;
  nbBlle :Integer;

  prix :integer;
  PrixLiv : Real;
begin
  with frm_nouveau_BL do
    begin
       if StrToInt(SG_import.Cells[4,St_import_row]) >= StrToInt(edQteLive.Text) then
          begin
           SG_import.Cells[5,St_import_row]:=edQteLive.Text;
              nbBlle:=0;
              Tkilo:=0;
              for I := 1 to SG_import.RowCount -1 do
                with SG_import do
                  begin
                    nbBlle := nbBlle+StrToInt(Cells[5,i]) ;
                    code_art:= Cells[2,i];
                    article  := DM.selectArticleByCode(code_art) ;
                    kilo := (Article.Rkilo)*(StrToInt(Cells[5,i]));
                    Tkilo := Tkilo + kilo;
                  end;
                  lbTotBlle.Caption:=IntToStr(nbBlle);
                  lbTotKg.Caption := FloatToStr(Tkilo);

                  prix := StrToInt(edprix.Text);
                  kilo := StrToFloat(lbTotKg.Caption);

                  prix := StrToInt(edprix.Text);

                  PrixLiv := prix * kilo;
                  lbPrixLiv.Caption := FloatToStr(PrixLiv);
           frmQteLivre.close;
          end else
          begin
            MessageDlg('La quantité saisie doit être inférieur',mtError,[mbRetry],0);
           // edQte.SetFocus;
          end;
    end;
end;

procedure TfrmQteLivre.edQteLiveKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button1.Click;

end;

procedure TfrmQteLivre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
edQteLive.Clear;
end;

procedure TfrmQteLivre.FormShow(Sender: TObject);
begin
edQteLive.Clear;
edQteLive.SetFocus;

end;

end.
