unit UEntreeCanc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmEntreeCanc = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edpiece: TEdit;
    memo: TMemo;
    Button1: TButton;
    Button2: TButton;
    edArticle: TEdit;
    edqte: TEdit;
    edNum: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmEntreeCanc: TfrmEntreeCanc;

implementation

{$R *.dfm}

uses records, UDM, UConnexion, UListeEntree;

procedure TfrmEntreeCanc.Button1Click(Sender: TObject);
var
  Psql,PsqlStatut : string;
  Ec : TEntreeCanc;
  entree : TEntree;
  Stock,stock_src : TStock;
  code_art , code_art_src ,
  sqlEntree,PsqlTransfert,
  PsqlUp,PsqlD : string;

begin
if MessageDlg('Attention, cette action supprimera la facture. Voulez-vous Continuer ?',mtWarning,[mbyes,mbNo,mbCancel],0)=mrYes then
begin
  code_art:=edArticle.Text;
  Stock := dm.selectStockByArticle(code_art);
  sqlEntree := ' where id_entree = '+edNum.Text;
  entree := dm.SelectEntree(sqlEntree);

  code_art_src := entree.Scode_art_src;
  stock_src :=  dm.selectStockByArticle(code_art_src);


  { Modification de la qte en stock en fonction du tpe d'entree }
  if entree.SPiece = 'Transfert inter-magasin'  then
    begin
      PsqlUp:=' update tb_stock set '
            +' qte_mag = '+IntToStr(stock_src.NQte_mag + strtoint(edqte.Text))+','
            +' qte_totale = '+IntToStr(stock_src.Nqte_total + strtoint(edqte.Text))
            +' where code_art = '+QuotedStr(entree.Scode_art_src);

      PsqlD:=' update tb_stock set '
            +' qte_mag = '+IntToStr(Stock.NQte_mag - strtoint(edqte.Text))+','
            +' qte_totale = '+IntToStr(Stock.Nqte_total - strtoint(edqte.Text))
            +' where code_art = '+QuotedStr(entree.SCode_art);
    end else
    begin
      if entree.NType_entree = 0 then // Si c'est lentr�e de bouteilles vide
        begin
          PSql :=' update tb_stock set '
                  +' qte_vide = '+IntToStr(Stock.NQte_vide - strtoint(edqte.Text)) +','
                  +' qte_totale = '+IntToStr(Stock.Nqte_total - strtoint(edqte.Text))
                  +' where code_art = '+QuotedStr(edArticle.Text);
        end else
      if entree.NType_entree = 1 then // Si c'est l'entree des charge
        begin
          PSql :=' update tb_stock set '
                  +' qte_vide = '+IntToStr(Stock.NQte_vide + strtoint(edqte.Text))  +','
                  +' qte_mag = '+IntToStr(Stock.NQte_mag - strtoint(edqte.Text))
                  +' where code_art = '+QuotedStr(edArticle.Text);
        end else
      if entree.NType_entree = 2 then // Si c'est l'entree des consignations
        begin
          PSql :=' update tb_stock set '
                  +' qte_mag = '+IntToStr(Stock.NQte_mag - strtoint(edqte.Text))   +','
                  +' qte_totale = '+IntToStr(Stock.Nqte_total - strtoint(edqte.Text))
                  +' where code_art = '+QuotedStr(edArticle.Text);
        end;
    end;


 {Augmentation de la qte de l'article transfer�

      PsqlTransfert :=' update tb_stock set '
              +' qte_mag = '+IntToStr(stock_src.NQte_mag + entree.NQte_entree)   +','
              +' qte_totale = '+IntToStr(stock_src.Nqte_total + entree.NQte_entree)
              +' where code_art = '+QuotedStr(entree.Scode_art_src);
                                                                      }
    PsqlStatut := ' update tb_entree set statut_canc = 1 where id_entree = '+edNum.Text ;
                                                     // +' and num_piece = '+QuotedStr(edpiece.Text);

  with Ec do
    begin
      Snum_piece:=QuotedStr(edpiece.Text);
      Scode_art:=QuotedStr(edArticle.Text);
      Smotif:=QuotedStr(memo.Text);
      Nqte:=StrToInt(edqte.Text);
      Sdate_canc:=QuotedStr(FormatDateTime('yyyy-mm-dd',Now));
      Suser_canc := QuotedStr(vUsager);
    end;
  if memo.Text<>'' then
    begin
      dm.InsertEntreeCanc(Ec);
      dm.UpdateTable(PsqlStatut);
      if entree.SPiece = 'Transfert inter-magasin' then
        begin
          dm.UpdateTable(PsqlUp);
          dm.UpdateTable(PsqlD);
        end else
          dm.UpdateTable(PSql);
      Close;
    end else
    begin
      MessageDlg('Merci de renseigner le motif',mtError,[mbRetry],0);
    end;
end;
end;

procedure TfrmEntreeCanc.Button2Click(Sender: TObject);
begin
edpiece.Clear;
edArticle.Clear;
edqte.Clear;
edNum.Clear;
memo.Clear;
Close;
end;

procedure TfrmEntreeCanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmListeEntree.Button1.Click;
end;

procedure TfrmEntreeCanc.FormShow(Sender: TObject);
begin
memo.Clear;
memo.SetFocus;
end;

end.
