object frmAdd_Type_article: TfrmAdd_Type_article
  Left = 0
  Top = 0
  Caption = 'Ajouter type article'
  ClientHeight = 268
  ClientWidth = 346
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
  object StringGrid1: TStringGrid
    Left = 0
    Top = 71
    Width = 346
    Height = 197
    Align = alClient
    Color = clBtnFace
    ColCount = 2
    DefaultRowHeight = 15
    FixedCols = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      82
      258)
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 346
    Height = 71
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 63
      Height = 13
      Caption = 'Type article :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 195
      Top = 41
      Width = 69
      Height = 25
      Caption = 'Ajouter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 265
      Top = 41
      Width = 69
      Height = 25
      Caption = 'Annuler'
      OnClick = SpeedButton2Click
    end
    object edType_art: TEdit
      Left = 93
      Top = 16
      Width = 241
      Height = 21
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 168
    Top = 136
    object Modifier1: TMenuItem
      Caption = 'Modifier'
    end
    object Supprimer1: TMenuItem
      Caption = 'Supprimer'
    end
  end
end
