object frmLivreur: TfrmLivreur
  Left = 0
  Top = 0
  Caption = 'Gestion de livreur'
  ClientHeight = 378
  ClientWidth = 371
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
    Width = 371
    Height = 147
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 369
    object Label1: TLabel
      Left = 13
      Top = 34
      Width = 28
      Height = 13
      Caption = 'Nom :'
    end
    object Label2: TLabel
      Left = 13
      Top = 55
      Width = 21
      Height = 13
      Caption = 'Tel :'
    end
    object Label3: TLabel
      Left = 13
      Top = 78
      Width = 39
      Height = 13
      Caption = 'Adresse'
    end
    object Label4: TLabel
      Left = 13
      Top = 100
      Width = 31
      Height = 13
      Caption = 'Email :'
    end
    object Label5: TLabel
      Left = 13
      Top = 12
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object edNom: TEdit
      Left = 72
      Top = 31
      Width = 212
      Height = 21
      CharCase = ecUpperCase
      ParentColor = True
      TabOrder = 0
    end
    object edTel: TEdit
      Left = 72
      Top = 53
      Width = 212
      Height = 21
      ParentColor = True
      TabOrder = 1
    end
    object edAdresse: TEdit
      Left = 72
      Top = 75
      Width = 212
      Height = 21
      ParentColor = True
      TabOrder = 2
    end
    object edMail: TEdit
      Left = 72
      Top = 97
      Width = 212
      Height = 21
      ParentColor = True
      TabOrder = 3
    end
    object Button1: TButton
      Left = 133
      Top = 119
      Width = 75
      Height = 25
      Caption = 'Ajouter'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 209
      Top = 119
      Width = 75
      Height = 25
      Caption = 'Annuler'
      TabOrder = 5
      OnClick = Button2Click
    end
    object edcode_liv: TEdit
      Left = 72
      Top = 9
      Width = 72
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 4
      ParentColor = True
      TabOrder = 6
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 147
    Width = 371
    Height = 231
    Align = alClient
    ColCount = 4
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goRowSelect]
    ParentColor = True
    PopupMenu = PopupMenu1
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ExplicitWidth = 369
    ExplicitHeight = 233
    ColWidths = (
      154
      119
      92
      64)
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 208
    object Modifier1: TMenuItem
      Caption = 'Modifier'
    end
    object Consulter1: TMenuItem
      Caption = 'Consulter'
    end
    object Supprimer1: TMenuItem
      Caption = 'Supprimer'
    end
  end
end
