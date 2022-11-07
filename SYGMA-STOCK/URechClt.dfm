object frmRechClt: TfrmRechClt
  Left = 0
  Top = 0
  Caption = 'Recherche de client'
  ClientHeight = 275
  ClientWidth = 281
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
    Width = 281
    Height = 64
    Align = alTop
    Caption = 'Client'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 39
      Width = 31
      Height = 13
      Caption = 'Nom : '
    end
    object Label2: TLabel
      Left = 24
      Top = 17
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object edrech_nom: TEdit
      Left = 67
      Top = 36
      Width = 179
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
      OnChange = edrech_nomExit
      OnExit = edrech_nomExit
    end
    object Edit1: TEdit
      Left = 67
      Top = 14
      Width = 89
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object St_Rech: TStringGrid
    Left = 0
    Top = 64
    Width = 281
    Height = 211
    Align = alClient
    Color = clBtnFace
    ColCount = 3
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDblClick = St_RechDblClick
    OnDrawCell = St_RechDrawCell
    ColWidths = (
      61
      246
      64)
  end
end
