object frmListeBonCommande: TfrmListeBonCommande
  Left = 0
  Top = 0
  Caption = 'Liste de bon de commande'
  ClientHeight = 318
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 555
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Du :'
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 20
      Height = 13
      Caption = 'Au :'
    end
    object Label3: TLabel
      Left = 149
      Top = 8
      Width = 35
      Height = 13
      Caption = 'BC N'#176' :'
    end
    object Label4: TLabel
      Left = 149
      Top = 32
      Width = 46
      Height = 13
      Caption = 'V'#233'hicule :'
    end
    object d1: TDateTimePicker
      Left = 40
      Top = 6
      Width = 97
      Height = 21
      Date = 44791.856237141200000000
      Time = 44791.856237141200000000
      TabOrder = 0
    end
    object d2: TDateTimePicker
      Left = 40
      Top = 28
      Width = 97
      Height = 21
      Date = 44791.856237141200000000
      Time = 44791.856237141200000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 478
      Top = 0
      Width = 75
      Height = 55
      Align = alRight
      Caption = 'Recherche'
      TabOrder = 2
      OnClick = Button1Click
      ExplicitLeft = 480
    end
    object ednumbc: TEdit
      Left = 206
      Top = 5
      Width = 107
      Height = 21
      ParentColor = True
      TabOrder = 3
    end
    object cbVehicule: TComboBox
      Left = 206
      Top = 29
      Width = 107
      Height = 21
      ParentColor = True
      TabOrder = 4
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 55
    Width = 553
    Height = 233
    Align = alClient
    DefaultRowHeight = 15
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentColor = True
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ExplicitWidth = 555
    ExplicitHeight = 207
    ColWidths = (
      81
      72
      181
      90
      121)
  end
  object Panel2: TPanel
    Left = 0
    Top = 288
    Width = 553
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 262
    ExplicitWidth = 555
    object Label5: TLabel
      Left = 376
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Total :'
    end
    object lbtotal: TLabel
      Left = 416
      Top = 8
      Width = 6
      Height = 13
      Caption = '0'
    end
  end
end
