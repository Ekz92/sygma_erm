object frm_nouveau_BL: Tfrm_nouveau_BL
  Left = 0
  Top = 0
  Caption = 'BON DE LIVRASON'
  ClientHeight = 402
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 528
    Height = 402
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Importation '
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 520
        Height = 373
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Bevel1: TBevel
          Left = 6
          Top = 8
          Width = 506
          Height = 361
          Shape = bsFrame
          Style = bsRaised
        end
        object Label11: TLabel
          Left = 228
          Top = 73
          Width = 77
          Height = 13
          Caption = 'Point de vente :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 377
          Top = 73
          Width = 31
          Height = 13
          Caption = 'Zone :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 462
          Top = 73
          Width = 25
          Height = 13
          Caption = 'Prix :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbcodeClt: TLabel
          Left = 145
          Top = 73
          Width = 32
          Height = 13
          Caption = 'Code :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 16
          Top = 321
          Width = 49
          Height = 13
          Caption = 'Total Art :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbTot_ligne: TLabel
          Left = 81
          Top = 321
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 107
          Top = 321
          Width = 4
          Height = 13
          Caption = '|'
        end
        object Label24: TLabel
          Left = 120
          Top = 321
          Width = 42
          Height = 13
          Caption = 'Tot. Kg :'
        end
        object lbTotKg: TLabel
          Left = 174
          Top = 321
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label26: TLabel
          Left = 204
          Top = 321
          Width = 4
          Height = 13
          Caption = '|'
        end
        object Label27: TLabel
          Left = 219
          Top = 321
          Width = 38
          Height = 13
          Caption = 'Prix liv :'
        end
        object lbPrixLiv: TLabel
          Left = 271
          Top = 321
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label29: TLabel
          Left = 324
          Top = 321
          Width = 4
          Height = 13
          Caption = '|'
        end
        object Label30: TLabel
          Left = 335
          Top = 321
          Width = 46
          Height = 13
          Caption = 'Tot. Blle :'
        end
        object lbTotBlle: TLabel
          Left = 399
          Top = 321
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label31: TLabel
          Left = 14
          Top = 73
          Width = 34
          Height = 13
          Caption = 'Client :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SG_import: TStringGrid
          Left = 13
          Top = 114
          Width = 494
          Height = 197
          ColCount = 6
          DefaultRowHeight = 15
          FixedColor = clOlive
          FixedCols = 0
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
          ParentColor = True
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 6
          StyleElements = [seBorder]
          OnDrawCell = SG_importDrawCell
          ColWidths = (
            62
            69
            68
            172
            53
            49)
        end
        object Button1: TButton
          Left = 372
          Top = 340
          Width = 68
          Height = 25
          Cursor = crHandPoint
          Caption = 'Valider'
          TabOrder = 7
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 440
          Top = 340
          Width = 68
          Height = 25
          Caption = 'Annuler'
          TabOrder = 8
          OnClick = Button2Click
        end
        object cbPointVente: TComboBox
          Left = 228
          Top = 87
          Width = 147
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          OnChange = cbPointVenteChange
          OnCloseUp = cbPointVenteCloseUp
        end
        object edzone: TEdit
          Left = 377
          Top = 87
          Width = 84
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object edprix: TEdit
          Left = 462
          Top = 87
          Width = 45
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object edcodeClt: TEdit
          Left = 144
          Top = 87
          Width = 83
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object ednomClient: TEdit
          Left = 13
          Top = 87
          Width = 130
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnChange = ednomClientExit
          OnExit = ednomClientExit
        end
        object GroupBox2: TGroupBox
          Left = 295
          Top = 11
          Width = 208
          Height = 53
          Caption = 'Recherche'
          TabOrder = 0
          object Label19: TLabel
            Left = 11
            Top = 24
            Width = 43
            Height = 13
            Caption = 'N'#176' Fact :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object ednumFacture: TEdit
            Left = 85
            Top = 22
            Width = 108
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            OnDblClick = ednumFactureDblClick
            OnExit = ednumFactureExit
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cr'#233'ation manuelle'
      ImageIndex = 1
      object Label1: TLabel
        Left = 9
        Top = 5
        Width = 253
        Height = 25
        Alignment = taCenter
        Caption = 'Cr'#233'ation manuelle de BL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel1: TPanel
        Left = -6
        Top = 41
        Width = 503
        Height = 381
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        StyleElements = [seBorder]
        object Label2: TLabel
          Left = 16
          Top = 7
          Width = 36
          Height = 13
          Caption = 'N'#176' BL : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 98
          Top = 7
          Width = 37
          Height = 13
          Caption = 'Client : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 50
          Width = 74
          Height = 13
          Caption = 'Code magasin :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 183
          Top = 50
          Width = 63
          Height = 13
          Caption = 'D'#233'signation :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object BtCreer: TSpeedButton
          Left = 308
          Top = 321
          Width = 90
          Height = 30
          Caption = 'Cr'#233'er'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        end
        object BtAnnuler: TSpeedButton
          Left = 398
          Top = 321
          Width = 90
          Height = 30
          Caption = 'Annuler'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        object Label12: TLabel
          Left = 5
          Top = 302
          Width = 50
          Height = 13
          Caption = 'Total kgs :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbtkilo: TLabel
          Left = 86
          Top = 302
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 126
          Top = 302
          Width = 4
          Height = 13
          Caption = '|'
        end
        object Label14: TLabel
          Left = 138
          Top = 302
          Width = 74
          Height = 13
          Caption = 'Total Bouteille :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbTBouteille: TLabel
          Left = 247
          Top = 302
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 389
          Top = 7
          Width = 31
          Height = 13
          Caption = 'Zone :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 464
          Top = 7
          Width = 25
          Height = 13
          Caption = 'Prix :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 276
          Top = 302
          Width = 4
          Height = 13
          Caption = '|'
        end
        object Label18: TLabel
          Left = 289
          Top = 302
          Width = 82
          Height = 13
          Caption = 'Prix de livraison :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbprixlivraison: TLabel
          Left = 404
          Top = 303
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 208
          Top = 7
          Width = 32
          Height = 13
          Caption = 'Code :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 259
          Top = 7
          Width = 74
          Height = 13
          Caption = 'Point de vente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ednumBL: TEdit
          Left = 14
          Top = 25
          Width = 83
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object edClient: TEdit
          Left = 98
          Top = 25
          Width = 108
          Height = 19
          Cursor = crMultiDrag
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          StyleElements = [seBorder]
        end
        object edcodeMag: TEdit
          Left = 16
          Top = 70
          Width = 163
          Height = 19
          Cursor = crMultiDrag
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          StyleElements = [seBorder]
        end
        object GroupBox1: TGroupBox
          Left = 7
          Top = 100
          Width = 483
          Height = 69
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label6: TLabel
            Left = 12
            Top = 16
            Width = 32
            Height = 13
            Caption = 'Code :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 94
            Top = 16
            Width = 63
            Height = 13
            Caption = 'D'#233'signation :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 286
            Top = 16
            Width = 24
            Height = 13
            Caption = 'Kgs :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 348
            Top = 16
            Width = 25
            Height = 13
            Caption = 'Qt'#233' :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object BtAjouter: TSpeedButton
            Left = 401
            Top = 34
            Width = 82
            Height = 26
            Caption = 'Ajouter'
          end
          object edCode_art: TEdit
            Left = 12
            Top = 35
            Width = 78
            Height = 19
            Cursor = crMultiDrag
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            StyleElements = [seBorder]
          end
          object edDesign_Art: TEdit
            Left = 92
            Top = 35
            Width = 186
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            StyleElements = [seBorder]
          end
          object edkilo: TEdit
            Left = 282
            Top = 35
            Width = 55
            Height = 19
            Alignment = taRightJustify
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            StyleElements = [seBorder]
          end
          object edQte: TEdit
            Left = 346
            Top = 35
            Width = 57
            Height = 19
            Alignment = taRightJustify
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
        end
        object edDegn_mag: TEdit
          Left = 180
          Top = 70
          Width = 293
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          StyleElements = [seBorder]
        end
        object StringGrid1: TStringGrid
          Left = 7
          Top = 175
          Width = 483
          Height = 122
          DefaultRowHeight = 18
          FixedCols = 0
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
          ParentColor = True
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 5
          StyleElements = [seBorder]
          ColWidths = (
            174
            289
            64
            64
            64)
        end
        object ednom_zone: TEdit
          Left = 387
          Top = 25
          Width = 66
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          StyleElements = [seBorder]
        end
        object edPrix_zone: TEdit
          Left = 461
          Top = 25
          Width = 35
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          StyleElements = [seBorder]
        end
        object edCodeClt_man: TEdit
          Left = 207
          Top = 25
          Width = 51
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
        end
        object cbPointVente_man: TComboBox
          Left = 259
          Top = 24
          Width = 127
          Height = 21
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 465
    Top = 233
    object Modifier1: TMenuItem
      Caption = 'Livraison partielle'
      OnClick = Modifier1Click
    end
  end
  object frxBL: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44439.368549988400000000
    ReportOptions.LastChange = 44662.885684294000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 220
    Top = 241
    Datasets = <
      item
        DataSet = frxDBBL
        DataSetName = 'frxDBBL'
      end
      item
        DataSet = DM.frxDBParam
        DataSetName = 'frxDBParam'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 11
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 116.488250000000000000
        Top = 18.897650000000000000
        Width = 778.583180000000000000
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 22.779527560000000000
          Top = 38.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Client :')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 82.354360000000000000
          Top = 38.055118110000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBL."code_client"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 22.779527560000000000
          Top = 56.015770000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBL."nom_Client"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 22.779527560000000000
          Top = 76.574830000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Magasin :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 94.031540000000000000
          Top = 75.574830000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBL."designation_mag"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 22.779527560000000000
          Top = 17.779527560000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'BL N'#176' : [frxDBBL."num_bl"] - [frxDBBL."numbl_his"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 23.000000000000000000
          Top = 94.708720000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Date BL :')
          ParentFont = False
        end
        object frxDBBLdate_bl: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 93.370130000000000000
          Top = 94.708720000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'date_bl'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBL."date_bl"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 18.897650000000000000
          Width = 241.889775980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBParam."nom"]'
            'ETS. MEL'#39'SIFA')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 554.141856770000000000
          Top = 38.795300000000000000
          Width = 173.858235980000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBParam."description"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 158.740260000000000000
        Width = 778.583180000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 56.779527560000000000
          Width = 100.157477870000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'Article')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 157.594169080000000000
          Width = 330.708722440000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'D'#233'signation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 560.511811020000000000
          Width = 58.582679610000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Qt'#233)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 489.913730000000000000
          Width = 69.921269610000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Alias ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 619.606680000000000000
          Width = 94.488188980000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Qt'#233' ret')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 241.889920000000000000
        Width = 778.583180000000000000
        DataSet = frxDBBL
        DataSetName = 'frxDBBL'
        RowCount = 0
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 56.779527560000000000
          Width = 100.157477870000000000
          Height = 18.897650000000000000
          DataField = 'code_art'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBBL."code_art"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 157.594169080000000000
          Width = 330.708722440000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBBL."designation_art"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 560.511811020000000000
          Width = 58.582679610000000000
          Height = 18.897650000000000000
          DataField = 'qte_liv'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBBL."qte_liv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBBLalias_art: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 489.834645670000000000
          Width = 69.921247640000000000
          Height = 18.897650000000000000
          DataField = 'alias_art'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBBL."alias_art"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 619.606680000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 472.441250000000000000
        Width = 778.583180000000000000
        object Memo19: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 778.583180000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo21: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 702.992580000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 128.504020000000000000
        Top = 283.464750000000000000
        Width = 778.583180000000000000
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 454.102660000000000000
          Top = 7.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Date Retour :')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 554.472790000000000000
          Top = 7.000000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '____/____/________')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 49.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Signature')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 64.252082010000000000
          Top = 78.149660000000000000
          Width = 650.079015980000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBParam."footer1"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 77.480365000000000000
          Top = 111.708720000000000000
          Width = 623.622450000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBParam."footer3"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 94.267780000000000000
          Width = 657.638220000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBParam."footer2"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBBL: TfrxDBDataset
    UserName = 'frxDBBL'
    CloseDataSource = False
    DataSet = QBL
    BCDToCurrency = False
    Left = 300
    Top = 241
  end
  object QBL: TSQLQuery
    Active = True
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from tb_bl_detail d, tb_bl b,tb_article a')
    SQLConnection = DM.SQLConnection1
    Left = 252
    Top = 193
  end
end
