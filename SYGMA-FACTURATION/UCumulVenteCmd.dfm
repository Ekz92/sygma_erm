object frmCumulVenteCmd: TfrmCumulVenteCmd
  Left = 0
  Top = 0
  Caption = 'Cumul de vente par commande'
  ClientHeight = 291
  ClientWidth = 384
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 384
    Height = 64
    Align = alTop
    Caption = 'Crit'#232'res'
    TabOrder = 0
    ExplicitWidth = 483
    object SpeedButton1: TSpeedButton
      Left = 306
      Top = 15
      Width = 76
      Height = 47
      Align = alRight
      Caption = 'Rechercher'
      Flat = True
      OnClick = SpeedButton1Click
      ExplicitLeft = 448
      ExplicitHeight = 64
    end
    object Label3: TLabel
      Left = 8
      Top = 19
      Width = 28
      Height = 13
      Caption = 'Cmd :'
    end
    object Label1: TLabel
      Left = 8
      Top = 41
      Width = 25
      Height = 13
      Caption = 'Veh :'
    end
    object edNumCmd: TEdit
      Left = 46
      Top = 16
      Width = 102
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
      OnDblClick = edNumCmdDblClick
    end
    object edveh: TEdit
      Left = 46
      Top = 38
      Width = 102
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
      OnDblClick = edNumCmdDblClick
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 64
    Width = 384
    Height = 202
    Align = alClient
    BevelOuter = bvRaised
    ColCount = 3
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentColor = True
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ExplicitWidth = 483
    ExplicitHeight = 219
    ColWidths = (
      73
      242
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 266
    Width = 384
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 283
    ExplicitWidth = 483
    object Button1: TButton
      Left = 309
      Top = 0
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Imprimer'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 408
    end
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44467.248344525500000000
    ReportOptions.LastChange = 44467.248344525500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 272
    Top = 136
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cumule des ventes par commande')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 4.031884670000000000
          Top = 26.456710000000000000
          Width = 63.999191550000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' Cmd :')
          ParentFont = False
          Style = 'Header'
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 73.283894670000000000
          Top = 26.456710000000000000
          Width = 184.944151550000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."num_comc"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 90.708720000000000000
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
          Left = 1.000000000000000000
          Width = 86.224973440000000000
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
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 87.547793440000000000
          Width = 308.384179160000000000
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
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 396.018552610000000000
          Width = 77.376733580000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 86.224973440000000000
          Height = 18.897650000000000000
          DataField = 'code_art'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."code_art"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 87.547793440000000000
          Width = 308.384179160000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."designation_art"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 396.018552610000000000
          Width = 77.376733580000000000
          Height = 18.897650000000000000
          DataField = 'qte'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."qte"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo17: TfrxMemoView
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
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = SQLQuery1
    BCDToCurrency = False
    Left = 200
    Top = 136
  end
  object SQLQuery1: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT code_art, designation_art, sum(qte_art) as qte , num_comc'
      'from tb_facturation tf inner join tb_facturation_detail tfd'
      'on tf.num_fact = tfd.num_fact '
      'where tf.num_comc  = '#39'PFGB'#39
      'group by tfd.code_art ;')
    SQLConnection = DM.SQLConnection1
    Left = 240
    Top = 192
  end
end