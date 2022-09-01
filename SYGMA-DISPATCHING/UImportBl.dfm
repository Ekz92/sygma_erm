object frmImportBl: TfrmImportBl
  Left = 0
  Top = 0
  Caption = 'Import de BL'
  ClientHeight = 521
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 597
    Top = 0
    Width = 64
    Height = 521
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 629
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 64
      Height = 38
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
      ExplicitWidth = 94
    end
    object SpeedButton2: TSpeedButton
      Left = 0
      Top = 38
      Width = 64
      Height = 36
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
      ExplicitTop = 42
      ExplicitWidth = 75
    end
    object Button5: TButton
      Left = 0
      Top = 74
      Width = 64
      Height = 39
      Hint = 'Enregistrer sans cloturer le lot'
      Align = alTop
      Caption = 'Enregistr'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitWidth = 94
    end
    object Button6: TButton
      Left = 0
      Top = 113
      Width = 64
      Height = 39
      Align = alTop
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
      ExplicitWidth = 94
    end
    object Button7: TButton
      Left = 0
      Top = 152
      Width = 64
      Height = 40
      Hint = 'Enregistrer et passer au lot suivant'
      Align = alTop
      Caption = 'Enregistrer et cl'#244'turer'
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
      ExplicitWidth = 94
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 597
    Height = 521
    Align = alClient
    BevelKind = bkSoft
    TabOrder = 1
    ExplicitTop = -32
    ExplicitWidth = 660
    ExplicitHeight = 553
    object GroupBox4: TGroupBox
      Left = 1
      Top = 1
      Width = 591
      Height = 44
      Align = alTop
      Caption = 'Chargement'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 654
      object Label14: TLabel
        Left = 8
        Top = 17
        Width = 40
        Height = 13
        Caption = 'Source :'
      end
      object Label15: TLabel
        Left = 309
        Top = 17
        Width = 22
        Height = 13
        Caption = 'Lot :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbSource: TComboBox
        Left = 55
        Top = 14
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        ParentColor = True
        TabOrder = 0
        Text = 'Production'
        Items.Strings = (
          'Production'
          'Fournisseur')
      end
      object edLot: TEdit
        Left = 336
        Top = 14
        Width = 169
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 45
      Width = 591
      Height = 31
      Align = alTop
      BevelOuter = bvSpace
      TabOrder = 1
      ExplicitWidth = 654
      object Label1: TLabel
        Left = 283
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Classeur :'
      end
      object SpeedButton4: TSpeedButton
        Left = 517
        Top = 4
        Width = 47
        Height = 22
        Caption = 'Etape 2'
        Flat = True
      end
      object SpeedButton3: TSpeedButton
        Left = 56
        Top = 4
        Width = 184
        Height = 24
        Caption = 'Importer le fichier Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox1: TComboBox
        Left = 336
        Top = 5
        Width = 170
        Height = 21
        Style = csDropDownList
        ParentColor = True
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 76
      Width = 591
      Height = 66
      Align = alTop
      Caption = '    LIVREUR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitWidth = 654
      object Label7: TLabel
        Left = 8
        Top = 18
        Width = 40
        Height = 13
        Caption = 'Livreur :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 300
        Top = 42
        Width = 33
        Height = 13
        Caption = 'Chauf:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbChauf: TLabel
        Left = 419
        Top = 41
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 299
        Top = 18
        Width = 32
        Height = 13
        Caption = 'Pi'#232'ce :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 41
        Width = 42
        Height = 13
        Caption = 'Camion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edCodeLivreur: TEdit
        Left = 55
        Top = 15
        Width = 79
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
      end
      object edNomLivreur: TEdit
        Left = 135
        Top = 15
        Width = 159
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 1
      end
      object edChauf: TEdit
        Left = 336
        Top = 38
        Width = 79
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edPiece: TEdit
        Left = 336
        Top = 15
        Width = 169
        Height = 21
        CharCase = ecUpperCase
        ParentColor = True
        TabOrder = 3
      end
      object edNumMat: TEdit
        Left = 55
        Top = 38
        Width = 79
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object edNomCamion: TEdit
        Left = 135
        Top = 38
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object edPtac: TEdit
        Left = 232
        Top = 38
        Width = 62
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 142
      Width = 591
      Height = 64
      Align = alTop
      Caption = '   CLIENT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ExplicitWidth = 654
      object Label12: TLabel
        Left = 8
        Top = 16
        Width = 34
        Height = 13
        Caption = 'Client :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 300
        Top = 39
        Width = 31
        Height = 13
        Caption = 'Zone :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 8
        Top = 39
        Width = 31
        Height = 13
        Caption = 'Point :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edcodeClt: TEdit
        Left = 55
        Top = 13
        Width = 79
        Height = 21
        CharCase = ecUpperCase
        ParentColor = True
        ReadOnly = True
        TabOrder = 0
      end
      object edNomClt: TEdit
        Left = 135
        Top = 13
        Width = 159
        Height = 21
        CharCase = ecUpperCase
        ParentColor = True
        TabOrder = 1
      end
      object edzone: TEdit
        Left = 337
        Top = 36
        Width = 124
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edPrixZone: TEdit
        Left = 462
        Top = 36
        Width = 44
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object cbPoint: TComboBox
        Left = 55
        Top = 36
        Width = 239
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 4
      end
    end
    object StringGrid1: TStringGrid
      Left = 1
      Top = 206
      Width = 591
      Height = 272
      Align = alClient
      ColCount = 10
      DefaultRowHeight = 18
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
      ParentColor = True
      TabOrder = 4
      StyleElements = [seBorder]
      ExplicitWidth = 654
      ExplicitHeight = 304
      ColWidths = (
        79
        116
        112
        277
        64
        64
        64
        64
        64
        64)
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 478
      Width = 591
      Height = 10
      Align = alBottom
      TabOrder = 5
      ExplicitTop = 510
      ExplicitWidth = 654
    end
    object Panel4: TPanel
      Left = 1
      Top = 488
      Width = 591
      Height = 28
      Align = alBottom
      TabOrder = 6
      ExplicitTop = 520
      ExplicitWidth = 654
      object label11: TLabel
        Left = 5
        Top = 6
        Width = 48
        Height = 13
        Caption = 'Tot Bout :'
      end
      object lbTbout: TLabel
        Left = 59
        Top = 6
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Label5: TLabel
        Left = 87
        Top = 6
        Width = 38
        Height = 13
        Caption = 'Tot Kg :'
      end
      object lbTkilo: TLabel
        Left = 132
        Top = 6
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Label10: TLabel
        Left = 176
        Top = 6
        Width = 47
        Height = 13
        Caption = 'Montant :'
      end
      object lbMontant: TLabel
        Left = 225
        Top = 6
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Label6: TLabel
        Left = 299
        Top = 6
        Width = 38
        Height = 13
        Caption = 'Chgmt :'
      end
      object lbChargmt: TLabel
        Left = 340
        Top = 6
        Width = 6
        Height = 13
        Caption = '0'
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 264
    Top = 288
  end
end
