object frmTarifUpdate: TfrmTarifUpdate
  Left = 0
  Top = 0
  Caption = 'Modification tarif'
  ClientHeight = 122
  ClientWidth = 317
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
    Left = 8
    Top = 19
    Width = 29
    Height = 13
    Caption = 'Tarif :'
  end
  object Label2: TLabel
    Left = 8
    Top = 41
    Width = 37
    Height = 13
    Caption = 'Article :'
  end
  object Label3: TLabel
    Left = 8
    Top = 63
    Width = 25
    Height = 13
    Caption = 'Prix :'
  end
  object Bevel1: TBevel
    Left = 2
    Top = 3
    Width = 313
    Height = 89
    Shape = bsFrame
  end
  object edtarif: TEdit
    Left = 80
    Top = 16
    Width = 225
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 0
  end
  object edArticle: TEdit
    Left = 80
    Top = 38
    Width = 225
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 1
  end
  object edPrix: TEdit
    Left = 80
    Top = 60
    Width = 121
    Height = 21
    NumbersOnly = True
    ParentColor = True
    TabOrder = 2
  end
  object Button1: TButton
    Left = 165
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Valider'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 4
  end
end
