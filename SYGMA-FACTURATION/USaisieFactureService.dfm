object frmSaisieFactureService: TfrmSaisieFactureService
  Left = 0
  Top = 0
  Caption = 'Saisie de Facture Service'
  ClientHeight = 408
  ClientWidth = 615
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
  object GbClient: TGroupBox
    Left = 0
    Top = 0
    Width = 615
    Height = 60
    Align = alTop
    Caption = 'Client'
    TabOrder = 0
    object Label7: TLabel
      Left = 10
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label10: TLabel
      Left = 10
      Top = 37
      Width = 28
      Height = 13
      Caption = 'Nom :'
    end
    object Label9: TLabel
      Left = 420
      Top = 15
      Width = 30
      Height = 13
      Caption = 'Date :'
    end
    object ednomClt: TEdit
      Left = 80
      Top = 34
      Width = 235
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
    end
    object edCodeClt: TEdit
      Left = 80
      Top = 12
      Width = 130
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
      OnDblClick = edCodeCltDblClick
    end
    object eddate: TDateTimePicker
      Left = 463
      Top = 12
      Width = 130
      Height = 21
      Date = 44779.345097013890000000
      Time = 44779.345097013890000000
      ShowCheckbox = True
      Checked = False
      Color = clBtnFace
      TabOrder = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 60
    Width = 615
    Height = 60
    Align = alTop
    Caption = 'Type Service'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 15
      Width = 31
      Height = 13
      Caption = 'Type :'
    end
    object Label2: TLabel
      Left = 16
      Top = 37
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object cbTypeService: TComboBox
      Left = 80
      Top = 12
      Width = 235
      Height = 21
      Style = csDropDownList
      ParentColor = True
      TabOrder = 0
      OnCloseUp = cbTypeServiceCloseUp
    end
    object edCodeTypeSce: TEdit
      Left = 80
      Top = 34
      Width = 130
      Height = 21
      ParentColor = True
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 120
    Width = 615
    Height = 52
    Align = alTop
    Caption = 'Service'
    TabOrder = 2
    object Label3: TLabel
      Left = 10
      Top = 12
      Width = 56
      Height = 13
      Caption = 'D'#233'signation'
    end
    object Label4: TLabel
      Left = 396
      Top = 12
      Width = 13
      Height = 13
      Caption = 'PU'
    end
    object Label5: TLabel
      Left = 463
      Top = 12
      Width = 18
      Height = 13
      Caption = 'Qt'#233
    end
    object edDesign_sce: TEdit
      Left = 8
      Top = 26
      Width = 385
      Height = 21
      ParentColor = True
      TabOrder = 0
    end
    object edpu: TEdit
      Left = 394
      Top = 26
      Width = 66
      Height = 21
      ParentColor = True
      TabOrder = 1
    end
    object edqte: TEdit
      Left = 461
      Top = 26
      Width = 51
      Height = 21
      NumbersOnly = True
      ParentColor = True
      TabOrder = 2
      OnKeyPress = edqteKeyPress
    end
    object Button1: TButton
      Left = 512
      Top = 25
      Width = 51
      Height = 23
      Caption = 'Ajouter'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 562
      Top = 25
      Width = 51
      Height = 23
      Caption = 'Rafresh'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 383
    Width = 615
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Label6: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 16
      Caption = 'Total :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbMontant: TLabel
      Left = 52
      Top = 8
      Width = 8
      Height = 16
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button3: TButton
      Left = 463
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Valider'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 539
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Annuler'
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object st_factureService: TStringGrid
    Left = 0
    Top = 172
    Width = 615
    Height = 211
    Align = alClient
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentColor = True
    PopupMenu = PopupMenu1
    TabOrder = 4
    StyleElements = [seBorder]
    OnDrawCell = st_factureServiceDrawCell
    ColWidths = (
      391
      64
      64
      89
      64)
  end
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 232
    object Supprimercetteligne1: TMenuItem
      Caption = 'Supprimer cette ligne'
      OnClick = Supprimercetteligne1Click
    end
  end
  object frxFacturationService: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44436.656959641200000000
    ReportOptions.LastChange = 44663.411612002300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  i : integer;                                '
      'begin'
      '{  while i<11 do'
      ' begin'
      '    //ShowBand(Child1);'
      '    Child1.Create(sender);                            '
      '    i:=i+1;'
      ' end;}'
      ''
      
        '// Engine.CurY := Engine.PageHeight - Reportsummary1.height - Pa' +
        'geHeader1.Height - 0.00001;      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 472
    Top = 216
    Datasets = <
      item
        DataSet = DM.frxDBParam
        DataSetName = 'frxDBParam'
      end
      item
        DataSet = frxQFactureService
        DataSetName = 'frxQFactureService'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -100
      Font.Name = 'Arial'
      Font.Style = []
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 91.779569060000000000
        Top = 18.897650000000000000
        Width = 778.583180000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 85.590600000000000000
          Top = 34.015748030000000000
          Width = 86.583300110000000000
          Height = 15.118120000000000000
          DataSet = frxQFactureService
          DataSetName = 'frxQFactureService'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxQFactureService."date_fact"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 26.779527560000000000
          Top = 15.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FACTURE N'#176' :')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 122.889920000000000000
          Top = 15.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxQFactureService."num_fact"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 25.779527560000000000
          Top = 34.141732280000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Date :')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 176.504020000000000000
          Top = 34.141732280000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tarif:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 25.779527560000000000
          Top = 51.913420000000000000
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
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 93.574830000000000000
          Top = 51.992125980000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxQFactureService."code_clt"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 160.929190000000000000
          Top = 51.992125980000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxQFactureService."nom_clt"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 221.858380000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxQFactureService."code_tclt"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 71.811070000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel : ')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 61.063080000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxQFactureService."tel_clt"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 523.732530000000000000
          Top = 15.118120000000000000
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 563.858306770000000000
          Top = 35.015770000000000000
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
        Top = 132.283550000000000000
        Width = 778.583180000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 14.779527560000000000
          Width = 88.818919610000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Article')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 104.763779530000000000
          Width = 351.118200550000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
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
          Left = 523.456692910000000000
          Width = 53.291355670000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 577.031850000000000000
          Width = 91.644315950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'PU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 669.165740000000000000
          Width = 93.354347800000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'PT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 456.748300000000000000
          Width = 66.141739610000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Alias')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 778.583180000000000000
        DataSet = frxQFactureService
        DataSetName = 'frxQFactureService'
        RowCount = 0
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 14.779527560000000000
          Width = 88.818919610000000000
          Height = 22.677180000000000000
          DataField = 'code_art'
          DataSet = frxQFactureService
          DataSetName = 'frxQFactureService'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxQFactureService."code_art"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 104.763779530000000000
          Width = 351.118200550000000000
          Height = 22.677180000000000000
          DataSet = frxQFactureService
          DataSetName = 'frxQFactureService'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxQFactureService."designation_art"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 523.456692910000000000
          Width = 52.913402910000000000
          Height = 22.677180000000000000
          DataField = 'qte_art'
          DataSet = frxQFactureService
          DataSetName = 'frxQFactureService'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxQFactureService."qte_art"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxQFacturePrixU: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 577.220472440000000000
          Width = 91.464581570000000000
          Height = 22.677180000000000000
          DataSet = frxQFactureService
          DataSetName = 'frxQFactureService'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxQFactureService."PrixU"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxQFacturePrixT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 669.173228350000000000
          Width = 93.354347800000000000
          Height = 22.677180000000000000
          DataSet = frxQFactureService
          DataSetName = 'frxQFactureService'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxQFactureService."PrixT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxQFacturealias_art: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 456.614173230000000000
          Width = 66.141734720000000000
          Height = 22.677180000000000000
          DataSet = frxQFactureService
          DataSetName = 'frxQFactureService'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 87.370130000000000000
        Top = 260.787570000000000000
        Width = 778.583180000000000000
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 14.740157480000000000
          Width = 747.212627720000000000
          Height = 23.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          ParentFont = False
        end
        object frxQFactureqte_total: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.519650870000000000
          Width = 296.315129060000000000
          Height = 22.677180000000000000
          DataSet = frxQFactureService
          DataSetName = 'frxQFactureService'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de article : [SUM(<frxQFactureService."qte_art">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxQFactureprix_total: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 576.755934800000000000
          Width = 183.307123230000000000
          Height = 22.677180000000000000
          DataSet = frxQFactureService
          DataSetName = 'frxQFactureService'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxQFactureService."PrixT">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 64.252082010000000000
          Top = 30.574830000000000000
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
        object Memo28: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 77.480365000000000000
          Top = 64.133890000000000000
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
        object Memo27: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 46.692950000000000000
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
  object QFacture: TSQLQuery
    Active = True
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        'Select * from tb_facturation F,tb_facturation_detail fd, tb_arti' +
        'cle A,tb_client C'
      'where F.num_fact = fd.num_fact'
      ' and A.code_art = fd.code_art '
      'and C.code_clt = F.code_clt'
      'and F.num_fact = '#39'CCP-F3'#39)
    SQLConnection = DM.SQLConnection1
    Left = 368
    Top = 192
  end
  object frxQFactureService: TfrxDBDataset
    UserName = 'frxQFactureService'
    CloseDataSource = False
    DataSet = QFacture
    BCDToCurrency = False
    Left = 336
    Top = 264
  end
end
