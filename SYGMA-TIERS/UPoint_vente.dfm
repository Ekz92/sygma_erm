object frmPointDeVente: TfrmPointDeVente
  Left = 0
  Top = 0
  Caption = 'Point de vente'
  ClientHeight = 180
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 3
    Top = 3
    Width = 384
    Height = 174
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 21
    Top = 37
    Width = 70
    Height = 13
    Caption = 'Nom du point :'
  end
  object Label2: TLabel
    Left = 21
    Top = 59
    Width = 31
    Height = 13
    Caption = 'Zone :'
  end
  object Label4: TLabel
    Left = 21
    Top = 78
    Width = 70
    Height = 13
    Caption = 'Commentaire :'
  end
  object Label3: TLabel
    Left = 21
    Top = 15
    Width = 34
    Height = 13
    Caption = 'Client :'
  end
  object Label5: TLabel
    Left = 0
    Top = 0
    Width = 30
    Height = 13
    Caption = '          '
  end
  object Label6: TLabel
    Left = 357
    Top = 167
    Width = 33
    Height = 13
    Caption = '           '
  end
  object ednomPoint: TEdit
    Left = 125
    Top = 34
    Width = 256
    Height = 21
    ParentColor = True
    TabOrder = 0
  end
  object cbZone: TComboBox
    Left = 125
    Top = 56
    Width = 256
    Height = 21
    Style = csDropDownList
    ParentColor = True
    TabOrder = 1
  end
  object mComment: TMemo
    Left = 125
    Top = 78
    Width = 256
    Height = 68
    ParentColor = True
    TabOrder = 2
  end
  object cbClient: TComboBox
    Left = 125
    Top = 12
    Width = 169
    Height = 21
    ParentColor = True
    TabOrder = 3
    OnChange = cbClientCloseUp
    OnCloseUp = cbClientCloseUp
  end
  object edCodeClient: TEdit
    Left = 295
    Top = 12
    Width = 86
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 230
    Top = 149
    Width = 75
    Height = 24
    Caption = 'Cr'#233'er'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 306
    Top = 149
    Width = 75
    Height = 24
    Caption = 'Annuler'
    TabOrder = 6
  end
end
