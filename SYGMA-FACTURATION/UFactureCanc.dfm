object frmFactureCanc: TfrmFactureCanc
  Left = 0
  Top = 0
  Caption = 'Annulation de facture'
  ClientHeight = 155
  ClientWidth = 333
  Color = 14275323
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
    Width = 325
    Height = 124
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 15
    Top = 11
    Width = 44
    Height = 13
    Caption = 'Facture :'
  end
  object Label2: TLabel
    Left = 15
    Top = 31
    Width = 31
    Height = 13
    Caption = 'Motif :'
  end
  object edFActure: TEdit
    Left = 71
    Top = 8
    Width = 121
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 0
  end
  object memo: TMemo
    Left = 71
    Top = 31
    Width = 245
    Height = 89
    Lines.Strings = (
      'memo')
    ParentColor = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 178
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Proc'#233'der'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 254
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 3
  end
end
