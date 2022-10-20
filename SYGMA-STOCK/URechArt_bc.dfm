object frmRechArt_bc: TfrmRechArt_bc
  Left = 0
  Top = 0
  Caption = 'Recherche d'#39'article'
  ClientHeight = 253
  ClientWidth = 447
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
    Width = 447
    Height = 62
    Align = alTop
    Caption = 'Crit'#232're de recherche'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 18
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label2: TLabel
      Left = 24
      Top = 38
      Width = 40
      Height = 13
      Caption = 'D'#233'sign.:'
    end
    object edcode_art: TEdit
      Left = 96
      Top = 16
      Width = 121
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      OnChange = edcode_artExit
      OnExit = edcode_artExit
    end
    object edDesignation: TEdit
      Left = 96
      Top = 36
      Width = 189
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object St_Art: TStringGrid
    Left = 0
    Top = 62
    Width = 447
    Height = 191
    Align = alClient
    Color = clBtnFace
    ColCount = 3
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDblClick = St_ArtDblClick
    OnDrawCell = St_ArtDrawCell
    ColWidths = (
      94
      284
      72)
  end
end
