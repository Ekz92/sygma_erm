object frmModifChargement: TfrmModifChargement
  Left = 0
  Top = 0
  Caption = 'Modification du chargement'
  ClientHeight = 122
  ClientWidth = 366
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
  object Bevel1: TBevel
    Left = 8
    Top = 5
    Width = 354
    Height = 87
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 22
    Top = 28
    Width = 51
    Height = 13
    Caption = 'N'#176' Charg :'
  end
  object Label2: TLabel
    Left = 22
    Top = 52
    Width = 47
    Height = 13
    Caption = 'N'#176' Pi'#232'ce :'
  end
  object edNumCharg: TEdit
    Left = 96
    Top = 25
    Width = 113
    Height = 21
    ParentColor = True
    TabOrder = 0
  end
  object edPiece: TEdit
    Left = 96
    Top = 49
    Width = 256
    Height = 21
    ParentColor = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 213
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Valider'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 288
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 3
    OnClick = Button2Click
  end
end
