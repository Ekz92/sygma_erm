object frmAddAvance: TfrmAddAvance
  Left = 0
  Top = 0
  Caption = 'Saisir une vance'
  ClientHeight = 209
  ClientWidth = 377
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
    Left = 5
    Top = 4
    Width = 369
    Height = 177
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 13
    Top = 83
    Width = 62
    Height = 13
    Caption = 'Code Client :'
  end
  object Label2: TLabel
    Left = 13
    Top = 106
    Width = 56
    Height = 13
    Caption = 'Nom client :'
  end
  object Label3: TLabel
    Left = 13
    Top = 129
    Width = 72
    Height = 13
    Caption = 'Compte client :'
  end
  object Label4: TLabel
    Left = 13
    Top = 152
    Width = 47
    Height = 13
    Caption = 'Montant :'
  end
  object Label5: TLabel
    Left = 13
    Top = 38
    Width = 77
    Height = 13
    Caption = 'Type d'#39'avance :'
  end
  object Label6: TLabel
    Left = 13
    Top = 61
    Width = 36
    Height = 13
    Caption = 'Libell'#233' :'
  end
  object Label7: TLabel
    Left = 13
    Top = 16
    Width = 30
    Height = 13
    Caption = 'Date :'
  end
  object edcodeClt: TEdit
    Left = 98
    Top = 80
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    OnDblClick = edcodeCltDblClick
  end
  object edNomClt: TEdit
    Left = 98
    Top = 103
    Width = 260
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 1
  end
  object edCompteClt: TEdit
    Left = 98
    Top = 126
    Width = 260
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 2
  end
  object edMontant: TEdit
    Left = 98
    Top = 149
    Width = 121
    Height = 21
    NumbersOnly = True
    ParentColor = True
    TabOrder = 3
  end
  object cbTypEncais: TComboBox
    Left = 98
    Top = 35
    Width = 260
    Height = 21
    Style = csDropDownList
    ParentColor = True
    TabOrder = 4
  end
  object edLibelle: TEdit
    Left = 98
    Top = 58
    Width = 260
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 5
  end
  object Button1: TButton
    Left = 222
    Top = 182
    Width = 75
    Height = 25
    Caption = 'Valider'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 298
    Top = 182
    Width = 75
    Height = 25
    Caption = 'Annuler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 98
    Top = 12
    Width = 121
    Height = 21
    Date = 44785.646445115740000000
    Time = 44785.646445115740000000
    ShowCheckbox = True
    Checked = False
    TabOrder = 8
  end
end
