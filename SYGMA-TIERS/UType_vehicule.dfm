object frmtype_vehicule: Tfrmtype_vehicule
  Left = 0
  Top = 0
  Caption = 'Type de v'#233'hicules'
  ClientHeight = 279
  ClientWidth = 343
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
    Width = 343
    Height = 71
    Align = alTop
    Caption = 'Ajout d'#39'un type vehicule'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    StyleElements = []
    ExplicitLeft = 4
    ExplicitTop = 2
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 63
      Height = 13
      Caption = 'D'#233'signation :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = []
    end
    object SB_Add: TSpeedButton
      Left = 116
      Top = 41
      Width = 70
      Height = 23
      Caption = 'Ajouter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SB_AddClick
    end
    object SpeedButton2: TSpeedButton
      Left = 257
      Top = 41
      Width = 70
      Height = 23
      Caption = 'Annuler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SB_Modifier: TSpeedButton
      Left = 187
      Top = 41
      Width = 70
      Height = 23
      Caption = 'Modifier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SB_ModifierClick
    end
    object Label8: TLabel
      Left = 328
      Top = 21
      Width = 6
      Height = 13
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = []
    end
    object eddesign: TEdit
      Left = 117
      Top = 18
      Width = 208
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 0
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 71
    Width = 343
    Height = 208
    Align = alClient
    ColCount = 2
    DefaultRowHeight = 15
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentColor = True
    PopupMenu = PopupMenu1
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ExplicitLeft = 4
    ExplicitTop = 75
    ExplicitHeight = 173
    ColWidths = (
      72
      265)
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 168
    object Modifier1: TMenuItem
      Caption = 'Modifier'
    end
    object Supprimer1: TMenuItem
      Caption = 'Supprimer'
    end
  end
end
