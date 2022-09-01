object frmComnsultCompteClient: TfrmComnsultCompteClient
  Left = 0
  Top = 0
  Caption = 'Consltation de compte client'
  ClientHeight = 326
  ClientWidth = 423
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
    Width = 423
    Height = 73
    Align = alTop
    Caption = 'Recherche client'
    TabOrder = 0
    ExplicitWidth = 422
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label2: TLabel
      Left = 24
      Top = 46
      Width = 28
      Height = 13
      Caption = 'Nom :'
    end
    object edCode: TEdit
      Left = 87
      Top = 21
      Width = 82
      Height = 21
      ParentColor = True
      TabOrder = 0
      OnChange = edCodeChange
    end
    object edrech_nom: TEdit
      Left = 87
      Top = 43
      Width = 290
      Height = 21
      ParentColor = True
      TabOrder = 1
      OnChange = edrech_nomChange
    end
  end
  object StringGrid: TStringGrid
    Left = 0
    Top = 73
    Width = 423
    Height = 253
    Align = alClient
    ColCount = 3
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentColor = True
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = StringGridDrawCell
    ExplicitWidth = 422
    ExplicitHeight = 247
    ColWidths = (
      73
      245
      100)
  end
end
