object frmMagasin_liste: TfrmMagasin_liste
  Left = 0
  Top = 0
  Caption = 'Liste magasin'
  ClientHeight = 282
  ClientWidth = 368
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
  object Label4: TLabel
    Left = 354
    Top = 219
    Width = 30
    Height = 13
    Caption = '          '
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 368
    Height = 79
    Align = alTop
    Caption = 'Recherche'
    TabOrder = 0
    ExplicitLeft = 14
    ExplicitTop = 9
    ExplicitWidth = 365
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 63
      Height = 13
      Caption = 'D'#233'signation :'
    end
    object edcode: TRichEdit
      Left = 112
      Top = 20
      Width = 118
      Height = 24
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object edDesign: TRichEdit
      Left = 112
      Top = 46
      Width = 241
      Height = 24
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 79
    Width = 368
    Height = 176
    Align = alClient
    ColCount = 2
    Ctl3D = True
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ExplicitLeft = 14
    ExplicitTop = 92
    ExplicitWidth = 365
    ExplicitHeight = 108
    ColWidths = (
      95
      268)
  end
  object Panel1: TPanel
    Left = 0
    Top = 255
    Width = 368
    Height = 27
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 317
    ExplicitWidth = 447
    object Button1: TButton
      Left = 293
      Top = 0
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Imprimer'
      TabOrder = 0
      ExplicitLeft = 372
      ExplicitTop = 1
      ExplicitHeight = 25
    end
  end
end
