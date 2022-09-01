object frmRetourBouteille: TfrmRetourBouteille
  Left = 0
  Top = 0
  Caption = 'SAISIE RETOUR BOUTEILLE'
  ClientHeight = 329
  ClientWidth = 506
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 506
    Height = 74
    Align = alTop
    Caption = '  Lot de chargement'
    TabOrder = 0
    ExplicitWidth = 507
    object Label1: TLabel
      Left = 16
      Top = 23
      Width = 37
      Height = 13
      Caption = 'Lot N'#176' :'
    end
    object Label2: TLabel
      Left = 16
      Top = 45
      Width = 42
      Height = 13
      Caption = 'Camion :'
    end
    object Label3: TLabel
      Left = 200
      Top = 23
      Width = 36
      Height = 13
      Caption = 'Chauf :'
    end
    object Label4: TLabel
      Left = 200
      Top = 45
      Width = 64
      Height = 13
      Caption = 'Date Chgmt :'
    end
    object edlot: TEdit
      Left = 69
      Top = 20
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
      OnChange = edlotExit
      OnDblClick = edlotDblClick
      OnExit = edlotExit
    end
    object edCamion: TEdit
      Left = 69
      Top = 42
      Width = 121
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
    end
    object edChauf: TEdit
      Left = 269
      Top = 20
      Width = 121
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 2
    end
    object edDate: TEdit
      Left = 269
      Top = 42
      Width = 121
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 3
    end
  end
  object st_retBout: TStringGrid
    Left = 0
    Top = 74
    Width = 506
    Height = 228
    Align = alClient
    ColCount = 6
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
    ParentColor = True
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = st_retBoutDrawCell
    OnKeyPress = st_retBoutKeyPress
    OnSelectCell = st_retBoutSelectCell
    ExplicitWidth = 507
    ExplicitHeight = 235
    ColWidths = (
      35
      58
      259
      54
      46
      46)
  end
  object Panel1: TPanel
    Left = 0
    Top = 302
    Width = 506
    Height = 27
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 309
    ExplicitWidth = 507
    object Button1: TButton
      Left = 356
      Top = 0
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Valider'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 357
    end
    object Button2: TButton
      Left = 431
      Top = 0
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Annuler'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 432
    end
  end
  object frxEtatRetourB: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44713.435842164300000000
    ReportOptions.LastChange = 44713.435842164300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 104
    Top = 112
    Datasets = <
      item
        DataSet = frxDBEtatRetourB
        DataSetName = 'frxDBEtatRetourB'
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
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
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
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 148.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 11
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 521.575140000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 2.559060000000000000
          Top = 1.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ETAT DE RETOUR BOUTEILLE')
          ParentFont = False
        end
        object frxDBEtatRetourBdate_charg: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 85.574830000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'date_charg'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEtatRetourB."date_charg"]')
          ParentFont = False
        end
        object frxDBEtatRetourBdate_ret: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 85.811070000000000000
          Top = 37.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'date_ret'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEtatRetourB."date_ret"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Date charg. :')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 6.338590000000000000
          Top = 37.574803150000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Date ret. :')
          ParentFont = False
        end
        object frxDBEtatRetourBcamion: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'camion'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEtatRetourB."camion"]')
          ParentFont = False
        end
        object frxDBEtatRetourBchauf: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 37.795275590000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'chauf'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEtatRetourB."chauf"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 175.078850000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Camion :')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 176.858380000000000000
          Top = 37.795300000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Chauf :')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 6.559060000000000000
          Top = 56.692950000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Usager :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 85.795275590551200000
          Top = 56.692950000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'usager'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEtatRetourB."usager"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 311.803340000000000000
          Width = 215.433065980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBParam."nom"]'
            'ETS. MEL'#39'SIFA')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 334.929116770000000000
          Top = 19.897650000000000000
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
        Height = 26.456692910000000000
        Top = 120.944960000000000000
        Width = 521.575140000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 74.898045250000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Article')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 74.898045250000000000
          Width = 297.070866140000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'D'#233'signation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 372.514968780000000000
          Width = 48.930285330000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte Ch')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 421.563374110000000000
          Width = 49.380336770000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte ret')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 471.061830890000000000
          Width = 48.930285330000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Equart')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 207.874150000000000000
        Width = 521.575140000000000000
        DataSet = frxDBEtatRetourB
        DataSetName = 'frxDBEtatRetourB'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 74.898045250000000000
          Height = 26.456710000000000000
          DataField = 'codeArt'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBEtatRetourB."codeArt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 74.898045250000000000
          Width = 297.070866140000000000
          Height = 26.456710000000000000
          DataField = 'designationArt'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBEtatRetourB."designationArt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 372.514968780000000000
          Width = 48.930285330000000000
          Height = 26.456710000000000000
          DataField = 'qte_ch'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEtatRetourB."qte_ch"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 421.563374110000000000
          Width = 49.380336770000000000
          Height = 26.456710000000000000
          DataField = 'qte_ret'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEtatRetourB."qte_ret"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 471.061830890000000000
          Width = 48.930285330000000000
          Height = 26.456710000000000000
          DataField = 'qte_eq'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEtatRetourB."qte_eq"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 434.645950000000000000
        Width = 521.575140000000000000
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 445.984540000000000000
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
        Height = 117.165430000000000000
        Top = 257.008040000000000000
        Width = 521.575140000000000000
        object Memo21: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 69.921377010000000000
          Top = 64.252010000000000000
          Width = 381.732385980000000000
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
            'Vente de Gaz de Cuisine et accessoires, N'#39'Kafu ECONOF')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 153.070965000000000000
          Top = 97.811070000000000000
          Width = 215.433210000000000000
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
            'Cel. 99 19 20 21 / 91 37 22 25 Lom'#233' - Togo')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 80.370130000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            ' face Pharmacie ISIS')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sgnature Chauf')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 400.189240000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Usager :')
          ParentFont = False
        end
        object frxDBEtatRetourBusager: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 451.323130000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'usager'
          DataSet = frxDBEtatRetourB
          DataSetName = 'frxDBEtatRetourB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEtatRetourB."usager"]')
          ParentFont = False
        end
      end
    end
  end
  object QEtatRetourB: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_retour_bout ')
    SQLConnection = DM.SQLConnection1
    Left = 112
    Top = 168
  end
  object frxDBEtatRetourB: TfrxDBDataset
    UserName = 'frxDBEtatRetourB'
    CloseDataSource = False
    DataSet = QEtatRetourB
    BCDToCurrency = False
    Left = 104
    Top = 224
  end
  object SQLQuery1: TSQLQuery
    Params = <>
    Left = 304
    Top = 136
  end
end
