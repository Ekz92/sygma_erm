object frmEntreeCancListe: TfrmEntreeCancListe
  Left = 0
  Top = 0
  Caption = 'Liste des entr'#233'es annul'#233'es'
  ClientHeight = 340
  ClientWidth = 504
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
    Width = 504
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 497
  end
  object Panel2: TPanel
    Left = 0
    Top = 317
    Width = 504
    Height = 23
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 257
    ExplicitWidth = 497
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 57
    Width = 504
    Height = 260
    Align = alClient
    DefaultRowHeight = 15
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
    TabOrder = 2
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      73
      77
      208
      74
      64)
  end
end
