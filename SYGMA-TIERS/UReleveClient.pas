unit UReleveClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TfrmReleveOpClient = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edCodeClt: TEdit;
    edNomclt: TEdit;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edClientCode: TEdit;
    edClientNom: TEdit;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    cbStatut: TComboBox;
    frxReleve: TfrxReport;
    frxDBReleve: TfrxDBDataset;
    QReleve: TSQLQuery;
    QReleveid_rc: TIntegerField;
    QRelevecode_clt: TStringField;
    QRelevenom_client: TStringField;
    QRelevedate_rc: TDateField;
    QReleveoperation_rc: TStringField;
    QRelevecaisse_rc: TStringField;
    QRelevepiece: TStringField;
    QReleveavance_debit: TStringField;
    QReleveavance_credit: TStringField;
    QRelevefactRet_debit: TStringField;
    QRelevefactRet_credit: TStringField;
    QReleveLibelle: TStringField;
    frxDBQSum: TfrxDBDataset;
    QSum: TSQLQuery;
    QSumSUMavance_debit: TFloatField;
    QSumSUMavance_credit: TFloatField;
    QSumSUMfactRet_debit: TFloatField;
    QSumSUMfactRet_credit: TFloatField;
    QSumsoldeA: TFloatField;
    QSumSoldeF: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    QSoldeGene: TSQLQuery;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure edCodeCltChange(Sender: TObject);
    procedure edNomcltChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmReleveOpClient: TfrmReleveOpClient;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmReleveOpClient.Button1Click(Sender: TObject);
var
  sql, SqlSum ,SqlSoldeGene: string;
  Memo: TfrxMemoView;
  Component: TfrxComponent;
begin
  if edClientCode.Text <> '' then
      begin
        if (cbStatut.Text='Toutes') then{Toutes factures confondu}
          begin
            sql := 'Select * from tb_releve_client where code_clt = '+QuotedStr(edClientCode.Text)
                                                          +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                                                          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date));

        //    SqlSum:='SELECT SUM(avance_debit),SUM(avance_credit),SUM(factRet_debit),SUM(factRet_credit),(SUM(avance_credit) - SUM(avance_debit)) as soldeA,(SUM(factRet_credit) - SUM(factRet_debit)) as SoldeF FROM tb_releve_client '
        //                  +' where code_clt = '+QuotedStr(edClientCode.Text)
        //                  +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
        //                  +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date));

            SqlSum:='SELECT SUM(avance_debit),SUM(avance_credit),SUM(factRet_debit),SUM(factRet_credit),(SUM(avance_debit) - SUM(avance_credit)) as soldeA,(SUM(factRet_credit) - SUM(factRet_debit)) as SoldeF FROM tb_releve_client '
                          +' where code_clt = '+QuotedStr(edClientCode.Text)
                          +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date));


        //    SqlSoldeGene:='SELECT (SUM(factRet_credit)-(SUM(factRet_debit))-(SUM(avance_credit)-SUM(avance_debit))) as soldeGene from tb_releve_client '
        //                  +' where code_clt = '+QuotedStr(edClientCode.Text)
        //                  +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
        //                  +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date));

            SqlSoldeGene:='SELECT (SUM(factRet_credit)-(SUM(factRet_debit))-(SUM(avance_debit) - SUM(avance_credit))) as soldeGene from tb_releve_client '
                          +' where code_clt = '+QuotedStr(edClientCode.Text)
                          +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date));

          end
        else if (cbStatut.Text='Pay�es') then {Factures totalement pay�es}
          begin
            sql := 'Select * from tb_releve_client R, tb_facturation F  where R.code_clt = '+QuotedStr(edClientCode.Text)
                          +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                          +' and F.num_fact = R.piece '
                          +' and F.statut = '+QuotedStr('PA');

        //    SqlSum:='SELECT SUM(avance_debit),SUM(avance_credit),SUM(factRet_debit),SUM(factRet_credit),(SUM(avance_credit) - SUM(avance_debit)) as soldeA,(SUM(factRet_credit) - SUM(factRet_debit)) as SoldeF FROM tb_releve_client R, tb_facturation F'
        //                  +' where R.code_clt = '+QuotedStr(edClientCode.Text)
        //                  +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
        //                  +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
        //                  +' and F.num_fact = R.piece '
        //                  +' and F.statut = '+QuotedStr('PA');

            SqlSum:='SELECT SUM(avance_debit),SUM(avance_credit),SUM(factRet_debit),SUM(factRet_credit),(SUM(avance_debit) - SUM(avance_credit)) as soldeA,(SUM(factRet_debit) - SUM(factRet_credit)) as SoldeF FROM tb_releve_client R, tb_facturation F'
                          +' where R.code_clt = '+QuotedStr(edClientCode.Text)
                          +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                          +' and F.num_fact = R.piece '
                          +' and F.statut = '+QuotedStr('PA');


            SqlSoldeGene:='SELECT (SUM(factRet_credit)-(SUM(factRet_debit))-(SUM(avance_credit)-SUM(avance_debit))) as soldeGene from tb_releve_client R, tb_facturation F '
                          +' where R.code_clt = '+QuotedStr(edClientCode.Text)
                          +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                          +' and F.num_fact = R.piece '
                          +' and F.statut = '+QuotedStr('PA');
          end
        else if (cbStatut.Text='En attente') then { FActures en attente de payement ou pay�es partiellement}
             begin
            sql := 'Select * from tb_releve_client R, tb_facturation F  where R.code_clt = '+QuotedStr(edClientCode.Text)
                          +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                          +' and F.num_fact = R.piece '
                          +' and F.statut = '+QuotedStr('AT');

            SqlSum:='SELECT SUM(avance_debit),SUM(avance_credit),SUM(factRet_debit),SUM(factRet_credit),(SUM(avance_credit) - SUM(avance_debit)) as soldeA,(SUM(factRet_credit) - SUM(factRet_debit)) as SoldeF FROM tb_releve_client R, tb_facturation F'
                          +' where R.code_clt = '+QuotedStr(edClientCode.Text)
                          +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                          +' and F.num_fact = R.piece '
                          +' and F.statut = '+QuotedStr('AT');


            SqlSoldeGene:='SELECT (SUM(factRet_credit)-(SUM(factRet_debit))-(SUM(avance_credit)-SUM(avance_debit))) as soldeGene from tb_releve_client R, tb_facturation F '
                          +' where R.code_clt = '+QuotedStr(edClientCode.Text)
                          +' and date_rc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date))
                          +' and F.num_fact = R.piece '
                          +' and F.statut = '+QuotedStr('AT');

             end;


        //----------------date debut--------------------------
        Component := frxReleve.FindObject('md1');
          if Component is TfrxMemoView then
            begin
              Memo := Component as TfrxMemoView;
              Memo.Text :=DateToStr(d1.Date);
            end;
        //----------------date fin--------------------------
        Component := frxReleve.FindObject('md2');
          if Component is TfrxMemoView then
            begin
              Memo := Component as TfrxMemoView;
              Memo.Text :=DateToStr(d2.Date);
            end;

        QReleve.SQL.Clear;
        QReleve.SQL.Add(sql);
        QReleve.Open;

        QSum.SQL.Clear;
        QSum.SQL.Add(SqlSum);
        QSum.Open;

        QSoldeGene.SQL.Clear;
        QSoldeGene.SQL.Add(SqlSoldeGene);
        QSoldeGene.Open;

        frxReleve.ShowReport();
      end else
      MessageDlg('Merci de selectionner un client ',mtError,[mbok],0);
