object frmFacturationRech_mag: TfrmFacturationRech_mag
  Left = 0
  Top = 0
  Caption = 'Facture - recherche  magasin'
  ClientHeight = 217
  ClientWidth = 372
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
  object St_rech_mag: TStringGrid
    Left = 0
    Top = 57
    Width = 372
    Height = 160
    Align = alClient
    Color = clBtnFace
    ColCount = 2
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentFont = False
    TabOrder = 0
    StyleElements = [seBorder]
    OnDblClick = St_rech_magDblClick
    OnDrawCell = St_rech_magDrawCell
    ColWidths = (
      119
      244)
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 372
    Height = 57
    Align = alTop
    Caption = 'Recherche'
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 26
      Width = 55
      Height = 13
      Caption = 'Code mag :'
    end
    object edrech_mag: TEdit
      Left = 88
      Top = 24
      Width = 121
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      TextHint = 'Code magasin'
      OnChange = edrech_magChange
      OnDblClick = edrech_magDblClick
    end
  end
end
