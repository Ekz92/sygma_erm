object frmNew_zone: TfrmNew_zone
  Left = 0
  Top = 0
  Caption = 'Cr'#233'ation d'#39'une nouvelle zone'
  ClientHeight = 247
  ClientWidth = 439
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 439
    Height = 247
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 6
    ExplicitTop = 8
    ExplicitWidth = 441
    ExplicitHeight = 249
    object TabSheet1: TTabSheet
      Caption = 'Nouveau'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 433
        Height = 49
        Align = alCustom
        Alignment = taLeftJustify
        Caption = ' Nouvelle zone'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        StyleElements = [seBorder]
      end
      object Panel2: TPanel
        Left = 0
        Top = 51
        Width = 433
        Height = 167
        Align = alCustom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        StyleElements = [seBorder]
        object Label1: TLabel
          Left = 16
          Top = 27
          Width = 85
          Height = 13
          Caption = 'D'#233'nomination :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StyleElements = [seBorder]
        end
        object Label2: TLabel
          Left = 16
          Top = 46
          Width = 28
          Height = 13
          Caption = 'Prix :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StyleElements = [seBorder]
        end
        object Label3: TLabel
          Left = 16
          Top = 79
          Width = 70
          Height = 13
          Caption = 'Description :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StyleElements = [seBorder]
        end
        object SpeedButton1: TSpeedButton
          Left = 121
          Top = 138
          Width = 87
          Height = 25
          Caption = 'Cr'#233'er'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 248
          Top = 138
          Width = 87
          Height = 25
          Caption = 'Annuler'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
        end
        object Label4: TLabel
          Left = 277
          Top = 46
          Width = 30
          Height = 13
          Caption = 'F CFA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StyleElements = [seBorder]
        end
        object ednom: TEdit
          Left = 160
          Top = 24
          Width = 265
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object edprix: TEdit
          Left = 160
          Top = 44
          Width = 113
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object Memo1: TMemo
          Left = 160
          Top = 64
          Width = 265
          Height = 55
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            'Memo1')
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Liste de zone'
      ImageIndex = 1
      OnShow = TabSheet2Show
      ExplicitWidth = 433
      ExplicitHeight = 218
      object St_Liste_zone: TStringGrid
        Left = 0
        Top = 0
        Width = 433
        Height = 217
        Align = alCustom
        ColCount = 3
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
        ParentColor = True
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        StyleElements = [seBorder]
        OnDrawCell = St_Liste_zoneDrawCell
        ColWidths = (
          135
          115
          175)
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 128
    object Modifier1: TMenuItem
      Caption = 'Modifier'
    end
    object Supprimer1: TMenuItem
      Caption = 'Supprimer'
    end
  end
end
