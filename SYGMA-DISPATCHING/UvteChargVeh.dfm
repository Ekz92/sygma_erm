object frmvteChargVeh: TfrmvteChargVeh
  Left = 0
  Top = 0
  Caption = 'Chargement de camions'
  ClientHeight = 499
  ClientWidth = 557
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
  object Splitter1: TSplitter
    Left = 507
    Top = 0
    Height = 499
    ExplicitLeft = 592
    ExplicitTop = 184
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 507
    Height = 499
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox4: TGroupBox
      Left = 0
      Top = 0
      Width = 507
      Height = 65
      Align = alTop
      Caption = 'Chargement'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label14: TLabel
        Left = 8
        Top = 17
        Width = 40
        Height = 13
        Caption = 'Source :'
      end
      object Label15: TLabel
        Left = 392
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
      object Label16: TLabel
        Left = 8
        Top = 40
        Width = 30
        Height = 13
        Caption = 'Date :'
      end
      object cbSource: TComboBox
        Left = 55
        Top = 14
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 1
        ParentColor = True
        TabOrder = 0
        Text = 'Fournisseur'
        Items.Strings = (
          'Production'
          'Fournisseur')
      end
      object edLot: TEdit
        Left = 419
        Top = 14
        Width = 83
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
      object DateCharg: TDateTimePicker
        Left = 55
        Top = 37
        Width = 145
        Height = 21
        Date = 36891.332817222220000000
        Time = 36891.332817222220000000
        ShowCheckbox = True
        Color = clBtnFace
        DoubleBuffered = False
        ParentColor = True
        ParentDoubleBuffered = False
        TabOrder = 2
      end
      object rgType: TRadioGroup
        Left = 204
        Top = 8
        Width = 141
        Height = 50
        Caption = 'Type'
        Items.Strings = (
          'Transporteur'
          'Achat')
        TabOrder = 3
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 65
      Width = 507
      Height = 64
      Align = alTop
      Caption = '    LIVREUR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
        Left = 298
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
      object Label1: TLabel
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
        ReadOnly = True
        TabOrder = 0
        OnDblClick = edCodeLivreurDblClick
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
        ReadOnly = True
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
        OnDblClick = edChaufDblClick
      end
      object edPiece: TEdit
        Left = 336
        Top = 15
        Width = 169
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
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
        OnDblClick = edNumMatDblClick
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
      Left = 0
      Top = 129
      Width = 507
      Height = 62
      Align = alTop
      Caption = '   CLIENT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
      object Label2: TLabel
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
        OnDblClick = edcodeCltDblClick
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
        Left = 336
        Top = 36
        Width = 125
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
        OnChange = cbPointCloseUp
        OnCloseUp = cbPointCloseUp
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 191
      Width = 507
      Height = 39
      Align = alTop
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label5: TLabel
        Left = 8
        Top = 17
        Width = 32
        Height = 13
        Caption = 'Code :'
      end
      object Label6: TLabel
        Left = 138
        Top = 17
        Width = 25
        Height = 13
        Caption = 'Des :'
      end
      object Label8: TLabel
        Left = 421
        Top = 17
        Width = 25
        Height = 13
        Caption = 'Qte :'
      end
      object v_edcodeArt: TEdit
        Left = 55
        Top = 14
        Width = 79
        Height = 21
        ParentColor = True
        TabOrder = 0
        OnDblClick = v_edcodeArtDblClick
      end
      object v_edDesign: TEdit
        Left = 168
        Top = 14
        Width = 249
        Height = 21
        ParentColor = True
        ReadOnly = True
        TabOrder = 1
      end
      object edqte: TEdit
        Left = 450
        Top = 14
        Width = 55
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        ParentColor = True
        TabOrder = 2
        OnKeyPress = edqteKeyPress
      end
    end
    object StringGrid1: TStringGrid
      Left = 0
      Top = 230
      Width = 507
      Height = 243
      Align = alClient
      ColCount = 6
      DefaultRowHeight = 18
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentColor = True
      PopupMenu = PopupMenu1
      TabOrder = 4
      StyleElements = [seBorder]
      OnDrawCell = StringGrid1DrawCell
      ColWidths = (
        64
        252
        72
        67
        64
        64)
    end
    object Panel2: TPanel
      Left = 0
      Top = 473
      Width = 507
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 5
      object label11: TLabel
        Left = 8
        Top = 6
        Width = 48
        Height = 13
        Caption = 'Tot Bout :'
      end
      object lbTbout: TLabel
        Left = 62
        Top = 6
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Label4: TLabel
        Left = 86
        Top = 6
        Width = 38
        Height = 13
        Caption = 'Tot Kg :'
      end
      object lbTkilo: TLabel
        Left = 131
        Top = 6
        Width = 6
        Height = 13
        Caption = '0'
      end
      object lbMontant: TLabel
        Left = 219
        Top = 6
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Label10: TLabel
        Left = 170
        Top = 6
        Width = 47
        Height = 13
        Caption = 'Montant :'
      end
    end
  end
  object Panel3: TPanel
    Left = 510
    Top = 0
    Width = 47
    Height = 499
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 47
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
      OnClick = SpeedButton1Click
      ExplicitWidth = 75
    end
    object SpeedButton2: TSpeedButton
      Left = 0
      Top = 42
      Width = 47
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
      OnClick = SpeedButton2Click
      ExplicitWidth = 62
    end
    object Button3: TButton
      Left = 0
      Top = 84
      Width = 47
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
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 0
      Top = 126
      Width = 47
      Height = 42
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
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 0
      Top = 168
      Width = 47
      Height = 42
      Hint = 'Enregistrer et passer au lot suivant'
      Align = alTop
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
      OnClick = Button2Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 240
    object Supprimer1: TMenuItem
      Caption = 'Supprimer'
    end
  end
end
