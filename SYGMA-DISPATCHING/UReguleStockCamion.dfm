object frmReguleStockCamion: TfrmReguleStockCamion
  Left = 0
  Top = 0
  Caption = 'R'#233'gulation du stock Camion'
  ClientHeight = 201
  ClientWidth = 447
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
    Left = 6
    Top = 5
    Width = 364
    Height = 128
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 17
    Top = 15
    Width = 42
    Height = 13
    Caption = 'Camion :'
  end
  object Label2: TLabel
    Left = 17
    Top = 38
    Width = 33
    Height = 13
    Caption = 'Article '
  end
  object Label3: TLabel
    Left = 17
    Top = 61
    Width = 29
    Height = 13
    Caption = 'Des. :'
  end
  object Label4: TLabel
    Left = 17
    Top = 107
    Width = 25
    Height = 13
    Caption = 'Qt'#233' :'
  end
  object Label5: TLabel
    Left = 17
    Top = 84
    Width = 31
    Height = 13
    Caption = 'Type :'
  end
  object edArticle: TEdit
    Left = 73
    Top = 35
    Width = 106
    Height = 21
    ParentColor = True
    TabOrder = 0
    OnDblClick = edArticleDblClick
  end
  object cbCamion: TComboBox
    Left = 73
    Top = 12
    Width = 106
    Height = 21
    ParentColor = True
    TabOrder = 1
  end
  object edDesignation: TEdit
    Left = 73
    Top = 58
    Width = 286
    Height = 21
    ParentColor = True
    TabOrder = 2
  end
  object edQte: TEdit
    Left = 73
    Top = 104
    Width = 106
    Height = 21
    ParentColor = True
    TabOrder = 3
    OnKeyPress = edQteKeyPress
  end
  object Button1: TButton
    Left = 5
    Top = 133
    Width = 75
    Height = 25
    Caption = 'Valider'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 81
    Top = 133
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 5
    OnClick = Button2Click
  end
  object cbtype: TComboBox
    Left = 73
    Top = 81
    Width = 106
    Height = 21
    Style = csDropDownList
    ItemIndex = 1
    ParentColor = True
    TabOrder = 6
    Text = 'Charg'#233'e'
    Items.Strings = (
      'Vide'
      'Charg'#233'e')
  end
end
