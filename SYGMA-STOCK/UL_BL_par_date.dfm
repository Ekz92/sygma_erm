object frmL_BL_par_date: TfrmL_BL_par_date
  Left = 0
  Top = 0
  Caption = 'Liste des BL par date'
  ClientHeight = 271
  ClientWidth = 607
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 607
    Height = 47
    Align = alTop
    Caption = 'Recherche'
    TabOrder = 0
    ExplicitWidth = 623
    object TLabel
      Left = 198
      Top = 22
      Width = 20
      Height = 13
      Caption = 'Du :'
    end
    object TLabel
      Left = 356
      Top = 22
      Width = 20
      Height = 13
      Caption = 'Au :'
    end
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 37
      Height = 13
      Caption = 'Statut :'
    end
    object d1: TDateTimePicker
      Left = 227
      Top = 17
      Width = 100
      Height = 21
      Date = 43503.711387719910000000
      Time = 43503.711387719910000000
      Color = 65408
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      StyleElements = [seBorder]
    end
    object d2: TDateTimePicker
      Left = 387
      Top = 17
      Width = 100
      Height = 21
      CalColors.MonthBackColor = 65408
      Date = 43503.711387719910000000
      Time = 43503.711387719910000000
      Color = 65408
      TabOrder = 1
      StyleElements = [seBorder]
    end
    object cbStatut: TComboBox
      Left = 58
      Top = 17
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Items.Strings = (
        ''
        'Livr'#233's'
        'Non livr'#233's')
    end
    object Button1: TButton
      Left = 530
      Top = 15
      Width = 75
      Height = 30
      Align = alRight
      Caption = 'Recherche'
      TabOrder = 3
      OnClick = Button1Click
      ExplicitLeft = 264
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 244
    Width = 607
    Height = 27
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 243
    ExplicitWidth = 623
    object SpeedButton1: TSpeedButton
      Left = 510
      Top = 0
      Width = 97
      Height = 27
      Align = alRight
      Caption = 'Tout imprim'#233
      OnClick = SpeedButton1Click
      ExplicitLeft = 524
      ExplicitTop = 1
      ExplicitHeight = 25
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 47
    Width = 607
    Height = 197
    Align = alClient
    Color = clBtnFace
    ColCount = 8
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    TabOrder = 2
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ExplicitLeft = -2
    ExplicitTop = 40
    ExplicitWidth = 625
    ExplicitHeight = 185
    ColWidths = (
      94
      121
      55
      45
      56
      55
      105
      65)
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 96
    object Imprimerlaligne1: TMenuItem
      Caption = 'Imprimer la ligne'
    end
  end
  object QRech_BL_all: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_bl')
    SQLConnection = DM.SQLConnection1
    Left = 240
    Top = 96
  end
  object frxDBE_ListeBL_all: TfrxDBDataset
    UserName = 'frxDBE_ListeBL_all'
    CloseDataSource = False
    DataSet = QRech_BL_all
    BCDToCurrency = False
    Left = 240
    Top = 160
  end
  object frxE_Rech_BL_all: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44427.880252048610000000
    ReportOptions.LastChange = 44427.880252048610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 328
    Top = 152
    Datasets = <
      item
        DataSet = frxDBE_ListeBL_all
        DataSetName = 'frxDBE_ListeBL_all'
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
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 8.882035000000000000
          Top = 4.559060000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTE DES BONS DE LIVRAISONS')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 14.472480000000000000
          Top = 54.574830000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Du :')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 13.953000000000000000
          Top = 78.574803150000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Au :')
          ParentFont = False
        end
        object date1: TfrxMemoView
          AllowVectorExport = True
          Left = 78.992125984252000000
          Top = 54.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object date2: TfrxMemoView
          AllowVectorExport = True
          Left = 78.992125984252000000
          Top = 78.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 13.338590000000000000
          Top = 30.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Statut :')
          ParentFont = False
        end
        object M_Statut: TfrxMemoView
          AllowVectorExport = True
          Left = 78.944960000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 15.118120000000000000
          Width = 211.653680000000000000
          Height = 83.149660000000000000
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 82.302638640000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' BL')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 84.184518640000000000
          Width = 188.541132660000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Client')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 274.048471300000000000
          Width = 83.109460100000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Magasin')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 359.157931400000000000
          Width = 64.589522980000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tot. Kgs')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 424.747454380000000000
          Width = 91.413632830000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Date')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 519.602027210000000000
          Width = 71.543290000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tot. Bout.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 591.602027210000000000
          Width = 59.763760000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Prix Liv.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 652.602027210794000000
          Width = 65.508209009678300000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Usager')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = frxDBE_ListeBL_all
        DataSetName = 'frxDBE_ListeBL_all'
        RowCount = 0
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 3.000000000000000000
          Width = 82.302638640000000000
          Height = 18.897650000000000000
          DataField = 'num_bl'
          DataSet = frxDBE_ListeBL_all
          DataSetName = 'frxDBE_ListeBL_all'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBE_ListeBL_all."num_bl"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 84.184518640000000000
          Top = 3.000000000000000000
          Width = 188.541132660000000000
          Height = 18.897650000000000000
          DataField = 'nom_clt'
          DataSet = frxDBE_ListeBL_all
          DataSetName = 'frxDBE_ListeBL_all'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBE_ListeBL_all."nom_clt"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 274.048471300000000000
          Top = 3.000000000000000000
          Width = 83.109460100000000000
          Height = 18.897650000000000000
          DataField = 'code_mag'
          DataSet = frxDBE_ListeBL_all
          DataSetName = 'frxDBE_ListeBL_all'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBE_ListeBL_all."code_mag"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 359.157931400000000000
          Top = 3.000000000000000000
          Width = 64.589522980000000000
          Height = 18.897650000000000000
          DataField = 'total_kilo'
          DataSet = frxDBE_ListeBL_all
          DataSetName = 'frxDBE_ListeBL_all'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBE_ListeBL_all."total_kilo"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 424.747454380000000000
          Top = 3.000000000000000000
          Width = 91.413632830000000000
          Height = 18.897650000000000000
          DataField = 'date_bl'
          DataSet = frxDBE_ListeBL_all
          DataSetName = 'frxDBE_ListeBL_all'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBE_ListeBL_all."date_bl"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 519.602027210000000000
          Top = 3.000000000000000000
          Width = 71.543290000000000000
          Height = 18.897650000000000000
          DataField = 'Total_bouteille'
          DataSet = frxDBE_ListeBL_all
          DataSetName = 'frxDBE_ListeBL_all'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBE_ListeBL_all."Total_bouteille"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 591.602027210000000000
          Top = 3.000000000000000000
          Width = 59.763760000000000000
          Height = 18.897650000000000000
          DataField = 'prix_livraison'
          DataSet = frxDBE_ListeBL_all
          DataSetName = 'frxDBE_ListeBL_all'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBE_ListeBL_all."prix_livraison"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 652.602027210000000000
          Top = 3.000000000000000000
          Width = 65.508209010000000000
          Height = 18.897650000000000000
          DataField = 'Usager'
          DataSet = frxDBE_ListeBL_all
          DataSetName = 'frxDBE_ListeBL_all'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBE_ListeBL_all."Usager"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
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
  object frxE_Rech_BL_Line: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44427.882091990740000000
    ReportOptions.LastChange = 44427.882091990740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 480
    Top = 144
    Datasets = <
      item
        DataSet = frxDBE_ListeBL_Line
        DataSetName = 'frxDBE_ListeBL_par_numbl'
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
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 42.456710000000000000
          Width = 61.633936460000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' BL :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 2.940986460000000000
          Top = 88.149660000000000000
          Width = 77.240211920000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Client :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 2.811068380000000000
          Top = 62.913420000000000000
          Width = 78.613488530000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Magasin :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 42.456710000000000000
          Width = 61.633936460000000000
          Height = 18.897650000000000000
          DataField = 'num_bl'
          DataSet = frxDBE_ListeBL_Line
          DataSetName = 'frxDBE_ListeBL_par_numbl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBE_ListeBL_par_numbl."num_bl"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 103.208766460000000000
          Top = 88.149660000000000000
          Width = 107.476451920000000000
          Height = 18.897650000000000000
          DataField = 'nom_Client'
          DataSet = frxDBE_ListeBL_Line
          DataSetName = 'frxDBE_ListeBL_par_numbl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBE_ListeBL_par_numbl."nom_Client"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 104.858378380000000000
          Top = 66.692950000000000000
          Width = 78.613488530000000000
          Height = 18.897650000000000000
          DataField = 'code_mag'
          DataSet = frxDBE_ListeBL_Line
          DataSetName = 'frxDBE_ListeBL_par_numbl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBE_ListeBL_par_numbl."code_mag"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 202.369516910000000000
          Top = 67.692950000000000000
          Width = 179.674781590000000000
          Height = 18.897650000000000000
          DataField = 'designation_mag'
          DataSet = frxDBE_ListeBL_Line
          DataSetName = 'frxDBE_ListeBL_par_numbl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBE_ListeBL_par_numbl."designation_mag"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'AFFICHAGE DE BL ')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 185.196970000000000000
          Height = 83.149660000000000000
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 4.000000000000000000
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 5.398658500000000000
          Width = 68.783221540000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Code')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 129.181880040000000000
          Width = 212.313005240000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'D'#233'signation')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 359.920055280000000000
          Width = 51.190180940000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 455.764070000000000000
          Width = 32.292530940000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Kgs')
          ParentFont = False
          Style = 'Header'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 73.867360940000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Kgs')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = frxDBE_ListeBL_Line
        DataSetName = 'frxDBE_ListeBL_par_numbl'
        RowCount = 0
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 5.398658500000000000
          Top = 3.000000000000000000
          Width = 68.783221540000000000
          Height = 18.897650000000000000
          DataField = 'code_art'
          DataSet = frxDBE_ListeBL_Line
          DataSetName = 'frxDBE_ListeBL_par_numbl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBE_ListeBL_par_numbl."code_art"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 129.181880040000000000
          Top = 3.000000000000000000
          Width = 212.313005240000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBE_ListeBL_Line
          DataSetName = 'frxDBE_ListeBL_par_numbl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBE_ListeBL_par_numbl."designation_art"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 359.920055280000000000
          Top = 3.000000000000000000
          Width = 51.190180940000000000
          Height = 18.897650000000000000
          DataField = 'qte_art'
          DataSet = frxDBE_ListeBL_Line
          DataSetName = 'frxDBE_ListeBL_par_numbl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBE_ListeBL_par_numbl."qte_art"]')
          ParentFont = False
          Style = 'Data'
        end
        object frxDBE_ListeBL_par_numblKilo_art: TfrxMemoView
          AllowVectorExport = True
          Left = 453.425480000000000000
          Top = 3.000000000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'Kilo_art'
          DataSet = frxDBE_ListeBL_Line
          DataSetName = 'frxDBE_ListeBL_par_numbl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBE_ListeBL_par_numbl."Kilo_art"]')
          ParentFont = False
        end
        object frxDBE_ListeBL_par_numblkilo_total: TfrxMemoView
          AllowVectorExport = True
          Left = 538.134200000000000000
          Top = 3.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'kilo_total'
          DataSet = frxDBE_ListeBL_Line
          DataSetName = 'frxDBE_ListeBL_par_numbl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBE_ListeBL_par_numbl."kilo_total"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo19: TfrxMemoView
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
  object frxDBE_ListeBL_Line: TfrxDBDataset
    UserName = 'frxDBE_ListeBL_par_numbl'
    CloseDataSource = False
    DataSet = QRech_BL_Line
    BCDToCurrency = False
    Left = 560
    Top = 96
  end
  object QRech_BL_Line: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_bl_detail')
    SQLConnection = DM.SQLConnection1
    Left = 568
    Top = 144
    object QRech_BL_Lineid_bl: TIntegerField
      FieldName = 'id_bl'
      Required = True
    end
    object QRech_BL_Linenum_bl: TStringField
      FieldName = 'num_bl'
      Required = True
    end
    object QRech_BL_Linenom_Client: TStringField
      FieldName = 'nom_Client'
      Required = True
      Size = 50
    end
    object QRech_BL_Linecode_mag: TStringField
      FieldName = 'code_mag'
      Required = True
    end
    object QRech_BL_Linedesignation_mag: TStringField
      FieldName = 'designation_mag'
      Required = True
      Size = 100
    end
    object QRech_BL_Linecode_art: TStringField
      FieldName = 'code_art'
      Required = True
    end
    object QRech_BL_Linedesignation_art: TStringField
      FieldName = 'designation_art'
      Required = True
      Size = 100
    end
    object QRech_BL_LineKilo_art: TFloatField
      FieldName = 'Kilo_art'
      Required = True
    end
    object QRech_BL_Lineqte_art: TIntegerField
      FieldName = 'qte_art'
      Required = True
    end
    object QRech_BL_Linekilo_total: TFloatField
      FieldName = 'kilo_total'
      Required = True
    end
    object QRech_BL_LineControle: TIntegerField
      FieldName = 'Controle'
      Required = True
    end
  end
end
