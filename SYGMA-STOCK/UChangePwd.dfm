object frmChangePwd: TfrmChangePwd
  Left = 0
  Top = 0
  Caption = 'frmChangePwd'
  ClientHeight = 165
  ClientWidth = 391
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
    Top = 8
    Width = 377
    Height = 129
    Shape = bsFrame
  end
  object Label4: TLabel
    Left = 32
    Top = 95
    Width = 68
    Height = 13
    Caption = 'Confirmation :'
  end
  object Label3: TLabel
    Left = 32
    Top = 68
    Width = 111
    Height = 13
    Caption = 'Nouveau mot de pass :'
  end
  object Label2: TLabel
    Left = 32
    Top = 46
    Width = 100
    Height = 13
    Caption = 'Ancien mot de pass :'
  end
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Login :'
  end
  object Button2: TButton
    Left = 310
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 4
  end
  object Button1: TButton
    Left = 234
    Top = 137
    Width = 75
    Height = 25
    Caption = 'Valider'
    TabOrder = 5
    OnClick = Button1Click
  end
  object edConfirm: TEdit
    Left = 205
    Top = 90
    Width = 163
    Height = 21
    ParentColor = True
    PasswordChar = '*'
    TabOrder = 1
  end
  object edNewPwd: TEdit
    Left = 205
    Top = 68
    Width = 163
    Height = 21
    ParentColor = True
    PasswordChar = '*'
    TabOrder = 2
  end
  object edpwd: TEdit
    Left = 205
    Top = 46
    Width = 163
    Height = 21
    ParentColor = True
    PasswordChar = '*'
    TabOrder = 3
  end
  object edlogin: TEdit
    Left = 205
    Top = 21
    Width = 163
    Height = 24
    ParentColor = True
    TabOrder = 0
  end
end
