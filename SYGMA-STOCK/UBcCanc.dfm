object frmBcCanc: TfrmBcCanc
  Left = 0
  Top = 0
  Caption = 'Annulation Bc'
  ClientHeight = 179
  ClientWidth = 367
  Color = 14275323
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 353
    Height = 145
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 18
    Top = 19
    Width = 30
    Height = 13
    Caption = 'Date :'
  end
  object Label2: TLabel
    Left = 18
    Top = 41
    Width = 35
    Height = 13
    Caption = 'N'#176' BC :'
  end
  object Label3: TLabel
    Left = 17
    Top = 63
    Width = 46
    Height = 13
    Caption = 'Vehicule :'
  end
  object Label4: TLabel
    Left = 18
    Top = 85
    Width = 56
    Height = 13
    Caption = 'Comment. :'
  end
  object Label5: TLabel
    Left = 194
    Top = 63
    Width = 46
    Height = 13
    Caption = 'User val :'
  end
  object Label6: TLabel
    Left = 194
    Top = 41
    Width = 29
    Height = 13
    Caption = 'Dest :'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 86
    Top = 16
    Width = 104
    Height = 21
    Date = 44962.648948877320000000
    Time = 44962.648948877320000000
    Color = 14275323
    ParentColor = True
    TabOrder = 0
  end
  object edNumBC: TEdit
    Left = 86
    Top = 38
    Width = 104
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 1
  end
  object edVeh: TEdit
    Left = 86
    Top = 60
    Width = 104
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 2
  end
  object mComment: TMemo
    Left = 86
    Top = 82
    Width = 259
    Height = 60
    Enabled = False
    Lines.Strings = (
      'mComment')
    ParentColor = True
    TabOrder = 3
  end
  object Button1: TButton
    Left = 210
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Proc'#233'der'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 286
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 5
    OnClick = Button2Click
  end
  object edUserVal: TEdit
    Left = 249
    Top = 60
    Width = 96
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 6
  end
  object edDest: TEdit
    Left = 249
    Top = 38
    Width = 96
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 7
  end
end