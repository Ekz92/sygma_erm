object frmSaisieFactureVrac: TfrmSaisieFactureVrac
  Left = 0
  Top = 0
  Caption = 'Saisi de facture en Vrac'
  ClientHeight = 358
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GbClient: TGroupBox
    Left = 0
    Top = 64
    Width = 319
    Height = 110
    Align = alTop
    Caption = 'Client'
    TabOrder = 0
    object Label7: TLabel
      Left = 10
      Top = 18
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label10: TLabel
      Left = 10
      Top = 40
      Width = 28
      Height = 13
      Caption = 'Nom :'
    end
    object Label1: TLabel
      Left = 10
      Top = 62
      Width = 29
      Height = 13
      Caption = 'Tarif :'
    end
    object Label15: TLabel
      Left = 10
      Top = 84
      Width = 49
      Height = 13
      Caption = 'PdV/CDP :'
    end
    object ednomClient: TEdit
      Left = 80
      Top = 37
      Width = 235
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
    end
    object edCodeClient: TEdit
      Left = 80
      Top = 15
      Width = 130
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
    end
    object edTarif: TEdit
      Left = 80
      Top = 59
      Width = 130
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 2
    end
    object cbpdvcdp: TComboBox
      Left = 80
      Top = 81
      Width = 235
      Height = 21
      CharCase = ecUpperCase
      ParentColor = True
      TabOrder = 3
    end
  end
  object GbMagasin: TGroupBox
    Left = 0
    Top = 174
    Width = 319
    Height = 64
    Align = alTop
    BiDiMode = bdLeftToRight
    Caption = 'Magasin'
    ParentBiDiMode = False
    TabOrder = 1
    object Label2: TLabel
      Left = 10
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label8: TLabel
      Left = 10
      Top = 37
      Width = 36
      Height = 13
      Caption = 'Design.'
    end
    object edCodeMag: TEdit
      Left = 80
      Top = 12
      Width = 130
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
    end
    object eddesignation_mag: TEdit
      Left = 80
      Top = 34
      Width = 235
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
    end
    object cbFiger_mag: TCheckBox
      Left = 223
      Top = 14
      Width = 53
      Height = 17
      Caption = 'Figer '
      TabOrder = 2
    end
  end
  object Gb_Article: TGroupBox
    Left = 0
    Top = 238
    Width = 319
    Height = 83
    Align = alTop
    Caption = 'Article'
    TabOrder = 2
    object Label4: TLabel
      Left = 10
      Top = 14
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label5: TLabel
      Left = 10
      Top = 37
      Width = 43
      Height = 13
      Caption = 'Design. :'
    end
    object Label6: TLabel
      Left = 10
      Top = 57
      Width = 25
      Height = 13
      Caption = 'Qte :'
    end
    object ed_article: TEdit
      Left = 80
      Top = 11
      Width = 130
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
    end
    object eddesignation_art: TEdit
      Left = 80
      Top = 33
      Width = 235
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
    end
    object edqte: TEdit
      Left = 80
      Top = 55
      Width = 130
      Height = 21
      ParentColor = True
      TabOrder = 2
      OnChange = edqteChange
      OnKeyPress = edqteKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 327
    Width = 319
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 41
      Height = 16
      Caption = 'Total :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbMontant: TLabel
      Left = 52
      Top = 6
      Width = 8
      Height = 16
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 240
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Valider'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object gbEtete: TGroupBox
    Left = 0
    Top = 0
    Width = 319
    Height = 64
    Align = alTop
    Caption = 'En-t'#234'te'
    TabOrder = 4
    object Label9: TLabel
      Left = 10
      Top = 18
      Width = 30
      Height = 13
      Caption = 'Date :'
    end
    object Label11: TLabel
      Left = 10
      Top = 40
      Width = 53
      Height = 13
      Caption = 'Type fact :'
    end
    object eddate: TDateTimePicker
      Left = 80
      Top = 14
      Width = 130
      Height = 21
      Date = 44779.345097013890000000
      Time = 44779.345097013890000000
      ShowCheckbox = True
      Checked = False
      Color = clBtnFace
      TabOrder = 0
    end
    object cbTypeFact: TComboBox
      Left = 80
      Top = 36
      Width = 130
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Comptoir'
      Items.Strings = (
        ''
        'Comptoir'
        'Camion')
    end
  end
end