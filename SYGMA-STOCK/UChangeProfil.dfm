object frmChangeProfiluser: TfrmChangeProfiluser
  Left = 0
  Top = 0
  Caption = 'Changement de profil'
  ClientHeight = 297
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 3
      Top = 4
      Width = 206
      Height = 42
      Caption = 'Recherche'
      TabOrder = 0
      object Label1: TLabel
        Left = 13
        Top = 17
        Width = 28
        Height = 13
        Caption = 'Nom :'
      end
      object edRechNom: TEdit
        Left = 48
        Top = 14
        Width = 152
        Height = 21
        ParentColor = True
        TabOrder = 0
        OnChange = edRechNomChange
      end
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 52
    Width = 447
    Height = 175
    Align = alClient
    ColCount = 4
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goColSizing, goRowSelect]
    ParentColor = True
    TabOrder = 1
    StyleElements = [seBorder]
    OnDblClick = StringGrid1DblClick
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      104
      129
      77
      128)
  end
  object Panel2: TPanel
    Left = 0
    Top = 227
    Width = 447
    Height = 70
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label2: TLabel
      Left = 12
      Top = 5
      Width = 41
      Height = 13
      Caption = 'Usager :'
    end
    object Label3: TLabel
      Left = 12
      Top = 25
      Width = 28
      Height = 13
      Caption = 'Nom :'
    end
    object Label4: TLabel
      Left = 12
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Profil :'
    end
    object edcode: TEdit
      Left = 80
      Top = 2
      Width = 121
      Height = 21
      ParentColor = True
      TabOrder = 0
    end
    object edprenom: TEdit
      Left = 80
      Top = 24
      Width = 249
      Height = 21
      ParentColor = True
      TabOrder = 1
    end
    object cbProfil: TComboBox
      Left = 80
      Top = 46
      Width = 164
      Height = 21
      ParentColor = True
      TabOrder = 2
      Items.Strings = (
        'Administrateur'
        'Gest. Stock'
        'User')
    end
    object Button1: TButton
      Left = 370
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Valider'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 370
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Annuler'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
end