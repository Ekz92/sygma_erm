object frmListe_chargement: TfrmListe_chargement
  Left = 0
  Top = 0
  Caption = 'Liste de chargement'
  ClientHeight = 295
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 56
    Width = 483
    Height = 214
    Align = alClient
    Color = clBtnFace
    ColCount = 7
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ScrollBars = ssNone
    TabOrder = 0
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ExplicitTop = 71
    ExplicitWidth = 616
    ExplicitHeight = 275
    ColWidths = (
      67
      84
      60
      49
      89
      76
      49)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 483
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 411
      Top = 0
      Width = 72
      Height = 56
      Align = alRight
      Caption = 'Recherche'
      Flat = True
      OnClick = SpeedButton2Click
      ExplicitLeft = 544
      ExplicitHeight = 71
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 181
      Height = 56
      Align = alLeft
      Caption = 'P'#233'riode'
      TabOrder = 0
      ExplicitHeight = 70
      object Label1: TLabel
        Left = 16
        Top = 17
        Width = 36
        Height = 13
        Caption = 'D'#233'but :'
      end
      object Label2: TLabel
        Left = 16
        Top = 33
        Width = 21
        Height = 13
        Caption = 'Fin :'
      end
      object d1: TDateTimePicker
        Left = 71
        Top = 11
        Width = 106
        Height = 21
        Date = 43522.633353761570000000
        Time = 43522.633353761570000000
        Color = clBtnFace
        ParentColor = True
        TabOrder = 0
      end
      object d2: TDateTimePicker
        Left = 71
        Top = 33
        Width = 106
        Height = 21
        Date = 43522.633353761570000000
        Time = 43522.633353761570000000
        Color = clBtnFace
        ParentColor = True
        TabOrder = 1
      end
    end
    object gbRecherche: TGroupBox
      Left = 181
      Top = 0
      Width = 189
      Height = 56
      Align = alLeft
      Caption = 'Recherche'
      TabOrder = 1
      ExplicitHeight = 70
      object Label5: TLabel
        Left = 16
        Top = 19
        Width = 81
        Height = 13
        Caption = 'N'#176' Chargement :'
      end
      object edNumChargement: TEdit
        Left = 102
        Top = 16
        Width = 81
        Height = 21
        ParentColor = True
        TabOrder = 0
        OnKeyPress = edNumChargementKeyPress
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 270
    Width = 483
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 346
    ExplicitWidth = 616
    object SpeedButton1: TSpeedButton
      Left = 415
      Top = 0
      Width = 68
      Height = 25
      Align = alRight
      Caption = 'Imprimer'
      ExplicitLeft = 414
    end
  end
end
