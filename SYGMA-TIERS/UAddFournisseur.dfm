object frmAddFournisseur: TfrmAddFournisseur
  Left = 0
  Top = 0
  Caption = 'Nouveau fournisseur'
  ClientHeight = 238
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 0
    Top = 0
    Width = 3
    Height = 13
    Align = alCustom
  end
  object Label8: TLabel
    Left = 330
    Top = 236
    Width = 24
    Height = 13
    Align = alCustom
    Caption = '        '
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 238
    Align = alLeft
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    StyleElements = [seBorder]
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitHeight = 261
    object Label1: TLabel
      Left = 7
      Top = 27
      Width = 37
      Height = 13
      Caption = 'Nom : *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 48
      Width = 30
      Height = 13
      Caption = 'T'#232'l : *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 68
      Width = 35
      Height = 13
      Caption = 'E-mail :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 7
      Top = 86
      Width = 50
      Height = 13
      Caption = 'Adresse. :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 168
      Top = 135
      Width = 80
      Height = 25
      Caption = 'Ajouter'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 248
      Top = 135
      Width = 80
      Height = 25
      Caption = 'Annuler'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object Label10: TLabel
      Left = 7
      Top = 7
      Width = 41
      Height = 13
      Caption = 'Code : *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object mAdresse: TMemo
      Left = 77
      Top = 85
      Width = 250
      Height = 48
      Lines.Strings = (
        'MemoComment')
      MaxLength = 254
      ParentColor = True
      TabOrder = 4
    end
    object edNom: TEdit
      Left = 77
      Top = 25
      Width = 250
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
    object edTel: TEdit
      Left = 77
      Top = 45
      Width = 250
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 2
      Text = 'A COMPLETER'
    end
    object edEmail: TEdit
      Left = 77
      Top = 65
      Width = 250
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
    end
    object edcodefourn: TEdit
      Left = 77
      Top = 5
      Width = 94
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      MaxLength = 4
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 336
    Top = 0
    Width = 360
    Height = 238
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 359
    ExplicitHeight = 261
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 358
      Height = 42
      Align = alTop
      Caption = 'Recherche'
      TabOrder = 0
      ExplicitWidth = 357
      object Label6: TLabel
        Left = 7
        Top = 17
        Width = 28
        Height = 13
        Caption = 'Nom :'
      end
      object edNomRech: TEdit
        Left = 77
        Top = 14
        Width = 161
        Height = 21
        ParentColor = True
        TabOrder = 0
        OnChange = edNomRechChange
      end
    end
    object StringGrid1: TStringGrid
      Left = 1
      Top = 43
      Width = 358
      Height = 194
      Align = alClient
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
      ParentColor = True
      PopupMenu = PopupMenu1
      ScrollBars = ssHorizontal
      TabOrder = 1
      StyleElements = [seBorder]
      OnDrawCell = StringGrid1DrawCell
      ExplicitWidth = 357
      ExplicitHeight = 217
      ColWidths = (
        80
        181
        90
        64
        64)
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 154
    object Consulter1: TMenuItem
      Caption = 'Consulter'
    end
    object Modifier1: TMenuItem
      Caption = 'Modifier'
    end
    object Supprimer1: TMenuItem
      Caption = 'Supprimer'
    end
  end
end