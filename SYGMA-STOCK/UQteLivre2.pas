unit UQteLivre2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmQteLivre2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edQteLive: TEdit;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure edQteLiveKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmQteLivre2: TfrmQteLivre2;

implementation

{$R *.dfm}

uses records, UDM, URappelBl;

procedure TfrmQteLivre2.Button1Click(Sender: TObject);
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

  with frmRappelBL do
    begin
       if StrToInt(Sg_rappel_Bl.Cells[4,Sg_rappelBl_row]) >= StrToInt(edQteLive.Text) then
          begin
           Sg_rappel_Bl.Cells[5,Sg_rappelBl_row]:=edQteLive.Text;
              nbBlle:=0;
              Tkilo:=0;
              for I := 1 to Sg_rappel_Bl.RowCount -1 do
                with Sg_rappel_Bl do
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

                  PrixLiv := prix * kilo;
                  lbPrixLiv.Caption := FloatToStr(PrixLiv);

           frmQteLivre2.close;
          end
            else
              begin
                MessageDlg('La quantité saisie doit être inférieur',mtError,[mbRetry],0);
               // edQte.SetFocus;
              end;

    end;
end;

procedure TfrmQteLivre2.edQteLiveKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button1.Click;

end;

procedure TfrmQteLivre2.FormShow(Sender: TObject);
begin
edQteLive.Clear;
edQteLive.SetFocus;
end;

end.
