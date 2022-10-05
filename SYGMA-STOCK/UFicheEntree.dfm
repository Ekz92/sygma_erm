object frmFicheEntree: TfrmFicheEntree
  Left = 0
  Top = 0
  Caption = 'Fiche d'#39'entr'#233'e'
  ClientHeight = 497
  ClientWidth = 555
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 504
    Height = 497
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 504
      Height = 64
      Align = alTop
      Caption = 'En-t'#234'te'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 19
        Height = 13
        Caption = 'N'#176' :'
      end
      object Label2: TLabel
        Left = 16
        Top = 38
        Width = 30
        Height = 13
        Caption = 'Date :'
      end
      object edNum: TEdit
        Left = 72
        Top = 13
        Width = 121
        Height = 21
        NumbersOnly = True
        ParentColor = True
        TabOrder = 0
      end
      object cbdate: TDateTimePicker
        Left = 72
        Top = 35
        Width = 121
        Height = 21
        Date = 44798.377164432870000000
        Time = 44798.377164432870000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 64
      Width = 504
      Height = 89
      Align = alTop
      Caption = 'Client'
      TabOrder = 1
      object Label3: TLabel
        Left = 16
        Top = 18
        Width = 32
        Height = 13
        Caption = 'Code :'
      end
      object Label4: TLabel
        Left = 16
        Top = 40
        Width = 28
        Height = 13
        Caption = 'Nom :'
      end
      object Label5: TLabel
        Left = 16
        Top = 62
        Width = 46
        Height = 13
        Caption = 'Vehicule :'
      end
      object edCodeclt: TEdit
        Left = 72
        Top = 15
        Width = 121
        Height = 21
        ParentColor = True
        ReadOnly = True
        TabOrder = 0
        OnDblClick = edCodecltDblClick
      end
      object edNomClt: TEdit
        Left = 72
        Top = 37
        Width = 353
        Height = 21
        ParentColor = True
        ReadOnly = True
        TabOrder = 1
      end
      object edNomVeh: TComboBox
        Left = 72
        Top = 59
        Width = 246
        Height = 21
        ParentColor = True
        TabOrder = 2
        OnChange = edNomVehCloseUp
        OnCloseUp = edNomVehCloseUp
      end
      object cbMatVeh: TEdit
        Left = 319
        Top = 59
        Width = 106
        Height = 21
        ParentColor = True
        ReadOnly = True
        TabOrder = 3
      end
    end
    object st_ficheEntree: TStringGrid
      Left = 0
      Top = 153
      Width = 504
      Height = 344
      Align = alClient
      ColCount = 6
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs]
      ParentColor = True
      ScrollBars = ssVertical
      TabOrder = 2
      StyleElements = [seBorder]
      OnDrawCell = st_ficheEntreeDrawCell
      OnKeyPress = st_ficheEntreeKeyPress
      OnSelectCell = st_ficheEntreeSelectCell
      ColWidths = (
        2
        74
        262
        48
        52
        55)
    end
  end
  object Panel3: TPanel
    Left = 504
    Top = 0
    Width = 51
    Height = 497
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 51
      Height = 42
      Hint = 'Revenir au lot pr'#233'cedent'
      Align = alTop
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      ExplicitWidth = 75
    end
    object SpeedButton2: TSpeedButton
      Left = 0
      Top = 42
      Width = 51
      Height = 42
      Hint = 'Passer au lot suivant'
      Align = alTop
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      ExplicitWidth = 62
    end
    object btSave: TButton
      Left = 0
      Top = 84
      Width = 51
      Height = 42
      Hint = 'Enregistrer sans cloturer le lot'
      Align = alTop
      Caption = 'Enregistrer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      WordWrap = True
      OnClick = btSaveClick
    end
    object btAnnuler: TButton
      Left = 0
      Top = 455
      Width = 51
      Height = 42
      Align = alBottom
      Caption = 'Annuler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btAnnulerClick
    end
    object btClot: TButton
      Left = 0
      Top = 413
      Width = 51
      Height = 42
      Hint = 'Enregistrer et passer au lot suivant'
      Align = alBottom
      Caption = 'Cl'#244'turer ce lot'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      WordWrap = True
      OnClick = btClotClick
    end
  end
end
