object frmAddBank: TfrmAddBank
  Left = 0
  Top = 0
  Caption = 'bank - cr'#233'ation'
  ClientHeight = 139
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Code :'
  end
  object Label2: TLabel
    Left = 14
    Top = 38
    Width = 28
    Height = 13
    Caption = 'Nom :'
  end
  object Label3: TLabel
    Left = 14
    Top = 60
    Width = 44
    Height = 13
    Caption = 'Compte :'
  end
  object Label4: TLabel
    Left = 14
    Top = 82
    Width = 33
    Height = 13
    Caption = 'Solde :'
  end
  object Bevel1: TBevel
    Left = 6
    Top = 6
    Width = 313
    Height = 106
    Shape = bsFrame
  end
  object edcodebk: TEdit
    Left = 62
    Top = 13
    Width = 121
    Height = 21
    MaxLength = 5
    ParentColor = True
    TabOrder = 0
  end
  object edNomBk: TEdit
    Left = 62
    Top = 35
    Width = 241
    Height = 21
    ParentColor = True
    TabOrder = 1
  end
  object edCompteBk: TEdit
    Left = 62
    Top = 57
    Width = 169
    Height = 21
    ParentColor = True
    TabOrder = 2
  end
  object edSoldeBk: TEdit
    Left = 62
    Top = 79
    Width = 121
    Height = 21
    ParentColor = True
    TabOrder = 3
  end
  object Button1: TButton
    Left = 168
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Cr'#233'er'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 243
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 5
  end
end
