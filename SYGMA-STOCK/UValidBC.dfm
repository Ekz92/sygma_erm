object frmValideBc: TfrmValideBc
  Left = 0
  Top = 0
  Caption = 'Validation de Bon de commande'
  ClientHeight = 160
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 47
    Height = 13
    Caption = 'Num BC : '
  end
  object Label2: TLabel
    Left = 40
    Top = 68
    Width = 46
    Height = 13
    Caption = 'Vehicule :'
  end
  object Label3: TLabel
    Left = 40
    Top = 46
    Width = 46
    Height = 13
    Caption = 'Date BC :'
  end
  object Label4: TLabel
    Left = 40
    Top = 90
    Width = 61
    Height = 13
    Caption = 'Destination :'
  end
  object edNumBC: TEdit
    Left = 131
    Top = 21
    Width = 121
    Height = 21
    ParentColor = True
    TabOrder = 0
  end
  object edDateBC: TEdit
    Left = 131
    Top = 43
    Width = 121
    Height = 21
    ParentColor = True
    TabOrder = 1
  end
  object edVehicule: TEdit
    Left = 131
    Top = 65
    Width = 121
    Height = 21
    ParentColor = True
    TabOrder = 2
  end
  object cbDestination: TComboBox
    Left = 131
    Top = 87
    Width = 121
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    Items.Strings = (
      'D'#233'p'#244't'
      'Camion')
  end
  object Button1: TButton
    Left = 69
    Top = 122
    Width = 75
    Height = 25
    Caption = 'Valider'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 179
    Top = 122
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 5
    OnClick = Button2Click
  end
end