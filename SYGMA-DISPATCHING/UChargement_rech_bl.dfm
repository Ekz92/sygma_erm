object frmChargement_rech_bl: TfrmChargement_rech_bl
  Left = 0
  Top = 0
  Caption = 'Recherche BL'
  ClientHeight = 243
  ClientWidth = 542
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
    Width = 542
    Height = 45
    Align = alTop
    Caption = 'Recherche de BL'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 18
      Width = 33
      Height = 13
      Caption = 'N'#176' BL :'
    end
    object ednum_bl: TEdit
      Left = 64
      Top = 16
      Width = 114
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      OnExit = ednum_blExit
    end
  end
  object St_bl: TStringGrid
    Left = 0
    Top = 45
    Width = 542
    Height = 198
    Align = alClient
    Color = clBtnFace
    ColCount = 7
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    TabOrder = 1
    StyleElements = [seBorder]
    OnDblClick = St_blDblClick
    OnDrawCell = St_blDrawCell
    ExplicitHeight = 174
    ColWidths = (
      79
      61
      144
      54
      54
      75
      64)
  end
end
