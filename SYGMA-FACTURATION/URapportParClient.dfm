object frmRapportParClient: TfrmRapportParClient
  Left = 0
  Top = 0
  Caption = 'RAPPORT PAR CLIENT'
  ClientHeight = 265
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 0
    Top = 249
    Width = 30
    Height = 13
    Caption = '          '
  end
  object Label6: TLabel
    Left = 313
    Top = 0
    Width = 24
    Height = 13
    Caption = '        '
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 0
    Width = 335
    Height = 97
    Caption = 'Magasin'
    TabOrder = 0
    object Bevel1: TBevel
      Left = 8
      Top = 20
      Width = 318
      Height = 69
      Shape = bsFrame
    end
    object Label1: TLabel
      Left = 18
      Top = 31
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label2: TLabel
      Left = 18
      Top = 56
      Width = 43
      Height = 13
      Caption = 'D'#233'sign. :'
    end
    object cbTout: TCheckBox
      Left = 253
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Tout'
      TabOrder = 0
      OnClick = cbToutClick
    end
    object edDesign_mag: TEdit
      Left = 74
      Top = 53
      Width = 241
      Height = 21
      ParentColor = True
      TabOrder = 1
    end
  end
  object cbcode_mag: TComboBox
    Left = 79
    Top = 28
    Width = 170
    Height = 21
    ParentColor = True
    TabOrder = 1
    OnChange = cbcode_magChange
    OnCloseUp = cbcode_magCloseUp
    OnKeyPress = cbcode_magKeyPress
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 96
    Width = 336
    Height = 96
    Caption = 'Client'
    TabOrder = 2
    object Bevel2: TBevel
      Left = 8
      Top = 19
      Width = 321
      Height = 68
      Shape = bsFrame
    end
    object Label3: TLabel
      Left = 19
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label4: TLabel
      Left = 19
      Top = 31
      Width = 28
      Height = 13
      Caption = 'Nom :'
    end
    object cbnomclient: TComboBox
      Left = 75
      Top = 28
      Width = 241
      Height = 21
      CharCase = ecUpperCase
      ParentColor = True
      TabOrder = 0
      OnCloseUp = cbnomclientCloseUp
      OnKeyPress = cbnomclientKeyPress
    end
    object edcode_client: TEdit
      Left = 75
      Top = 53
      Width = 241
      Height = 21
      ParentColor = True
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 256
    Top = 239
    Width = 84
    Height = 25
    Caption = 'G'#233'n'#233'rer'
    TabOrder = 3
    OnClick = Button1Click
  end
  object GroupBox3: TGroupBox
    Left = 5
    Top = 191
    Width = 335
    Height = 48
    Caption = 'P'#233'riode'
    TabOrder = 4
    object Label8: TLabel
      Left = 18
      Top = 20
      Width = 36
      Height = 13
      Caption = 'D'#233'but :'
    end
    object Label9: TLabel
      Left = 188
      Top = 20
      Width = 21
      Height = 13
      Caption = 'Fin :'
    end
    object d1: TDateTimePicker
      Left = 72
      Top = 17
      Width = 95
      Height = 21
      Date = 44087.911694224540000000
      Time = 44087.911694224540000000
      Color = clBtnFace
      ParentColor = True
      TabOrder = 0
    end
    object d2: TDateTimePicker
      Left = 224
      Top = 17
      Width = 102
      Height = 21
      Date = 44087.911694224540000000
      Time = 44087.911694224540000000
      Color = clBtnFace
      ParentColor = True
      TabOrder = 1
    end
  end
  object QRapport: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 125
    Top = 91
  end
  object Rapport: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44088.425466388900000000
    ReportOptions.LastChange = 44088.491819606500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 205
    Top = 83
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxHeader'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxRapport'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Color = clNone
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          Style = 'Data'
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Rapport par client')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.228166060000000000
          Top = 27.574830000000000000
          Width = 85.342924600000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Client :')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 151.988530660000000000
          Top = 27.574830000000000000
          Width = 107.415133540000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'nom_clt'
          DataSet = frxDBDataset1
          DataSetName = 'frxRapport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRapport."nom_clt"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo38: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 27.456710000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxHeader."code_client"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 2.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Article')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.456710000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' BL')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 158.362204720000000000
          Top = 2.456710000000000000
          Width = 279.307086614173200000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'D'#233'signation')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 2.456710000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Qte')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 2.456710000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Kg')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 558.370440000000000000
          Top = 2.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Kg*')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 620.063390000000000000
          Top = 2.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxRapport'
        RowCount = 0
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Width = 79.039236060000000000
          Height = 18.897650000000000000
          DataField = 'num_bl'
          DataSet = frxDBDataset1
          DataSetName = 'frxRapport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRapport."num_bl"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590551181102360000
          Width = 83.133103980000000000
          Height = 18.897650000000000000
          DataField = 'code_art'
          DataSet = frxDBDataset1
          DataSetName = 'frxRapport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRapport."code_art"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 158.225465470000000000
          Width = 279.380011030000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBDataset1
          DataSetName = 'frxRapport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRapport."designation_art"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677165354330700000
          Width = 53.395631520000000000
          Height = 18.897650000000000000
          DataField = 'Kilo_art'
          DataSet = frxDBDataset1
          DataSetName = 'frxRapport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRapport."Kilo_art"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425196850393700000
          Width = 59.813347820000000000
          Height = 18.897650000000000000
          DataField = 'qte_art'
          DataSet = frxDBDataset1
          DataSetName = 'frxRapport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRapport."qte_art"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 558.236220472440900000
          Width = 62.253204170000000000
          Height = 18.897650000000000000
          DataField = 'kilo_total'
          DataSet = frxDBDataset1
          DataSetName = 'frxRapport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRapport."kilo_total"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 620.220472440944900000
          Width = 96.781642040000000000
          Height = 18.897650000000000000
          DataField = 'date_bl'
          DataSet = frxDBDataset1
          DataSetName = 'frxRapport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRapport."date_bl"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo27: TfrxMemoView
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
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 226.771800000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.DropShadow = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 617.063390000000000000
          Top = 5.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 52479
          Frame.Typ = []
          Fill.BackColor = clBtnFace
          Memo.UTF8W = (
            '[SUM(<frxRapport."qte_art">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 617.283860000000000000
          Top = 26.834648110000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 52479
          Frame.Typ = []
          Fill.BackColor = clBtnFace
          Memo.UTF8W = (
            '[SUM(<frxRapport."kilo_total">,MasterData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 5.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 52479
          Frame.Typ = []
          Fill.BackColor = clBtnFace
          Memo.UTF8W = (
            'Qte Art:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 26.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = 52479
          Frame.Typ = []
          Fill.BackColor = clBtnFace
          Memo.UTF8W = (
            'Total Kgs :')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxRapport'
    CloseDataSource = False
    DataSet = QRapport
    BCDToCurrency = False
    Left = 284
    Top = 88
  end
  object QHeader: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 117
    Top = 147
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxHeader'
    CloseDataSource = False
    DataSet = QHeader
    BCDToCurrency = False
    Left = 180
    Top = 144
  end
end
