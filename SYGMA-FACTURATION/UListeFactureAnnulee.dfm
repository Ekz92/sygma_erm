object frmListeFactureAnnulee: TfrmListeFactureAnnulee
  Left = 0
  Top = 0
  Caption = 'Factures annul'#233'es'
  ClientHeight = 289
  ClientWidth = 480
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -34
    ExplicitWidth = 481
  end
  object Panel2: TPanel
    Left = 0
    Top = 266
    Width = 480
    Height = 23
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -34
    ExplicitTop = 178
    ExplicitWidth = 481
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 57
    Width = 480
    Height = 209
    Align = alClient
    ColCount = 4
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentColor = True
    TabOrder = 2
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ExplicitLeft = -34
    ExplicitTop = 10
    ExplicitWidth = 481
    ExplicitHeight = 191
    ColWidths = (
      64
      268
      76
      64)
  end
end
