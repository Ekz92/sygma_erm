object frmClotureDay: TfrmClotureDay
  Left = 0
  Top = 0
  Caption = 'Cl'#244'ture de journ'#233'e'
  ClientHeight = 109
  ClientWidth = 261
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
  object Label1: TLabel
    Left = 24
    Top = 27
    Width = 41
    Height = 13
    Caption = 'Usager :'
  end
  object Label2: TLabel
    Left = 24
    Top = 50
    Width = 71
    Height = 13
    Caption = 'Mot de passe :'
  end
  object Label3: TLabel
    Left = 14
    Top = 4
    Width = 242
    Height = 13
    Caption = 'Le processus est en cours, veillez patienter svp ...'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleElements = [seBorder]
  end
  object edlogin: TEdit
    Left = 104
    Top = 24
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    ParentColor = True
    TabOrder = 0
  end
  object edpwd: TEdit
    Left = 104
    Top = 47
    Width = 121
    Height = 21
    ParentColor = True
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = edpwdKeyPress
  end
  object Button1: TButton
    Left = 63
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Proceder'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 151
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 3
    OnClick = Button2Click
  end
end
