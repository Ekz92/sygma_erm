object frmChargement_veh: TfrmChargement_veh
  Left = 0
  Top = 0
  Caption = 'Chargement de v'#233'hicules'
  ClientHeight = 339
  ClientWidth = 575
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
    Top = 106
    Width = 575
    Height = 201
    Align = alClient
    Color = clBtnFace
    ColCount = 6
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowMoving, goRowSelect]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      97
      73
      185
      79
      82
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 575
    Height = 43
    Align = alTop
    TabOrder = 1
    object Label12: TLabel
      Left = 364
      Top = 18
      Width = 81
      Height = 13
      Caption = 'N'#176' Chargement :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seBorder]
    end
    object lbnum_chargement: TLabel
      Left = 465
      Top = 18
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seBorder]
    end
    object Label3: TLabel
      Left = 224
      Top = 1
      Width = 65
      Height = 13
      Caption = 'Date d'#233'part :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 124
      Top = 1
      Width = 47
      Height = 13
      Caption = 'Kgs max :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 2
      Top = 1
      Width = 52
      Height = 13
      Caption = 'N'#176' Immat :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 222
      Top = 16
      Width = 115
      Height = 19
      Date = 43504.478880879630000000
      Time = 43504.478880879630000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      StyleElements = [seBorder]
    end
    object edKgs_max: TEdit
      Left = 123
      Top = 16
      Width = 98
      Height = 19
      Color = 9165010
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      StyleElements = [seBorder]
    end
    object ednum_immat: TEdit
      Left = 2
      Top = 16
      Width = 120
      Height = 19
      Cursor = crMultiDrag
      Color = 9165010
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      StyleElements = [seBorder]
      OnDblClick = ednum_immatDblClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 43
    Width = 575
    Height = 63
    Align = alTop
    TabOrder = 2
    object Label4: TLabel
      Left = 2
      Top = 4
      Width = 33
      Height = 13
      Caption = 'N'#176' BL :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 116
      Top = 4
      Width = 36
      Height = 13
      Caption = 'N'#176' His :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 181
      Top = 4
      Width = 34
      Height = 13
      Caption = 'Client :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 364
      Top = 4
      Width = 52
      Height = 13
      Caption = 'Tot. bout :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 425
      Top = 4
      Width = 47
      Height = 13
      Caption = 'Tot. Kgs :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 499
      Top = 4
      Width = 35
      Height = 13
      Caption = 'Prix liv:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SB_Annuler: TSpeedButton
      Left = 498
      Top = 38
      Width = 75
      Height = 22
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
      OnClick = SB_AnnulerClick
    end
    object SB_Add: TSpeedButton
      Left = 423
      Top = 38
      Width = 75
      Height = 22
      Caption = 'Ajouter'
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
      OnClick = SB_AddClick
    end
    object ednum_bl: TEdit
      Left = 2
      Top = 18
      Width = 108
      Height = 19
      Cursor = crMultiDrag
      Color = 9165010
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      StyleElements = [seBorder]
      OnDblClick = ednum_blDblClick
    end
    object edhis: TEdit
      Left = 111
      Top = 18
      Width = 68
      Height = 19
      Cursor = crMultiDrag
      Color = 9165010
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      StyleElements = [seBorder]
    end
    object edtot_bout: TEdit
      Left = 363
      Top = 18
      Width = 60
      Height = 19
      Color = 9165010
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      StyleElements = [seBorder]
    end
    object edTotal_kgs: TEdit
      Left = 424
      Top = 18
      Width = 73
      Height = 19
      Color = 9165010
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      StyleElements = [seBorder]
    end
    object edPrix_liv: TEdit
      Left = 498
      Top = 18
      Width = 75
      Height = 19
      Color = 9165010
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      StyleElements = [seBorder]
    end
    object edclient: TEdit
      Left = 180
      Top = 18
      Width = 182
      Height = 19
      Color = 9165010
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      StyleElements = [seBorder]
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 307
    Width = 575
    Height = 32
    Align = alBottom
    TabOrder = 3
    object Label11: TLabel
      Left = 8
      Top = 11
      Width = 46
      Height = 13
      Caption = 'Tot. kgs :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbtotal_kilo: TLabel
      Left = 66
      Top = 11
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 117
      Top = 11
      Width = 4
      Height = 13
      Caption = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 126
      Top = 11
      Width = 52
      Height = 13
      Caption = 'Tot. bout :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbtot_bout: TLabel
      Left = 192
      Top = 11
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 231
      Top = 11
      Width = 4
      Height = 13
      Caption = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 240
      Top = 11
      Width = 69
      Height = 13
      Caption = 'Total prix liv. :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbprix_liv: TLabel
      Left = 329
      Top = 11
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SB_valider: TSpeedButton
      Left = 415
      Top = 5
      Width = 82
      Height = 24
      Caption = 'Valider'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      ParentFont = False
      OnClick = SB_validerClick
    end
    object SB_Tout_Annuler: TSpeedButton
      Left = 498
      Top = 5
      Width = 75
      Height = 24
      Caption = 'Annuler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SB_Tout_AnnulerClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 204
    object Modifierlaligne1: TMenuItem
      Caption = 'Modifier la ligne'
    end
    object Supprimerlaligne1: TMenuItem
      Caption = 'Supprimer la ligne'
    end
  end
  object RDispatching1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44427.877978784700000000
    ReportOptions.LastChange = 44427.877978784700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 488
    Top = 208
    Datasets = <
      item
        DataSet = frxHeader
        DataSetName = 'frxHeader'
      end
      item
        DataSet = frxDispatching
        DataSetName = 'QDispatching'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo29: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 90.708720000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FICHE DISPATCHING')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = -0.440940000000000000
          Top = 5.338590000000000000
          Width = 718.110700000000000000
          Height = 83.149660000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ki')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
        object frxHeadernum_matricule_chauf: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 64.251968503937010000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'num_matricule_chauf'
          DataSet = frxHeader
          DataSetName = 'frxHeader'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxHeader."num_matricule_chauf"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 43.456710000000000000
          Width = 69.411054670000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'V'#233'hicule :')
          ParentFont = False
          Style = 'Header'
        end
        object frxHeadernum_immat_veh: TfrxMemoView
          AllowVectorExport = True
          Left = 74.590600000000000000
          Top = 43.574830000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'num_immat_veh'
          DataSet = frxHeader
          DataSetName = 'frxHeader'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxHeader."num_immat_veh"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 64.252010000000000000
          Width = 75.329309170000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Chauffeur :')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 220.330963840000000000
          Top = 41.574830000000000000
          Width = 78.912929010000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176'Mission :')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 284.873762850000000000
          Top = 64.251968503937010000
          Width = 87.720974210000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Date d'#233'part :')
          ParentFont = False
          Style = 'Header'
        end
        object frxHeadernum_ordre_mission: TfrxMemoView
          AllowVectorExport = True
          Left = 303.700990000000000000
          Top = 41.574830000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'num_ordre_mission'
          DataSet = frxHeader
          DataSetName = 'frxHeader'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxHeader."num_ordre_mission"]')
          ParentFont = False
        end
        object frxHeaderdate_depart: TfrxMemoView
          AllowVectorExport = True
          Left = 374.260050000000000000
          Top = 64.251968503937010000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'date_depart'
          DataSet = frxHeader
          DataSetName = 'frxHeader'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxHeader."date_depart"]')
          ParentFont = False
        end
        object frxHeaderheure_depart: TfrxMemoView
          AllowVectorExport = True
          Left = 446.071120000000000000
          Top = 64.251968503937010000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'heure_depart'
          DataSet = frxHeader
          DataSetName = 'frxHeader'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxHeader."heure_depart"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 470.326724420000000000
          Top = 41.795300000000000000
          Width = 92.961686770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' Chargemt :')
          ParentFont = False
          Style = 'Header'
        end
        object frxHeadernum_chargement: TfrxMemoView
          AllowVectorExport = True
          Left = 567.709030000000000000
          Top = 43.574830000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'num_chargement'
          DataSet = frxHeader
          DataSetName = 'frxHeader'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxHeader."num_chargement"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 64.251968500000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxHeader."nom_chauf"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
          Fill.BackColor = clBtnFace
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 153.154521180000000000
          Top = 3.000000000000000000
          Width = 102.447273910000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Code article')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 255.908845090000000000
          Top = 3.000000000000000000
          Width = 329.574803150000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'D'#233'signation article')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 585.785037670000000000
          Top = 3.000000000000000000
          Width = 59.338582680000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kg')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 645.886379480000000000
          Top = 3.000000000000000000
          Width = 71.239626740000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        Condition = 'QDispatching."num_BL"'
        object Memo17: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Fill.BackColor = clBtnFace
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DataField = 'num_BL'
          DataSet = frxDispatching
          DataSetName = 'QDispatching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[QDispatching."num_BL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 139.330860000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DataField = 'nom_Client'
          DataSet = frxDispatching
          DataSetName = 'QDispatching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[QDispatching."nom_Client"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 343.716760000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'point_vente'
          DataSet = frxDispatching
          DataSetName = 'QDispatching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[QDispatching."point_vente"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = frxDispatching
        DataSetName = 'QDispatching'
        RowCount = 0
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 153.154521180000000000
          Width = 102.447273910000000000
          Height = 15.118120000000000000
          DataField = 'code_art'
          DataSet = frxDispatching
          DataSetName = 'QDispatching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[QDispatching."code_art"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 255.908845090000000000
          Width = 329.952755910000000000
          Height = 15.118120000000000000
          DataField = 'designation_art'
          DataSet = frxDispatching
          DataSetName = 'QDispatching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[QDispatching."designation_art"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 585.785037670000000000
          Width = 59.998991810000000000
          Height = 15.118120000000000000
          DataField = 'Kilo_art'
          DataSet = frxDispatching
          DataSetName = 'QDispatching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[QDispatching."Kilo_art"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 645.886379480000000000
          Width = 71.239626740000000000
          Height = 15.118120000000000000
          DataField = 'qte_art'
          DataSet = frxDispatching
          DataSetName = 'QDispatching'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[QDispatching."qte_art"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        object Memo26: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo28: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxHeader: TfrxDBDataset
    UserName = 'frxHeader'
    CloseDataSource = False
    DataSet = QHeader
    BCDToCurrency = False
    Left = 375
    Top = 144
  end
  object QHeader: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM tb_mission_speciale MS, tb_chauffeur tc  '
      '            WHERE MS.num_ordre_mission = '#39'M_ORD/2'#39
      '           and ms.num_matricule_chauf = tc.num_mat_chauf ;')
    Left = 375
    Top = 192
    object QHeaderid_mis_spec: TIntegerField
      FieldName = 'id_mis_spec'
      Required = True
    end
    object QHeadernum_matricule_chauf: TIntegerField
      FieldName = 'num_matricule_chauf'
      Required = True
    end
    object QHeadernum_immat_veh: TStringField
      FieldName = 'num_immat_veh'
      Required = True
      Size = 30
    end
    object QHeadernum_ordre_mission: TStringField
      FieldName = 'num_ordre_mission'
      Required = True
      Size = 15
    end
    object QHeaderdate_depart: TDateField
      FieldName = 'date_depart'
      Required = True
    end
    object QHeaderheure_depart: TTimeField
      FieldName = 'heure_depart'
      Required = True
    end
    object QHeaderType_mission: TIntegerField
      FieldName = 'Type_mission'
      Required = True
    end
    object QHeadernum_chargement: TStringField
      FieldName = 'num_chargement'
      Required = True
    end
    object QHeaderretour: TIntegerField
      FieldName = 'retour'
      Required = True
    end
    object QHeaderid_chauf: TIntegerField
      FieldName = 'id_chauf'
      Required = True
    end
    object QHeadernum_mat_chauf: TIntegerField
      FieldName = 'num_mat_chauf'
      Required = True
    end
    object QHeadernom_chauf: TStringField
      FieldName = 'nom_chauf'
      Required = True
      Size = 100
    end
    object QHeaderprenom_chauf: TStringField
      FieldName = 'prenom_chauf'
      Required = True
      Size = 100
    end
    object QHeadertel_chauf: TStringField
      FieldName = 'tel_chauf'
      Required = True
      Size = 30
    end
    object QHeadermail_chauf: TStringField
      FieldName = 'mail_chauf'
      Required = True
      Size = 100
    end
    object QHeaderadresse_chauf: TStringField
      FieldName = 'adresse_chauf'
      Required = True
      Size = 100
    end
  end
  object frxDispatching: TfrxDBDataset
    UserName = 'QDispatching'
    CloseDataSource = False
    DataSet = QDispatching
    BCDToCurrency = False
    Left = 526
    Top = 159
  end
  object QDispatching: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT * FROM tb_mission_speciale MS, tb_chargement_detail C, tb' +
        '_bl_detail BLs, tb_bl BL WHERE MS.num_chargement = C.num_chargem' +
        'ent  and c.num_BL = BLs.num_bl  and BL.num_bl = BLs.num_bl  AND ' +
        'MS.num_ordre_mission = '#39'M_ORD/1'#39)
    Left = 470
    Top = 159
  end
end
