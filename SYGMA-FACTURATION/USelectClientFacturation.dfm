object frmSelectClientFacturation: TfrmSelectClientFacturation
  Left = 0
  Top = 0
  Caption = 'Selectionner un client'
  ClientHeight = 291
  ClientWidth = 424
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
    Width = 424
    Height = 64
    Align = alTop
    Caption = 'Recherche Client'
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 17
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label2: TLabel
      Left = 32
      Top = 39
      Width = 28
      Height = 13
      Caption = 'Nom :'
    end
    object edcodeClt: TEdit
      Left = 89
      Top = 14
      Width = 72
      Height = 21
      ParentColor = True
      TabOrder = 0
      OnChange = edcodeCltExit
      OnExit = edcodeCltExit
    end
    object edNomClt: TEdit
      Left = 89
      Top = 36
      Width = 189
      Height = 21
      ParentColor = True
      TabOrder = 1
      OnChange = edNomCltExit
      OnExit = edNomCltExit
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 64
    Width = 424
    Height = 227
    Align = alClient
    ColCount = 4
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
    ParentColor = True
    ScrollBars = ssHorizontal
    TabOrder = 1
    StyleElements = [seBorder]
    OnDblClick = StringGrid1DblClick
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      89
      177
      77
      74)
  end
end
