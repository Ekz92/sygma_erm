object frmParamNumFact: TfrmParamNumFact
  Left = 0
  Top = 0
  Caption = 'Param'#233'trage Num'#233'ro Facture'
  ClientHeight = 262
  ClientWidth = 620
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
  object Bevel2: TBevel
    Left = 351
    Top = 81
    Width = 265
    Height = 49
    Shape = bsFrame
  end
  object Bevel1: TBevel
    Left = 2
    Top = 3
    Width = 346
    Height = 258
  end
  object Label3: TLabel
    Left = 356
    Top = 98
    Width = 67
    Height = 13
    Caption = 'Pr'#233'fixe fact. :'
  end
  object StringGrid1: TStringGrid
    Left = 6
    Top = 8
    Width = 337
    Height = 249
    ColCount = 3
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentColor = True
    ParentFont = False
    PopupMenu = PopupMenu1
    ScrollBars = ssNone
    TabOrder = 0
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      78
      177
      75)
  end
  object GroupBox1: TGroupBox
    Left = 351
    Top = 3
    Width = 265
    Height = 77
    Caption = 'Magasin'
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label2: TLabel
      Left = 5
      Top = 46
      Width = 63
      Height = 13
      Caption = 'D'#233'signation :'
    end
    object edCodeMag: TEdit
      Left = 76
      Top = 21
      Width = 121
      Height = 21
      ParentColor = True
      TabOrder = 0
    end
    object edDesignationMag: TEdit
      Left = 76
      Top = 43
      Width = 182
      Height = 21
      ParentColor = True
      TabOrder = 1
    end
  end
  object edPrefixe: TEdit
    Left = 427
    Top = 95
    Width = 182
    Height = 21
    ParentColor = True
    TabOrder = 2
  end
  object Button1: TButton
    Left = 452
    Top = 138
    Width = 75
    Height = 25
    Caption = 'Valider'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 536
    Top = 138
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 4
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 96
    object Supprimer1: TMenuItem
      Caption = 'Supprimer'
      OnClick = Supprimer1Click
    end
  end
end
