object frmCreanceClient: TfrmCreanceClient
  Left = 0
  Top = 0
  Caption = 'Cr'#233'ance Client'
  ClientHeight = 201
  ClientWidth = 443
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
    Left = 16
    Top = 16
    Width = 30
    Height = 13
    Caption = 'Date :'
  end
  object Label2: TLabel
    Left = 16
    Top = 39
    Width = 34
    Height = 13
    Caption = 'Client :'
  end
  object Label3: TLabel
    Left = 16
    Top = 61
    Width = 57
    Height = 13
    Caption = 'Type Cr'#233'a :'
  end
  object Label4: TLabel
    Left = 16
    Top = 83
    Width = 36
    Height = 13
    Caption = 'Libell'#233' :'
  end
  object Label5: TLabel
    Left = 16
    Top = 105
    Width = 47
    Height = 13
    Caption = 'Montant :'
  end
  object cdate: TDateTimePicker
    Left = 96
    Top = 14
    Width = 105
    Height = 21
    Date = 44983.286676388890000000
    Time = 44983.286676388890000000
    Color = clBtnFace
    ParentColor = True
    TabOrder = 0
  end
  object edClient: TEdit
    Left = 96
    Top = 36
    Width = 202
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 1
  end
  object cTypCrea: TComboBox
    Left = 96
    Top = 58
    Width = 202
    Height = 21
    Style = csDropDownList
    ParentColor = True
    TabOrder = 2
  end
  object edLibelleCrea: TEdit
    Left = 96
    Top = 80
    Width = 333
    Height = 21
    ParentColor = True
    TabOrder = 3
  end
  object edmontant: TEdit
    Left = 96
    Top = 102
    Width = 107
    Height = 21
    ParentColor = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 16
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Valider'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 97
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 6
  end
end
