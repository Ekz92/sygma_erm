object frmRehCltJournal: TfrmRehCltJournal
  Left = 0
  Top = 0
  Caption = 'Recherche Client'
  ClientHeight = 279
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StRechClient: TStringGrid
    Left = 0
    Top = 51
    Width = 291
    Height = 228
    Align = alClient
    Color = clBtnFace
    ColCount = 2
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 0
    StyleElements = [seBorder]
    OnDblClick = StRechClientDblClick
    OnDrawCell = StRechClientDrawCell
    ColWidths = (
      73
      215)
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 291
    Height = 51
    Align = alTop
    Caption = 'Recherche'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Nom : '
    end
    object edrech_nom: TEdit
      Left = 58
      Top = 21
      Width = 161
      Height = 21
      ParentColor = True
      TabOrder = 0
      OnChange = edrech_nomChange
    end
  end
end
