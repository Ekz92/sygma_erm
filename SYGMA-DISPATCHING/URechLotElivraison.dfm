object frmRechLotElivraison: TfrmRechLotElivraison
  Left = 0
  Top = 0
  Caption = 'Recherche de lot'
  ClientHeight = 201
  ClientWidth = 409
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 409
    Height = 57
    Align = alTop
    Caption = 'Recherche'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 410
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 57
    Width = 409
    Height = 144
    Align = alClient
    ColCount = 4
    DefaultRowHeight = 16
    FixedCols = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goRowSelect]
    ParentColor = True
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    ExplicitWidth = 410
    ColWidths = (
      87
      77
      168
      73)
  end
end
