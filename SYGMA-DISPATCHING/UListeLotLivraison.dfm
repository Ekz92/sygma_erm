object frmListeLotLivraison: TfrmListeLotLivraison
  Left = 0
  Top = 0
  Caption = 'Liste de lots de livraison'
  ClientHeight = 256
  ClientWidth = 413
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
    Width = 413
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
    ExplicitWidth = 412
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 57
    Width = 413
    Height = 175
    Align = alClient
    ColCount = 4
    DefaultRowHeight = 15
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
    ExplicitWidth = 412
    ExplicitHeight = 179
    ColWidths = (
      87
      77
      168
      73)
  end
  object Panel1: TPanel
    Left = 0
    Top = 232
    Width = 413
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 236
    ExplicitWidth = 412
    object Button1: TButton
      Left = 338
      Top = 0
      Width = 75
      Height = 24
      Align = alRight
      Caption = 'Preview'
      TabOrder = 0
      ExplicitLeft = 337
    end
  end
end
