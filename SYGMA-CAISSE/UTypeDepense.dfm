object frmTypeDepense: TfrmTypeDepense
  Left = 0
  Top = 0
  Caption = 'Cat'#233'gorie de d'#233'penses'
  ClientHeight = 258
  ClientWidth = 358
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 358
    Height = 90
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 63
      Height = 13
      Caption = 'D'#233'signation :'
    end
    object edCode: TEdit
      Left = 92
      Top = 13
      Width = 121
      Height = 21
      MaxLength = 6
      ParentColor = True
      TabOrder = 0
    end
    object edDesignation: TEdit
      Left = 92
      Top = 36
      Width = 253
      Height = 21
      ParentColor = True
      TabOrder = 1
    end
    object Button1: TButton
      Left = 194
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Ajouter'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 270
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Annuler'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 90
    Width = 358
    Height = 168
    Align = alClient
    ColCount = 2
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goRowSelect]
    ParentColor = True
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      77
      275)
  end
end