object frmTransfertInterCamion: TfrmTransfertInterCamion
  Left = 0
  Top = 0
  Caption = 'Transfert Inter-Vehicule'
  ClientHeight = 381
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 114
    Width = 414
    Height = 238
    Align = alClient
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goTabs]
    ParentColor = True
    ScrollBars = ssNone
    TabOrder = 0
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    OnKeyPress = StringGrid1KeyPress
    OnSelectCell = StringGrid1SelectCell
    ExplicitHeight = 234
    ColWidths = (
      2
      66
      214
      61
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 509
    object GroupBox1: TGroupBox
      Left = 207
      Top = 0
      Width = 206
      Height = 73
      Align = alLeft
      Caption = 'Camion destination'
      TabOrder = 0
      object Label3: TLabel
        Left = 7
        Top = 24
        Width = 25
        Height = 13
        Caption = 'Veh :'
      end
      object Label4: TLabel
        Left = 7
        Top = 47
        Width = 28
        Height = 13
        Caption = 'Num :'
      end
      object cbVehD: TComboBox
        Left = 43
        Top = 21
        Width = 156
        Height = 21
        Style = csDropDownList
        ParentColor = True
        TabOrder = 0
        OnChange = cbVehDCloseUp
        OnCloseUp = cbVehDCloseUp
      end
      object edVehD: TEdit
        Left = 43
        Top = 44
        Width = 156
        Height = 21
        ParentColor = True
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 207
      Height = 73
      Align = alLeft
      Caption = 'Camion source'
      TabOrder = 1
      object Label1: TLabel
        Left = 7
        Top = 24
        Width = 25
        Height = 13
        Caption = 'Veh :'
      end
      object Label2: TLabel
        Left = 7
        Top = 47
        Width = 28
        Height = 13
        Caption = 'Num :'
      end
      object cbVehS: TComboBox
        Left = 43
        Top = 21
        Width = 158
        Height = 21
        Style = csDropDownList
        ParentColor = True
        TabOrder = 0
        OnChange = cbVehSCloseUp
        OnCloseUp = cbVehSCloseUp
      end
      object edVehS: TEdit
        Left = 43
        Top = 44
        Width = 158
        Height = 21
        ParentColor = True
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 352
    Width = 414
    Height = 29
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 353
    object btSave: TButton
      Left = 263
      Top = 1
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Enregistrer'
      TabOrder = 0
      OnClick = btSaveClick
      ExplicitLeft = 262
      ExplicitTop = 2
      ExplicitHeight = 25
    end
    object Annuler: TButton
      Left = 338
      Top = 1
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Annuler'
      TabOrder = 1
      OnClick = AnnulerClick
      ExplicitLeft = 337
      ExplicitTop = 2
      ExplicitHeight = 25
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 73
    Width = 414
    Height = 41
    Align = alTop
    Caption = 'Magasin'
    TabOrder = 3
    object Label5: TLabel
      Left = 6
      Top = 18
      Width = 25
      Height = 13
      Caption = 'Veh :'
    end
    object cbMag: TComboBox
      Left = 42
      Top = 15
      Width = 210
      Height = 21
      Style = csDropDownList
      ParentColor = True
      TabOrder = 0
      OnChange = cbMagCloseUp
      OnCloseUp = cbMagCloseUp
    end
  end
end
