object frmTransfertBkCaisse: TfrmTransfertBkCaisse
  Left = 0
  Top = 0
  Caption = 'Transfert de fond bk et Caisse'
  ClientHeight = 165
  ClientWidth = 282
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
  object Bevel1: TBevel
    Left = 4
    Top = 2
    Width = 276
    Height = 130
  end
  object Label1: TLabel
    Left = 12
    Top = 18
    Width = 30
    Height = 13
    Caption = 'Sens :'
  end
  object Label2: TLabel
    Left = 12
    Top = 40
    Width = 30
    Height = 13
    Caption = 'Bank :'
  end
  object Label3: TLabel
    Left = 12
    Top = 62
    Width = 58
    Height = 13
    Caption = 'Code Bank :'
  end
  object Label4: TLabel
    Left = 12
    Top = 84
    Width = 24
    Height = 13
    Caption = 'RIB :'
  end
  object Label5: TLabel
    Left = 12
    Top = 106
    Width = 50
    Height = 13
    Caption = 'Montant : '
  end
  object cbSens: TComboBox
    Left = 75
    Top = 15
    Width = 199
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'Caisse vers Bank'
      'Bank vers Caisse')
  end
  object cbBk: TComboBox
    Left = 75
    Top = 37
    Width = 199
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    OnCloseUp = cbBkCloseUp
  end
  object edCode_bk: TEdit
    Left = 75
    Top = 59
    Width = 121
    Height = 21
    ParentColor = True
    TabOrder = 2
  end
  object edRIB: TEdit
    Left = 75
    Top = 81
    Width = 121
    Height = 21
    ParentColor = True
    TabOrder = 3
  end
  object edMontant: TEdit
    Left = 75
    Top = 103
    Width = 121
    Height = 21
    ParentColor = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 128
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Valider'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 205
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 6
  end
end