end;

procedure TfrmReleveOpClient.edCodeCltChange(Sender: TObject);
var
  clients : TClientArray;
  Psql : string;
  i:integer;
begin
  Psql := 'where code_clt like '+QuotedStr('%'+edCodeClt.Text+'%');
  clients := DM.selectClients(Psql);
  StringGrid1.RowCount:=Length(clients)+1;
  for I := Low(clients) to High(clients) do
    begin
      StringGrid1.Cells[0,i+1]:=clients[i].SCodeClt;
      StringGrid1.Cells[1,i+1]:=clients[i].SnomClt;
      StringGrid1.Cells[2,i+1]:=clients[i].SadresseClt;
    end;

  if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmReleveOpClient.edNomcltChange(Sender: TObject);
var
  clients : TClientArray;
  Psql : string;
  i:integer;
begin
  Psql := ' where nom_clt like '+QuotedStr(edNomclt.Text+'%');
  clients := DM.selectClients(Psql);
  StringGrid1.RowCount:=Length(clients)+1;
  for I := Low(clients) to High(clients) do
    begin
      StringGrid1.Cells[0,i+1]:=clients[i].SCodeClt;
      StringGrid1.Cells[1,i+1]:=clients[i].SnomClt;
      StringGrid1.Cells[2,i+1]:=clients[i].SadresseClt;
    end;
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;
end;

procedure TfrmReleveOpClient.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Code';
    Cells[1,0]:='Nom';
    Cells[2,0]:='Addresse';
  end;
end;

procedure TfrmReleveOpClient.FormShow(Sender: TObject);
var
  clients : TClientArray;
  Psql : string;
  i:integer;
begin
  edCodeClt.Clear;
  edNomclt.Clear;
  edClientCode.Clear;
  edClientNom.Clear;

  Psql := '';
  clients := DM.selectClients(Psql);
  StringGrid1.RowCount:=Length(clients)+1;
  for I := Low(clients) to High(clients) do
    begin
      StringGrid1.Cells[0,i+1]:=clients[i].SCodeClt;
      StringGrid1.Cells[1,i+1]:=clients[i].SnomClt;
      StringGrid1.Cells[2,i+1]:=clients[i].SadresseClt;
    end;

  d1.MaxDate:=Now;
  d2.MaxDate:=Now;
  d2.Date:=Now;
end;

procedure TfrmReleveOpClient.StringGrid1DblClick(Sender: TObject);
begin
with StringGrid1 do
  begin
    edClientCode.Text := Cells[0,Row];
    edClientNom.Text := Cells[1,Row];
  end;

end;

procedure TfrmReleveOpClient.StringGrid1DrawCell(Sender: TObject; ACol,
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
