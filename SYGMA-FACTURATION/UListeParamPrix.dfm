object frmListeTarif: TfrmListeTarif
  Left = 0
  Top = 0
  Caption = 'Liste de tarifs'
  ClientHeight = 295
  ClientWidth = 548
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
    Top = 41
    Width = 548
    Height = 254
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 422
    ExplicitHeight = 230
    object StringGrid1: TStringGrid
      Left = 0
      Top = 0
      Width = 548
      Height = 254
      Align = alClient
      ColCount = 3
      DefaultRowHeight = 15
      FixedColor = clOlive
      FixedCols = 0
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      ExplicitWidth = 422
      ExplicitHeight = 230
      ColWidths = (
        179
        281
        81)
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 548
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 422
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 29
      Height = 13
      Caption = 'Tarif :'
    end
    object cbTarif: TComboBox
      Left = 58
      Top = 9
      Width = 207
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnCloseUp = cbTarifCloseUp
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 129
    object Modifierleprix1: TMenuItem
      Caption = 'Modifier le prix'
      OnClick = Modifierleprix1Click
    end
  end
end
