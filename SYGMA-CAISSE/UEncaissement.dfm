object frmEncaissement: TfrmEncaissement
  Left = 0
  Top = 0
  Caption = 'Encaissement'
  ClientHeight = 207
  ClientWidth = 414
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
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 401
    Height = 169
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 13
    Top = 17
    Width = 30
    Height = 13
    Caption = 'Date :'
  end
  object Label2: TLabel
    Left = 13
    Top = 63
    Width = 32
    Height = 13
    Caption = 'Pi'#232'ce :'
  end
  object Label3: TLabel
    Left = 13
    Top = 81
    Width = 36
    Height = 13
    Caption = 'Libell'#233' :'
  end
  object Label5: TLabel
    Left = 12
    Top = 147
    Width = 47
    Height = 13
    Caption = 'Montant :'
  end
  object Label4: TLabel
    Left = 13
    Top = 40
    Width = 38
    Height = 13
    Caption = 'Caisse :'
  end
  object DateEnc: TDateTimePicker
    Left = 78
    Top = 14
    Width = 80
    Height = 21
    Date = 44662.923826331020000000
    Time = 44662.923826331020000000
    Color = clBtnFace
    ParentColor = True
    TabOrder = 0
  end
  object edPiece: TEdit
    Left = 78
    Top = 60
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    ParentColor = True
    TabOrder = 1
  end
  object cbCaisse: TComboBox
    Left = 78
    Top = 37
    Width = 145
    Height = 21
    ParentColor = True
    TabOrder = 2
  end
  object edMontant: TEdit
    Left = 78
    Top = 144
    Width = 145
    Height = 21
    Alignment = taRightJustify
    ParentColor = True
    TabOrder = 3
    OnKeyPress = edMontantKeyPress
  end
  object mLibelle: TMemo
    Left = 78
    Top = 83
    Width = 321
    Height = 59
    Lines.Strings = (
      'Memo1')
    ParentColor = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 259
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Valider'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 334
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 6
    OnClick = Button2Click
  end
end
