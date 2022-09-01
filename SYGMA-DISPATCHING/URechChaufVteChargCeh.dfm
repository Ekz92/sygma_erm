object frmRechChaufVteChargCeh: TfrmRechChaufVteChargCeh
  Left = 0
  Top = 0
  Caption = 'Recherche de chauffeur'
  ClientHeight = 201
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object st_chauf: TStringGrid
    Left = 0
    Top = 0
    Width = 339
    Height = 201
    Align = alClient
    BorderStyle = bsNone
    ColCount = 3
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 3
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentColor = True
    TabOrder = 0
    StyleElements = []
    OnDblClick = st_chaufDblClick
    OnDrawCell = st_chaufDrawCell
    ExplicitWidth = 343
    ExplicitHeight = 123
    ColWidths = (
      55
      117
      164)
  end
end
