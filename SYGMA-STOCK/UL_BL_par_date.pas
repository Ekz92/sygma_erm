unit UL_BL_par_date;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr, frxClass,
  frxDBSet, Vcl.Menus;

type
  TfrmL_BL_par_date = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    cbStatut: TComboBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    StringGrid1: TStringGrid;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Imprimerlaligne1: TMenuItem;
    QRech_BL_all: TSQLQuery;
    frxDBE_ListeBL_all: TfrxDBDataset;
    frxE_Rech_BL_all: TfrxReport;
    frxE_Rech_BL_Line: TfrxReport;
    frxDBE_ListeBL_Line: TfrxDBDataset;
    QRech_BL_Line: TSQLQuery;
    QRech_BL_Lineid_bl: TIntegerField;
    QRech_BL_Linenum_bl: TStringField;
    QRech_BL_Linenom_Client: TStringField;
    QRech_BL_Linecode_mag: TStringField;
    QRech_BL_Linedesignation_mag: TStringField;
    QRech_BL_Linecode_art: TStringField;
    QRech_BL_Linedesignation_art: TStringField;
    QRech_BL_LineKilo_art: TFloatField;
    QRech_BL_Lineqte_art: TIntegerField;
    QRech_BL_Linekilo_total: TFloatField;
    QRech_BL_LineControle: TIntegerField;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmL_BL_par_date: TfrmL_BL_par_date;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmL_BL_par_date.Button1Click(Sender: TObject);
var
  Qselect_par_date :TSQLQuery;
  i,jr:integer;
begin
{  jr:=Trunc(d2.Date - d1.Date);
  ShowMessage(IntToStr(jr));
}
  Qselect_par_date:=TSQLQuery.Create(self);
  Qselect_par_date.SQLConnection:=dm.SQLConnection1;

  with Qselect_par_date,SQL do
    begin
      if cbStatut.ItemIndex = 0 then
        Add('select * from tb_bl where date_bl between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',D1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',D2.DateTime))
        //  +' and statut_bl  = 1'
        )
      else
      if cbStatut.ItemIndex = 1 then
        Add('select * from tb_bl where date_bl between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',D1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',D2.DateTime))
          +' and statut_bl  = 1')
      else
      if cbStatut.ItemIndex = 2 then
        Add('select * from tb_bl where date_bl between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',D1.Date)+'00:00:00')
         + ' and '+QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',D2.DateTime))
         + ' and statut_bl  = 0')
    end;

    try
      Qselect_par_date.Open;
      if Qselect_par_date.IsEmpty then
        begin
          StringGrid1.RowCount:=2;
          StringGrid1.Rows[1].Clear;
        end else
      begin
        StringGrid1.RowCount:=Qselect_par_date.RowsAffected+1;
        for I := 1 to Qselect_par_date.RowsAffected do
          with StringGrid1, Qselect_par_date do
            begin
              Cells[0,i] := FieldByName('num_bl').AsString;
              Cells[1,i] := FieldByName('nom_clt').AsString;
              Cells[2,i] := FieldByName('code_mag').AsString;
              Cells[3,i] := FieldByName('total_kilo').AsString;
              Cells[4,i] := FieldByName('total_bouteille').AsString;
              Cells[5,i] := FloatToStrF(FieldByName('Prix_livraison').AsVariant,ffNumber,15,0)+'F';
              Cells[6,i] := FieldByName('date_bl').AsString;
              Cells[7,i] := FieldByName('usager').AsString;
              Qselect_par_date.Next;
            end;
      end;
    finally
       Qselect_par_date.Free;
    end;
end;

procedure TfrmL_BL_par_date.FormActivate(Sender: TObject);
begin
d1.Date := StrToDate(DateToStr(Now)) ;
d2.Date := StrToDate(DateToStr(Now)) ;

d1.MaxDate := Now;
d2.MaxDate := Now;
end;

procedure TfrmL_BL_par_date.FormCreate(Sender: TObject);
begin
  WITH StringGrid1 do
    begin
      Cells[0,0]:='N� BL';
      Cells[1,0]:='Client';
      Cells[2,0]:='Magasin';
      Cells[3,0]:='Kgs';
      Cells[4,0]:='Bouteille';
      Cells[5,0]:='Prix liv';
      Cells[6,0]:='Date';
      Cells[7,0]:='Usager';
    end;

end;

procedure TfrmL_BL_par_date.FormShow(Sender: TObject);
var
  Bls : TBLArray;
  Psql : string;
  I: Integer;
begin
  Psql :='';
  Bls := DM.SelectBl(Psql) ;
  StringGrid1.RowCount:=Length(bls)+1;

  for I := Low(bls) to High(bls) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := bls[i].Snum_bl;
          Cells[1,i+1] := bls[i].Snom_clt;
          Cells[2,i+1] := bls[i].Scode_mag;
          Cells[3,i+1] := FloatToStr(bls[i].RTotKilo);
          Cells[4,i+1] := IntToStr(bls[i].NTotBlle);
          Cells[5,i+1] := FloatToStrF(bls[i].RPrixLiv,ffNumber,15,0)+'F';
          Cells[6,i+1] := bls[i].Sdate_bl;
          Cells[7,i+1] := bls[i].SUsager;
        end;
    end;
end;

procedure TfrmL_BL_par_date.SpeedButton1Click(Sender: TObject);
var
  Date1,Date2,M_statut: TfrxMemoView;
  Component: TfrxComponent;
begin
//****************************** Affichage date1 ***********************
Component := frxE_Rech_BL_all.FindObject('M_statut');
  if Component is TfrxMemoView then
  begin
        Date1 := Component as TfrxMemoView;
        Date1.Text := cbStatut.Text;
  end;

//****************************** Affichage date1 ***********************
Component := frxE_Rech_BL_all.FindObject('Date1');
  if Component is TfrxMemoView then
  begin
        Date1 := Component as TfrxMemoView;
        Date1.Text := DateToStr(D1.DateTime);
  end;
//****************************** Affichage date1 ***********************
Component := frxE_Rech_BL_all.FindObject('Date2');
  if Component is TfrxMemoView then
  begin
        Date2 := Component as TfrxMemoView;
        Date2.Text := DateToStr(d2.DateTime);
  end;

  with QRech_BL_all,SQL do
    begin
      Clear;
      if cbStatut.ItemIndex = 0 then
        Add('select * from tb_bl where date_bl between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',D1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',D2.DateTime))
        //  +' and statut_bl  = 1'
        )
      else
      if cbStatut.ItemIndex = 1 then
        Add('select * from tb_bl where date_bl between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',D1.Date)+'00:00:00')
          +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',D2.DateTime))
          +' and statut_bl  = 1')
      else
      if cbStatut.ItemIndex = 2 then
        Add('select * from tb_bl where date_bl between '+QuotedStr(FormatDateTime('yyyy-mm-dd ',D1.Date)+'00:00:00')
         + ' and '+QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',D2.DateTime))
         + ' and statut_bl  = 0')
    end;
    try
      QRech_BL_all.Open;
      frxE_Rech_BL_all.ShowReport();
    finally
      dm.SQLConnection1.Close;
    end;
end;

procedure TfrmL_BL_par_date.StringGrid1DrawCell(Sender: TObject; ACol,
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