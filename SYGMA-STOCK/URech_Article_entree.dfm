object frmrech_article_entree: Tfrmrech_article_entree
  Left = 0
  Top = 0
  Caption = 'Recherche Article'
  ClientHeight = 335
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 477
    Height = 63
    Align = alTop
    Caption = 'Recherche d'#39'article'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
      Top = 37
      Width = 40
      Height = 13
      Caption = 'D'#233'sign.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edcode_art: TEdit
      Left = 96
      Top = 15
      Width = 121
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      OnChange = edcode_artChange
      OnKeyPress = edcode_artKeyPress
    end
    object Edit2: TEdit
      Left = 96
      Top = 35
      Width = 233
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 63
    Width = 477
    Height = 272
    Align = alClient
    Color = clBtnFace
    ColCount = 3
    Ctl3D = False
    DefaultRowHeight = 15
    FixedColor = clLime
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goRowSelect]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssHorizontal
    TabOrder = 1
    StyleElements = [seBorder]
    OnDblClick = StringGrid1DblClick
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      84
      276
      207)
  end
end
