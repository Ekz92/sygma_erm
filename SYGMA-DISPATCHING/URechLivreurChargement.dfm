object frmRechLivreurChargement: TfrmRechLivreurChargement
  Left = 0
  Top = 0
  Caption = 'Recherche de livreur'
  ClientHeight = 239
  ClientWidth = 303
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
  object Label3: TLabel
    Left = 0
    Top = 0
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 444
    Top = 188
    Width = 3
    Height = 13
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 303
    Height = 59
    Align = alTop
    Caption = 'Recherche'
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 304
    object Label1: TLabel
      Left = 24
      Top = 18
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label2: TLabel
      Left = 24
      Top = 38
      Width = 28
      Height = 13
      Caption = 'Nom :'
    end
    object edCode: TEdit
      Left = 75
      Top = 16
      Width = 121
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object edNom: TEdit
      Left = 75
      Top = 36
      Width = 195
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object St_Livreur: TStringGrid
    Left = 0
    Top = 59
    Width = 303
    Height = 180
    Align = alClient
    Color = clBtnFace
    ColCount = 2
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goRowSelect]
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDblClick = St_LivreurDblClick
    OnDrawCell = St_LivreurDrawCell
    ExplicitWidth = 304
    ExplicitHeight = 168
    ColWidths = (
      99
      198)
  end
end
