object frmRechBLRappel: TfrmRechBLRappel
  Left = 0
  Top = 0
  Caption = 'Recherche'
  ClientHeight = 237
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 486
    Height = 53
    Align = alTop
    Caption = 'Recherche de facture'
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 4
    ExplicitWidth = 390
    object Label1: TLabel
      Left = 24
      Top = 23
      Width = 59
      Height = 13
      Caption = 'N'#176' Facture :'
    end
    object edRechFact: TEdit
      Left = 96
      Top = 21
      Width = 121
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      OnChange = edRechFactExit
      OnExit = edRechFactExit
    end
  end
  object St_facture: TStringGrid
    Left = 0
    Top = 53
    Width = 486
    Height = 184
    Align = alClient
    Color = clBtnFace
    ColCount = 6
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDblClick = St_factureDblClick
    OnDrawCell = St_factureDrawCell
    ExplicitLeft = 3
    ExplicitTop = 63
    ExplicitWidth = 491
    ExplicitHeight = 122
    ColWidths = (
      74
      62
      121
      61
      54
      104)
  end
end
