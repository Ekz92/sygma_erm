unit UListeBonCommande;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TfrmListeBonCommande = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    d1: TDateTimePicker;
    d2: TDateTimePicker;
    Button1: TButton;
    ednumbc: TEdit;
    cbVehicule: TComboBox;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Label5: TLabel;
    lbtotal: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
//    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
//      Rect: TRect; State: TGridDrawState);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  frmListeBonCommande: TfrmListeBonCommande;

implementation

{$R *.dfm}

uses records, UDM;

procedure TfrmListeBonCommande.Button1Click(Sender: TObject);
var
  Psql : string;
  BCs : TBonComArray;
  I: Integer;
  vTot : real;
begin
  vTot := 0;

  Psql:=' where date_bc between '+QuotedStr(FormatDateTime('yyyy-mm-dd',d1.Date))
                +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',d2.Date));

  if ednumbc.Text<>'' then Psql:= Psql+' and num_bc = '+ednumbc.Text;
  if cbVehicule.Text<>'' then Psql:= Psql+' and vehicule = '+cbVehicule.Text;

  Psql := Psql+' order by date_bc desc';

  BCs := dm.selectBonCommande(Psql);
  StringGrid1.RowCount := Length(BCs)+1;
  for I := Low(BCs) to High(BCs) do
    begin
      with StringGrid1 do
        begin
          Cells[0,i+1] := Bcs[i].Sdate_bc;
          Cells[1,i+1] := IntToStr(Bcs[i].Nnum_bc);
          Cells[2,i+1] := Bcs[i].Snom_four;
          Cells[3,i+1] := Bcs[i].SVehicule;
          Cells[4,i+1] := FloatToStrF(Bcs[i].Rmontant_bc,ffNumber,15,2);

          vTot := vTot + Bcs[i].Rmontant_bc;
        end;
    end;
    lbtotal.Caption := FloatToStrF(vTot,ffNumber,15,2);
    if StringGrid1.RowCount>1 then StringGrid1.FixedRows := 1;

end;

procedure TfrmListeBonCommande.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
cbVehicule.Clear;

end;

procedure TfrmListeBonCommande.FormCreate(Sender: TObject);
begin
with StringGrid1 do
  begin
    Cells[0,0]:='Date';
    Cells[1,0]:='N� BC';
    Cells[2,0]:='Fournisseur';
    Cells[3,0]:='V�hicule';
    Cells[4,0]:='Montant';
  end;
end;

procedure TfrmListeBonCommande.FormShow(Sender: TObject);
var
  Psql,vPsql : string;
  BCs : TBonComArray;
  I: Integer;
  vehs : TVehiculeArray;
begin
//d2.Date:= Now;
//
// { Liste de vehicules dans cbox}
//  vehs := DM.SelectVehicule(vPsql);
//
//  for I := Low(vehs) to High(vehs) do
//    begin
//      cbVehicule.Items.Add(vehs[i].SNum_mat);
//    end;
//  //************************
//  Psql:=' order by date_bc desc';
//
//  BCs := dm.selectBonCommande(Psql);
//  StringGrid1.RowCount := Length(BCs)+1;
//  for I := Low(BCs) to High(BCs) do
//    begin
//      with StringGrid1 do
//        begin
//          Cells[0,i+1] := Bcs[i].Sdate_bc;
//          Cells[1,i+1] := IntToStr(Bcs[i].Nnum_bc);
//          Cells[2,i+1] := Bcs[i].Snom_four;
//          Cells[3,i+1] := Bcs[i].SVehicule;
//          Cells[4,i+1] := FloatToStrF(Bcs[i].Rmontant_bc,ffNumber,15,2);
//        end;
//    end;
//end;
end;

procedure TfrmListeBonCommande.StringGrid1DrawCell(Sender: TObject; ACol,
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
