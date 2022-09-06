object frmListeFactureCommande: TfrmListeFactureCommande
  Left = 0
  Top = 0
  Caption = 'Liste de facture par commande'
  ClientHeight = 353
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 583
    Height = 62
    Align = alTop
    Caption = 'Recherche'
    TabOrder = 0
    ExplicitWidth = 580
    object Label2: TLabel
      Left = 226
      Top = 17
      Width = 20
      Height = 13
      Caption = 'Du :'
    end
    object Label3: TLabel
      Left = 225
      Top = 41
      Width = 20
      Height = 13
      Caption = 'Au :'
    end
    object SpeedButton1: TSpeedButton
      Left = 513
      Top = 15
      Width = 68
      Height = 45
      Align = alRight
      Caption = 'Rechercher'
      Flat = True
      OnClick = SpeedButton1Click
      ExplicitLeft = 544
      ExplicitHeight = 56
    end
    object Label4: TLabel
      Left = 330
      Top = 13
      Width = 31
      Height = 13
      Caption = 'Total :'
    end
    object Label5: TLabel
      Left = 330
      Top = 29
      Width = 58
      Height = 13
      Caption = 'Total pay'#233' :'
    end
    object Label6: TLabel
      Left = 330
      Top = 45
      Width = 59
      Height = 13
      Caption = 'Total reste :'
    end
    object lbtotal: TLabel
      Left = 394
      Top = 13
      Width = 22
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lbtotpaye: TLabel
      Left = 394
      Top = 29
      Width = 22
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lbtotreste: TLabel
      Left = 394
      Top = 45
      Width = 22
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object cbStatut: TComboBox
      Left = 6
      Top = 14
      Width = 90
      Height = 21
      Style = csDropDownList
      ParentColor = True
      TabOrder = 0
      TextHint = 'Statut fact'
      StyleElements = [seBorder]
      Items.Strings = (
        ''
        'Pay'#233'e'
        'En attente'
        'Forc'#233'e')
    end
    object d1: TDateTimePicker
      Left = 247
      Top = 14
      Width = 76
      Height = 21
      Date = 44461.472379351850000000
      Time = 44461.472379351850000000
      TabOrder = 1
      StyleElements = [seBorder]
    end
    object d2: TDateTimePicker
      Left = 247
      Top = 37
      Width = 76
      Height = 21
      Date = 44461.472379351850000000
      Time = 44461.472379351850000000
      TabOrder = 2
      StyleElements = [seBorder]
    end
    object edCommande: TEdit
      Left = 6
      Top = 37
      Width = 90
      Height = 21
      ParentColor = True
      TabOrder = 3
      TextHint = 'Commande'
      OnDblClick = edCommandeDblClick
    end
    object edvehicule: TEdit
      Left = 99
      Top = 14
      Width = 90
      Height = 21
      ParentColor = True
      TabOrder = 4
      TextHint = 'V'#233'hicule'
      OnKeyPress = edvehiculeKeyPress
    end
    object edStatutCmd: TEdit
      Left = 99
      Top = 37
      Width = 90
      Height = 21
      ParentColor = True
      TabOrder = 5
      TextHint = 'Staut cmd'
    end
  end
  object St_listeFacture: TStringGrid
    Left = 0
    Top = 62
    Width = 583
    Height = 264
    Align = alClient
    ColCount = 7
    DefaultRowHeight = 15
    DoubleBuffered = False
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
    ParentColor = True
    ParentDoubleBuffered = False
    PopupMenu = PopupMenu1
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = St_listeFactureDrawCell
    ExplicitWidth = 580
    ExplicitHeight = 201
    ColWidths = (
      59
      69
      181
      71
      65
      62
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 326
    Width = 583
    Height = 27
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 263
    ExplicitWidth = 580
    object Button1: TButton
      Left = 508
      Top = 0
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Imprimer'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 505
    end
    object Button2: TButton
      Left = 387
      Top = 0
      Width = 121
      Height = 27
      Align = alRight
      Caption = 'Imprimer les d'#233'tails'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 384
    end
    object cbprint: TComboBox
      Left = 184
      Top = 3
      Width = 200
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'Imprimer les grandes lignes'
      Visible = False
      Items.Strings = (
        'Imprimer les grandes lignes'
        'Imprimer les d'#233'tails de la facture')
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 96
    object Consultation1: TMenuItem
      Caption = 'Consultation'
    end
  end
  object QConsultation: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_facturation f, tb_facturation_detail d'
      'where f.num_fact = d.num_fact')
    SQLConnection = DM.SQLConnection1
    Left = 40
    Top = 184
  end
  object frxDBConsultation: TfrxDBDataset
    UserName = 'frxDBConsultation'
    CloseDataSource = False
    DataSet = QConsultation
    BCDToCurrency = False
    Left = 48
    Top = 136
  end
  object Rconsultation: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44648.497365601800000000
    ReportOptions.LastChange = 44648.497365601800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 88
    Datasets = <
      item
        DataSet = frxDBConsultation
        DataSetName = 'frxDBConsultation'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 302.362400000000000000
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CONSULTATION DE FACTURE')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Date : ')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 42.000014650000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Statut :')
          ParentFont = False
        end
        object frxRFactureListedate_fact: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 22.299212598425200000
          Width = 65.763779530000000000
          Height = 18.897650000000000000
          DataField = 'date_fact'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."date_fact"]')
        end
        object frxDBConsultationstatut: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 41.952755905511810000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'statut'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."statut"]')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 122.622140000000000000
          Top = 22.299212598425200000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Facture :')
          ParentFont = False
        end
        object frxRFactureListenum_fact: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 186.944979530000000000
          Top = 22.299212598425200000
          Width = 99.779527560000000000
          Height = 18.897650000000000000
          DataField = 'num_fact'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."num_fact"]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 122.622140000000000000
          Top = 41.952755905511810000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
        object frxRFactureListecode_clt1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 174.779547090000000000
          Top = 41.952755905511810000
          Width = 70.299205280000000000
          Height = 18.897650000000000000
          DataField = 'code_clt'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."code_clt"]')
        end
        object frxRFactureListenom_clt: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 246.346630000000000000
          Top = 41.952755905511810000
          Width = 192.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nom_clt'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."nom_clt"]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 292.700990000000000000
          Top = 22.299212598425200000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Montant :')
          ParentFont = False
        end
        object frxDBConsultationmnt_t: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 360.732530000000000000
          Top = 22.299212598425200000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."mnt_t"]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 447.661720000000000000
          Top = 22.299212598425200000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pay'#233' :')
          ParentFont = False
        end
        object frxDBConsultationmnt_p: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 493.016080000000000000
          Top = 22.299212600000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."mnt_p"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 576.165740000000000000
          Top = 22.299212598425200000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Reste :')
          ParentFont = False
        end
        object frxDBConsultationmnt_r: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 22.299212600000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."mnt_r"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 136.063080000000000000
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
          Width = 103.436480890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Code art')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 105.641180890000000000
          Width = 368.213586530000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'D'#233'signation :')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 476.059613530000000000
          Width = 59.706856920000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 540.043998960000000000
          Width = 78.884044620000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PU')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 622.429312970000000000
          Width = 79.656470810000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PT')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = frxDBConsultation
        DataSetName = 'frxDBConsultation'
        RowCount = 0
        object frxDBConsultationcode_art: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'code_art'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."code_art"]')
          ParentFont = False
        end
        object frxDBConsultationdesignation_art: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826771650000000000
          Top = 1.133858270000000000
          Width = 368.125984250000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."designation_art"]')
          ParentFont = False
        end
        object frxDBConsultationqte_art: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 476.220472440000000000
          Top = 1.133858270000000000
          Width = 59.716535430000000000
          Height = 18.897650000000000000
          DataField = 'qte_art'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBConsultation."qte_art"]')
          ParentFont = False
        end
        object frxDBConsultationPrixU: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.094488190000000000
          Top = 1.133858270000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBConsultation."PrixU"]')
          ParentFont = False
        end
        object frxDBConsultationPrixT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 622.488188980000000000
          Top = 1.133858270000000000
          Width = 79.748031500000000000
          Height = 18.897650000000000000
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBConsultation."PrixT"]')
          ParentFont = False
        end
      end
    end
  end
  object RFactureListe: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44648.497365601800000000
    ReportOptions.LastChange = 44648.497365601800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 80
    Datasets = <
      item
        DataSet = frxRFactureListe
        DataSetName = 'frxRFactureListe'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 321.260050000000000000
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220472000000
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
          Width = 65.641180890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'Date')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 65.641180890000000000
          Width = 99.866956530000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'Facture')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 165.508137420000000000
          Width = 51.212886110000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'Client')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 217.322834650000000000
          Width = 181.417315510000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'Nom')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 398.740157480000000000
          Width = 85.039365200000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Montant')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 483.691803580000000000
          Width = 83.905506930000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Pay'#233)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 567.429312970000000000
          Width = 79.656470810000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Reste')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 72.097410810000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Marge')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = frxRFactureListe
        DataSetName = 'frxRFactureListe'
        RowCount = 0
        object frxRFactureListedate_fact: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 65.763779530000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."datefact"]')
          ParentFont = False
        end
        object frxRFactureListenum_fact: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 65.763779530000000000
          Width = 99.779527560000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."num_fact"]')
          ParentFont = False
        end
        object frxRFactureListecode_clt1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 165.543307090000000000
          Width = 51.401555280000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."code_clt"]')
          ParentFont = False
        end
        object frxRFactureListenom_clt: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 217.322834645669000000
          Width = 181.417315510000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."nom_clt"]')
          ParentFont = False
        end
        object frxRFactureListemnt_t: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 398.740157480000000000
          Width = 85.039365200000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.ForeColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."mnt_t"]')
          ParentFont = False
        end
        object frxRFactureListemnt_p: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 483.669291340000000000
          Width = 83.905506930000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."mnt_p"]')
          ParentFont = False
        end
        object frxRFactureListemnt_r: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 567.488188980000000000
          Width = 79.748024170000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."mnt_r"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 647.358506010000000000
          Width = 72.188964170000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."marge"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'LISTE DE FACTURES COMMANDE')
          ParentFont = False
        end
        object md1: TfrxMemoView
          AllowVectorExport = True
          Left = 39.456710000000000000
          Top = 25.322834650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 25.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Du :')
          ParentFont = False
        end
        object md2: TfrxMemoView
          AllowVectorExport = True
          Left = 39.456710000000000000
          Top = 44.220484650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 44.220484650000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Au :')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 25.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'V'#233'hicule :')
          ParentFont = False
        end
        object mvehicule: TfrxMemoView
          AllowVectorExport = True
          Left = 220.653680000000000000
          Top = 25.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 135.283550000000000000
          Top = 44.118120000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Commande :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 220.874150000000000000
          Top = 44.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."num_comc"]')
          ParentFont = False
        end
        object Mstatut_cmd: TfrxMemoView
          AllowVectorExport = True
          Left = 405.716760000000000000
          Top = 44.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 318.039580000000000000
          Top = 44.574830000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Statut cmd :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 241.889775980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ETS BARRY GAZ & FRERES')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 514.567026770000000000
          Top = 15.897650000000000000
          Width = 173.858235980000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COMMERCE GENERAL')
          ParentFont = False
        end
      end
      object Memo16: TfrxMemoView
        AllowVectorExport = True
        Left = 865.512370000000000000
        Top = 3.559060000000000000
        Width = 241.889775980000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'ETS BARRY GAZ & FRERES')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Memo34: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
          Fill.BackColor = 15658734
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 398.740157480000000000
          Top = 3.779527560000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          FillType = ftGlass
          Fill.Color = clNone
          Fill.Blend = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxRFactureListe."mnt_t">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779527559055000000
          Top = 3.779527560000000000
          Width = 83.905511810000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxRFactureListe."mnt_p">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 567.307086610000000000
          Top = 3.779527560000000000
          Width = 79.748031500000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxRFactureListe."mnt_r">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Totaux :')
          ParentFont = False
        end
        object frxRFactureListemarge: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 647.433070870000000000
          Top = 3.779530000000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DataSet = frxRFactureListe
          DataSetName = 'frxRFactureListe'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxRFactureListe."marge">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxRFactureListe: TfrxDBDataset
    UserName = 'frxRFactureListe'
    CloseDataSource = False
    DataSet = QFactureListe
    BCDToCurrency = False
    Left = 472
    Top = 80
  end
  object QFactureListe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select datefact, tf.num_fact, code_clt,nom_clt, mnt_t,mnt_p,mnt_' +
        'r ,sum(marge) as marge  from tb_facturation tf '
      'inner join tb_bene_fact tbf on tbf.num_fact = tf.num_fact '
      'group by num_fact ;')
    SQLConnection = DM.SQLConnection1
    Left = 520
    Top = 80
  end
  object RFactureListed: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44687.546705486100000000
    ReportOptions.LastChange = 44687.736813842600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 216
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxRFactureListed'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      Frame.Typ = []
      Frame.Width = 2.000000000000000000
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 132.283550000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 1046.929133860000000000
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
          Width = 69.785501280000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Date')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 69.785501280000000000
          Width = 100.157480310000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Facture')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 169.889768570000000000
          Width = 58.204724410000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Client')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 228.198937370000000000
          Width = 199.277961420000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            ' Nom')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 427.287968790000000000
          Width = 73.700787401574800000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Article')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 501.281679150000000000
          Width = 247.937007870000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            ' D'#233'signation')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 749.228705450000000000
          Width = 57.463753200000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 806.692458660000000000
          Width = 70.200529160000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'PU')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 876.995337820000000000
          Width = 87.729096040000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'PT')
          ParentFont = False
          Style = 'Header'
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 964.780150000000000000
          Width = 83.149606299212600000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Marge')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxRFactureListed'
        RowCount = 0
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Width = 69.785501280000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListed."statut"><>'#39'PA'#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListed."date_com"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 69.785501280000000000
          Width = 100.157480310000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListed."statut"><>'#39'PA'#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListed."num_fact"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 169.889768570000000000
          Width = 58.204724410000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListed."statut"><>'#39'PA'#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListed."code_clt"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 228.198937370000000000
          Width = 199.277961420000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListed."statut"><>'#39'PA'#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            ' [frxRFactureListed."nom_clt"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 427.287968790000000000
          Width = 73.700787401574800000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListed."statut"><>'#39'PA'#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListed."code_art"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 501.281679150000000000
          Width = 247.937007870000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListed."statut"><>'#39'PA'#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            ' [frxRFactureListed."designation_art"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 749.228705450000000000
          Width = 57.463753200000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListed."statut"><>'#39'PA'#39#13#10
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListed."qte"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 806.692458660000000000
          Width = 70.200529160000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListed."statut"><>'#39'PA'#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListed."pu"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 876.995337820000000000
          Width = 87.729096040000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListed."statut"><>'#39'PA'#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxRFactureListed."qte">*<frxRFactureListed."pu">)]')
          ParentFont = False
          Formats = <
            item
              FormatStr = '%2.0n'
              Kind = fkNumeric
            end
            item
            end
            item
            end>
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 964.803149610000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object frxRFactureListedmarge: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 964.913385830000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDash
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListed."statut"><>'#39'PA'#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListed."marge"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 393.071120000000000000
        Width = 1046.929810000000000000
        object Memo21: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo23: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339210000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'LISTE DE FACTURES COMMANDE')
          ParentFont = False
        end
        object md1: TfrxMemoView
          AllowVectorExport = True
          Left = 39.456710000000000000
          Top = 25.322834650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 25.236240000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Du :')
          ParentFont = False
        end
        object md2: TfrxMemoView
          AllowVectorExport = True
          Left = 39.456710000000000000
          Top = 44.220484650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 44.220484650000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Au :')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 25.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'V'#233'hicule :')
          ParentFont = False
        end
        object mvehicule: TfrxMemoView
          AllowVectorExport = True
          Left = 220.653680000000000000
          Top = 25.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 135.283550000000000000
          Top = 44.118120000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Commande :')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 220.874150000000000000
          Top = 44.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListed."num_comc"]')
          ParentFont = False
        end
        object Mstatut_cmd: TfrxMemoView
          AllowVectorExport = True
          Left = 223.740260000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 64.252010000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Statut cmd :')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 797.441250000000000000
          Width = 241.889775980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ETS BARRY GAZ & FRERES')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 839.567026770000000000
          Top = 15.897650000000000000
          Width = 173.858235980000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COMMERCE GENERAL')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        object Memo33: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 71.811070000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 8.338590000000000000
          Top = 7.338590000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de la commande :')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 28.236240000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total des Factures :')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 50.692950000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total des Factures Pay'#233'es :')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 378.732530000000000000
          Top = 7.181102360000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total des Factures Impay'#233'es :')
          ParentFont = False
        end
        object Mmnt_tc: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.086614170000000000
          Top = 7.181102360000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Mmnt_t: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.086614170000000000
          Top = 28.236240000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Mmnt_p: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.086614170000000000
          Top = 50.645669291338600000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Mmnt_r: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 597.149970000000000000
          Top = 7.181102360000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxRFactureListed'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 28.236240000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total b'#233'n'#233'fice :')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 596.945270000000000000
          Top = 28.236240000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxRFactureListed."marge">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object QFactureListed: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        ' select  * from tb_commande_camion tcc inner join tb_facturation' +
        ' tf on tcc.num_comc = tf.num_comc  '
      ' inner join tb_bene_fact tbf on tbf.num_fact = tf.num_fact '
      
        ' where tf.date_fact between '#39'2021-09-22 00:00:00'#39' and '#39'2022-05-0' +
        '8 23:59:59'#39' '
      ' and tcc.num_comc = 4'
      ' and tf.statut_canc = 0  '
      ' order by tf.date_fact desc ;')
    SQLConnection = DM.SQLConnection1
    Left = 256
    Top = 216
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxRFactureListed'
    CloseDataSource = False
    DataSet = QFactureListed
    BCDToCurrency = False
    Left = 296
    Top = 216
  end
end
