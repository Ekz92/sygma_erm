unit UVteChargVehRechVeh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TfrmVteChargVehRechVeh = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ednum_immat: TEdit;
    St_veh: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure ednum_immatExit(Sender: TObject);
    procedure St_vehDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure St_vehDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ednum_immatChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmVteChargVehRechVeh: TfrmVteChargVehRechVeh;
  vSourceForm :string;

implementation

{$R *.dfm}

uses records, UDM, UvteChargVeh, UImportBl;

procedure TfrmVteChargVehRechVeh.ednum_immatChange(Sender: TObject);
var
  Psql : string;
  vehs : TVehiculeArray;
  i:integer;
begin
  Psql := ' where num_immat_veh like '+QuotedStr(ednum_immat.Text+'%');

  vehs:=dm.SelectVehicule(Psql);
  St_veh.RowCount := Length(vehs) +1;

  for I := Low(vehs) to High(vehs) do
    with St_veh do
      begin
       // Rows[i].Clear;
        Cells[0,i+1] := vehs[i].SNum_mat ;
        Cells[1,i+1] := vehs[i].SMarque;
        Cells[2,i+1] := IntToStr(vehs[i].NPTAC);
      end;
 if St_veh.RowCount>1 then St_veh.FixedRows := 1;
end;

procedure TfrmVteChargVehRechVeh.ednum_immatExit(Sender: TObject);
var
  Psql : string;
  vehs : TVehiculeArray;
  i:integer;
begin
  Psql := ' where num_immat_veh like '+QuotedStr(ednum_immat.Text+'%');

  vehs:=dm.SelectVehicule(Psql);
  St_veh.RowCount := Length(vehs) +1;

  for I := Low(vehs) to High(vehs) do
    with St_veh do
      begin
       // Rows[i].Clear;
        Cells[0,i+1] := vehs[i].SNum_mat ;
        Cells[1,i+1] := vehs[i].SMarque;
        Cells[2,i+1] := IntToStr(vehs[i].NPTAC);
      end;
 if St_veh.RowCount>1 then St_veh.FixedRows := 1;
end;

procedure TfrmVteChargVehRechVeh.FormCreate(Sender: TObject);
begin
with St_veh do
  begin
    Cells[0,0] := 'N° Immat.' ;
    Cells[1,0] := 'marque_veh' ;
    Cells[2,0] := 'Kgs max' ;
  end;
end;

procedure TfrmVteChargVehRechVeh.FormShow(Sender: TObject);
var
  Psql : string;
  vehs : TVehiculeArray;
  i:integer;
begin
  Psql := '';

  vehs:=dm.SelectVehicule(Psql);
  St_veh.RowCount := Length(vehs) +1;

  for I := Low(vehs) to High(vehs) do
    with St_veh do
      begin
       // Rows[i].Clear;
        Cells[0,i+1] := vehs[i].SNum_mat ;
        Cells[1,i+1] := vehs[i].SMarque;
        Cells[2,i+1] := IntToStr(vehs[i].NPTAC);
      end;
 if St_veh.RowCount>1 then St_veh.FixedRows := 1;
end;

procedure TfrmVteChargVehRechVeh.St_vehDblClick(Sender: TObject);
var
  cmds : TCommandeCamionArray;
  sql :string;
  chk_veh :Boolean;
  I, statut_cmd: Integer;
begin
   sql :=' where vehicule = '+QuotedStr(St_veh.Cells[0, St_veh.Row]);
  cmds := dm.SelectCommandeCamion(sql);

  chk_veh:=false;
//  ShowMessage(IntToStr(Length(cmds)));

//Blocage du chargement tant que la commande en cours n'est pas bouclée}

  if (Length(cmds) = 0) then
    begin
      chk_veh := False;
    end else
    begin
      for I := Low(cmds) to High(cmds) do
        begin
          if (cmds[i].Nstatut_cmd = 0) then //s'il y a une cmd encours
            begin
              chk_veh := true;
            end;
        end;
    end;

  if chk_veh = True then
    begin
      MessageDlg('Vous avez une commande encours avec ce vehicule. veullez clôturer cette commande avant de pouvoir le charger de nouveau',mtError,[mbRetry],0);
      exit
    end
  else
    begin
      if vSourceForm = 'frmvteChargVeh' then
        with frmvteChargVeh do
          begin
            edNumMat.Text := St_veh.Cells[0, St_veh.Row];
            edNomCamion.Text :=St_veh.Cells[1, St_veh.Row];
            edPtac.Text := St_veh.Cells[2, St_veh.Row];
          end else
      if vSourceForm = 'frmImportBl' then
        with frmImportBl do
          begin
            edNumMat.Text := St_veh.Cells[0, St_veh.Row];
            edNomCamion.Text :=St_veh.Cells[1, St_veh.Row];
            edPtac.Text := St_veh.Cells[2, St_veh.Row];

          end;
        close;
    end;

end;

procedure TfrmVteChargVehRechVeh.St_vehDrawCell(Sender: TObject; ACol,
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
