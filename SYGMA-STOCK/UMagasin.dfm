object frmAdd_magasin: TfrmAdd_magasin
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Cr'#233'er un nouveau magasin'
  ClientHeight = 222
  ClientWidth = 322
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
  object Bevel1: TBevel
    Left = 6
    Top = 3
    Width = 312
    Height = 73
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 19
    Top = 31
    Width = 63
    Height = 13
    Caption = 'D'#233'signation :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object SpeedButton1: TSpeedButton
    Left = 111
    Top = 47
    Width = 70
    Height = 25
    Caption = 'Ajouter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 180
    Top = 47
    Width = 70
    Height = 25
    Caption = 'Annuler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Label2: TLabel
    Left = 19
    Top = 11
    Width = 29
    Height = 13
    Caption = 'Code:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    StyleElements = [seClient, seBorder]
  end
  object Label3: TLabel
    Left = 0
    Top = 0
    Width = 322
    Height = 16
    Align = alTop
    AutoSize = False
    ExplicitWidth = 408
  end
  object Label4: TLabel
    Left = 0
    Top = 206
    Width = 322
    Height = 16
    Align = alBottom
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 203
    ExplicitWidth = 408
  end
  object ednom_mag: TEdit
    Left = 112
    Top = 28
    Width = 182
    Height = 19
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 0
  end
  object StringGrid1: TStringGrid
    Left = 6
    Top = 77
    Width = 312
    Height = 140
    Color = clBtnFace
    ColCount = 2
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16505495
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentFont = False
    PopupMenu = PopupMenu1
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      78
      282)
  end
  object edcode_mag: TEdit
    Left = 112
    Top = 8
    Width = 102
    Height = 19
    CharCase = ecUpperCase
    Ctl3D = False
    MaxLength = 6
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 2
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 152
    object Modifier1: TMenuItem
      Caption = 'Modifier'
    end
    object Supprimer1: TMenuItem
      Caption = 'Supprimer'
    end
    object Listerlesarticles1: TMenuItem
      Caption = 'Liste des articles'
    end
  end
end
