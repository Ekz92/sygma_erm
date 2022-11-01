unit UReguleStockCamion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmReguleStockCamion = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edArticle: TEdit;
    cbCamion: TComboBox;
    edDesignation: TEdit;
    edQte: TEdit;
    Button1: TButton;
    Button2: TButton;
    cbtype: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edArticleDblClick(Sender: TObject);
    procedure edQteKeyPress(Sender: TObject; var Key: Char);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmReguleStockCamion: TfrmReguleStockCamion;

implementation

{$R *.dfm}

uses records, UDM, URech_Article;

procedure TfrmReguleStockCamion.Button1Click(Sender: TObject);
var
  SqlUpd,num_cam ,Psql : string;
  stockCam : TStockCamion;
begin
  num_cam := QuotedStr(cbCamion.Text);
  Psql := ' Where vehicule = '+QuotedStr(cbCamion.Text)
          +' and code_art = '+QuotedStr(edArticle.Text);

  stockCam := dm.selectStockCamion(Psql);

  if cbtype.ItemIndex=0 then
  SqlUpd := 'Update tb_stock_camion set '
            +' qte_vide = '+IntToStr(stockCam.NQte_vide + StrToInt(edQte.Text))+','
            +' qte_total = '+IntToStr(stockCam.Nqte_total + StrToInt(edQte.Text))
            +Psql
  else
  if cbtype.ItemIndex=1 then
  SqlUpd := 'Update tb_stock_camion set '
            +' qte_mag = '+IntToStr(stockCam.NQte_mag + StrToInt(edQte.Text))+','
            +' qte_total = '+IntToStr(stockCam.Nqte_total + StrToInt(edQte.Text))
            +Psql ;

  if MessageDlg('Valider cette opération de régulation de stock ?',mtConfirmation,[mbyes,mbno],0) = mrYes then
    begin
      dm.UpdateTable(SqlUpd);
      Button2.Click;
    end;

end;

procedure TfrmReguleStockCamion.Button2Click(Sender: TObject);
begin
cbCamion.Clear;
edArticle.Clear;
edDesignation.Clear;
edQte.Clear;
end;

procedure TfrmReguleStockCamion.edArticleDblClick(Sender: TObject);
begin
vFormSource_art := 'frmReguleStockCamion';
frmrech_article.ShowModal;
end;

procedure TfrmReguleStockCamion.edQteKeyPress(Sender: TObject; var Key: Char);
begin
 if NOT (key IN ['0'..'9','-', #13,#8]) then
  key := #0;
end;

procedure TfrmReguleStockCamion.FormShow(Sender: TObject);
var
  Camion : TVehiculeArray;
  Psql : string;
  I: Integer;

begin
  Psql := '';
  Camion := dm.SelectVehicule(Psql);

  for I := Low(Camion) to High(Camion) do
    begin
      cbCamion.Items.Add(Camion[i].SNum_mat);
    end;

end;

end.
