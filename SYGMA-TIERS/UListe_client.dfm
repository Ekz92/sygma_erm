object frmListeClient: TfrmListeClient
  Left = 0
  Top = 0
  Caption = 'Liste des clients'
  ClientHeight = 461
  ClientWidth = 649
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
  object StringGrid: TStringGrid
    Left = 0
    Top = 64
    Width = 649
    Height = 371
    Align = alClient
    ColCount = 6
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentColor = True
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    StyleElements = [seBorder]
    OnDrawCell = StringGridDrawCell
    ColWidths = (
      64
      165
      84
      130
      125
      73)
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 649
    Height = 64
    Align = alTop
    Caption = 'Recherche'
    TabOrder = 1
    object Label1: TLabel
      Left = 31
      Top = 39
      Width = 28
      Height = 13
      Caption = 'Nom :'
    end
    object Label2: TLabel
      Left = 31
      Top = 17
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object edRech: TEdit
      Left = 67
      Top = 36
      Width = 162
      Height = 21
      ParentColor = True
      TabOrder = 0
      OnChange = edRechChange
    end
  end
  object edCode: TEdit
    Left = 67
    Top = 14
    Width = 98
    Height = 21
    ParentColor = True
    TabOrder = 2
    OnChange = edCodeChange
  end
  object Panel1: TPanel
    Left = 0
    Top = 435
    Width = 649
    Height = 26
    Align = alBottom
    TabOrder = 3
    object Label3: TLabel
      Left = 440
      Top = 7
      Width = 42
      Height = 13
      Caption = 'Effectif :'
    end
    object lbEff: TLabel
      Left = 494
      Top = 7
      Width = 6
      Height = 13
      Caption = '0'
    end
  end
end
