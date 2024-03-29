unit UClotureDay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.FMTBcd, Data.DB,
  Data.SqlExpr;

type
  TfrmClotureDay = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edlogin: TEdit;
    edpwd: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure edpwdKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmClotureDay: TfrmClotureDay;

implementation

{$R *.dfm}

uses records, UDM, UIntegrateur;

procedure TfrmClotureDay.Button1Click(Sender: TObject);
var
  RUser : TSQLQuery;
  Conn : integer;
  Sqlup,SqlCaisses,SqlCaisse,SqlInit :string;
  Caisses : TCaisseArray;
  Caisse : TCaisse;
  Cat_cais : TCatalogueCaisse;
  I: Integer;

  stocks : TStockArray;
  sqlSelStk,
  sqlInsertStk : string;
  Cat_stock,Sel_Cat_stock : TCatalogueStock;
  sqlSelCatStock,sqlUpCat : string;

  SysDate : TDateTime;
  dd:TDateSys;
  SqlUpDate : string;
begin
    RUser:=TSQLQuery.Create(self);
    RUser.SQLConnection := dm.SQLConnection1;

    with RUser.SQL do
      begin
        Add('select * from tb_user where usager = ' + QuotedStr(edlogin.Text) +' and password = '+QuotedStr(edpwd.Text)+' and statut = 1');
      end;

      try
        RUser.Open;
        if not RUser.IsEmpty then
          Conn := 1
        else
          conn := 0
      finally
        RUser.Free;
        dm.SQLConnection1.Close;
      end;

  if Conn = 1 then
    begin

          //Cursor := crHourGlass;
          Label3.Visible := True;
          sleep(10000);

        SqlCaisses := ' where num_compte <> 0000000001';
        Caisses := dm.SelectCaisses(SqlCaisses);

        SqlCaisse := ' where num_compte = 0000000001';

        for I := Low(Caisses) to High(Caisses) do
          begin
            Caisse := dm.SelectCaisse(SqlCaisse);

            Sqlup := 'update tb_caisse set solde = '+FloatToStr(Caisse.Rsolde + Caisses[i].RSolde)
                    +' where num_compte = '+QuotedStr('0000000001');
            dm.UpdateTable(Sqlup);

            // Insertion dans tb_catalogue_caisse
            with Cat_cais do
              begin
                 Sdate_cat := frmIntegrateur.lbdate.Caption;
                 Scompte := caisses[i].Scompte;
                 RSolde := Caisses[i].RSolde;
              end;
              dm.InsertCatalogueCaisse(Cat_cais);
            // Initialisation du solde des caisses
            SqlInit := 'update tb_caisse set solde = 0 where num_compte = '+QuotedStr(Caisses[i].Scompte);
            dm.UpdateTable(SqlInit);
          end;

  //******************** Cl�ture du stock *************************
      sqlSelStk :='';
      stocks:=dm.selectStock(sqlSelStk);

      for I := Low(stocks) to High(stocks) do
        begin
          with Cat_stock do
            begin
              Sdate_cs := frmIntegrateur.lbdate.Caption;
              Scode_art := stocks[i].Scode_art;
              Nqte_vide:=stocks[i].NQte_vide;
              Nqte_mag:=stocks[i].NQte_mag;
              Nqte_totale:=stocks[i].Nqte_total;
            end;

          sqlSelCatStock := ' where code_art = '+QuotedStr(stocks[i].Scode_art)
                          +' and date_cs = '+QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(frmIntegrateur.lbdate.Caption)));

          Sel_Cat_stock := dm.selectCatalogueStock(sqlSelCatStock);

          sqlUpCat := 'Update tb_catalogue_stock set '
                      +' qte_vide = '+IntToStr(stocks[i].NQte_vide)+','
                      +' qte_mag = '+IntToStr(stocks[i].NQte_mag)+','
                      +' qte_totale = '+IntToStr(stocks[i].Nqte_total)
                      +' where code_art = '+QuotedStr(stocks[i].Scode_art)
                      +' and date_cs = '+QuotedStr(FormatDateTime('yyyy-mm-dd',Now));

          if Sel_Cat_stock.Scode_art.IsEmpty then //si l'article n'existe pas, inserer
              dm.InsertCatalogueStock(Cat_stock)
          else                                   //sinon faire sa maj
              dm.UpdateTable(sqlUpCat);
        end;

      dd := dm.selectCatDate;
      SysDate := StrToDate(dd.Sdate_cd);
      SysDate := SysDate + 1;
     // ReplaceTime(SysDate, EncodeTime(20, 0, 0, 0));

//      ShowMessage(DateToStr( SysDate ));
      SqlUpDate :='update tb_catalogue_date set date_cd = '+QuotedStr(FormatDateTime('yyyy-mm-dd',SysDate));

      if StrToDate(dd.Sdate_cd) < Date then
        dm.UpdateTable(SqlUpDate);

      //ShowMessage(DateToStr(now));
      MessageDlg('Le processus de cl�ture s''est d�roul� avec succ�s',mtInformation,[mbOK],0);
      Button2.Click;
    end else
    begin
      MessageDlg('Acc�s refus�',mtError,[mbRetry],0);
//      Button2.Click;
    end;
end;

procedure TfrmClotureDay.Button2Click(Sender: TObject);
begin
  edlogin.Clear;
  edpwd.Clear;
  Close;
  frmIntegrateur.Close;

end;

procedure TfrmClotureDay.edpwdKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then Button1.Click;
end;

end.
