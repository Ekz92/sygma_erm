object frmFicheRecap_es: TfrmFicheRecap_es
  Left = 0
  Top = 0
  Caption = 'R'#233'cap Entr'#233'e Sortie'
  ClientHeight = 180
  ClientWidth = 339
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 339
    Height = 148
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 20
      Height = 13
      Caption = 'Du :'
    end
    object Label2: TLabel
      Left = 24
      Top = 37
      Width = 20
      Height = 13
      Caption = 'Au :'
    end
    object Label3: TLabel
      Left = 24
      Top = 60
      Width = 34
      Height = 13
      Caption = 'Client :'
    end
    object Label4: TLabel
      Left = 24
      Top = 82
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label5: TLabel
      Left = 24
      Top = 105
      Width = 46
      Height = 13
      Caption = 'Vehicule :'
    end
    object Label6: TLabel
      Left = 24
      Top = 126
      Width = 43
      Height = 13
      Caption = 'Marque :'
    end
    object d1: TDateTimePicker
      Left = 91
      Top = 13
      Width = 115
      Height = 21
      Date = 44801.587425474540000000
      Time = 44801.587425474540000000
      Color = clBtnFace
      ParentColor = True
      TabOrder = 0
    end
    object d2: TDateTimePicker
      Left = 91
      Top = 35
      Width = 115
      Height = 21
      Date = 44801.587425474540000000
      Time = 44801.587425474540000000
      Color = clBtnFace
      ParentColor = True
      TabOrder = 1
    end
    object cbClient: TComboBox
      Left = 91
      Top = 57
      Width = 240
      Height = 21
      CharCase = ecUpperCase
      ParentColor = True
      TabOrder = 2
      OnKeyPress = cbClientKeyPress
    end
    object edcodeClt: TEdit
      Left = 91
      Top = 79
      Width = 115
      Height = 21
      ParentColor = True
      TabOrder = 3
    end
    object cbVeh: TComboBox
      Left = 91
      Top = 101
      Width = 115
      Height = 21
      CharCase = ecUpperCase
      ParentColor = True
      TabOrder = 4
      OnChange = cbVehChange
      OnKeyPress = cbVehKeyPress
    end
    object edMarque: TEdit
      Left = 91
      Top = 123
      Width = 240
      Height = 21
      ParentColor = True
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 148
    Width = 339
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Button1: TButton
      Left = 181
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Valider'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 256
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Annuler'
      TabOrder = 1
    end
  end
  object frxRecap: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44801.870645057900000000
    ReportOptions.LastChange = 44801.870645057900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 197
    Top = 25
    Datasets = <
      item
        DataSet = frxDBRecap
        DataSetName = 'frxDBRecap'
      end
      item
        DataSet = frxDBSUM
        DataSetName = 'frxDBSUM'
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
      PaperWidth = 690.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 2532.285100000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 68.031540000000000000
        Width = 2532.285100000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 42.362204720000000000
          Width = 80.566435400000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#176' Pi'#232'ce')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 81.093955400000000000
          Top = 42.362204720000000000
          Width = 68.787401570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 151.600715170000000000
          Top = 42.362204720000000000
          Width = 135.897083340000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'nom_clt')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 289.332368510000000000
          Top = 42.362204720000000000
          Width = 84.586942920000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'N'#176' Veh')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 375.005891420000000000
          Top = 42.362204720000000000
          Width = 143.622078980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Marque veh')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 2307.749430070000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 2345.481083410000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 2306.929133860000000000
          Top = 21.574803150000000000
          Width = 112.629923700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B6E')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 2196.433830000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 2234.165483340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 2271.237712190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 2196.613533790000000000
          Top = 21.574803150000000000
          Width = 108.850393700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B25')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 2084.268400000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 2122.000053340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 2159.072282190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 2084.448103790000000000
          Top = 21.574803150000000000
          Width = 112.629923700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B50')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 1973.662030000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 2011.393683340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 2048.465912190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 1973.841733790000000000
          Top = 21.574803150000000000
          Width = 108.850393700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B12')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 1861.055660000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 1898.787313340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 1935.859542190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 1861.235363790000000000
          Top = 21.574803150000000000
          Width = 112.629923700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B6R')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 1748.449290000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 1786.180943340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 1823.253172190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 1747.628993790000000000
          Top = 21.574803150000000000
          Width = 112.629923700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B6')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 2382.553312260000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 2420.263239050000000000
          Top = 42.362204720000000000
          Width = 36.233801950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 2421.181102360000000000
          Top = 21.574803150000000000
          Width = 108.850393700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B12E')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 2458.378921000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 2494.835178460000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 1636.425790000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 1674.157443340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 1711.229672190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 1636.605493790000000000
          Top = 21.574803150000000000
          Width = 108.850393700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B3')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 1525.701300000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 1563.432953340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 1600.505182190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 1525.881003790000000000
          Top = 21.574803150000000000
          Width = 108.850393700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B3A')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 1301.796430070000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 1339.528083410000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 1301.976133860000000000
          Top = 21.574803150000000000
          Width = 112.629923700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B6E')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 1190.480830000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 1228.212483340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 1265.284712190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 1190.660533790000000000
          Top = 21.574803150000000000
          Width = 112.629923700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B25')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 1078.315400000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 1116.047053340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 1153.119282190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 1078.495103790000000000
          Top = 21.574803150000000000
          Width = 112.629923700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B50')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 967.709030000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 1005.440683340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 1042.512912190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 967.888733790000000000
          Top = 21.574803150000000000
          Width = 108.850393700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B12')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 855.102660000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 892.834313340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 929.906542190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 855.282363790000000000
          Top = 21.574803150000000000
          Width = 112.629923700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B6R')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 742.496290000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 780.227943340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 817.300172190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 742.675993790000000000
          Top = 21.574803150000000000
          Width = 112.629923700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B6')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 1376.600312260000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 1414.310239050000000000
          Top = 42.362204720000000000
          Width = 36.233801950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 1413.228102360000000000
          Top = 21.574803150000000000
          Width = 108.850393700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B12E')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 1451.425921000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 1485.882178460000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 630.472790000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 668.204443340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 705.276672190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 630.652493790000000000
          Top = 21.574803150000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B3')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 519.748300000000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'V')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 557.479953340000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'F')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 594.552182190000000000
          Top = 42.362204720000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 11206655
          HAlign = haCenter
          Memo.UTF8W = (
            'P')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 519.928003790000000000
          Top = 21.574803150000000000
          Width = 108.850393700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16629143
          HAlign = haCenter
          Memo.UTF8W = (
            'B3A')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          AllowVectorExport = True
          Left = 520.173228350000000000
          Top = 3.118120000000000000
          Width = 1002.330708660000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHE D'#39'ENTREE')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          Left = 1525.795275590000000000
          Top = 3.023622050000000000
          Width = 1005.354980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHE DE SORTIE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 188.976500000000000000
        Width = 2532.285100000000000000
        DataSet = frxDBRecap
        DataSetName = 'frxDBRecap'
        RowCount = 0
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Width = 80.566435400000000000
          Height = 18.897650000000000000
          DataField = 'num_fes'
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBRecap."num_fes"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 81.093955400000000000
          Width = 68.887269880000000000
          Height = 18.897650000000000000
          DataField = 'date_fes'
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBRecap."date_fes"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 151.600715170000000000
          Width = 135.897083340000000000
          Height = 18.897650000000000000
          DataField = 'nom_clt'
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBRecap."nom_clt"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 289.332368510000000000
          Width = 84.586942920000000000
          Height = 18.897650000000000000
          DataField = 'matricule_veh'
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBRecap."matricule_veh"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 375.005891420000000000
          Width = 143.622078980000000000
          Height = 18.897650000000000000
          DataField = 'marque_veh'
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBRecap."marque_veh"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 2307.749430070000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6E_Ov"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 2344.481083410000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6E_Of"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 2196.433830000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6E_Ov"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 2233.165483340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B25_Of"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 2271.237712190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B25_Op"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 2084.268400000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B50_Ov"]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 2121.000053340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B50_Of"]')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 2159.072282190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B50_Op"]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 1973.662030000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12_Ov"]')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 2010.393683340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12_Of"]')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 2048.465912190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12_Op"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 1861.055660000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6R_Ov"]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 1897.787313340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6R_Of"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 1935.859542190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6R_Op"]')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 1748.449290000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6_Ov"]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Left = 1785.180943340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6_Of"]')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Left = 1823.253172190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6_Op"]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 2382.553312260000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6E_Op"]')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 2420.263239050000000000
          Width = 36.233801950000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12E_Ov"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 2458.378921000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12E_Of"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 2494.835178460000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12E_Op"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 1636.425790000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3_Ov"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 1673.157443340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3_Of"]')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 1711.229672190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3_Op"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 1525.701300000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3A_Ov"]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 1562.432953340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3A_Of"]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 1600.505182190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3A_Op"]')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 1301.796430070000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6E_Iv"]')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 1338.528083410000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6E_If"]')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 1190.480830000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B25_Iv"]')
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 1227.212483340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B25_If"]')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 1265.284712190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B25_Ip"]')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 1078.315400000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B50_Iv"]')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Left = 1115.047053340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B50_If"]')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 1153.119282190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B50_Ip"]')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 967.709030000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12_Iv"]')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 1004.440683340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12_If"]')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 1042.512912190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12_Ip"]')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 855.102660000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6R_Iv"]')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Left = 891.834313340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6R_If"]')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 929.906542190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6R_Ip"]')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Left = 742.496290000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6_Iv"]')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 779.227943340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6_If"]')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 817.300172190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6_Ip"]')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 1376.600312260000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6E_Ip"]')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 1414.310239050000000000
          Width = 36.233801950000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12E_Iv"]')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 1451.425921000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12E_If"]')
          ParentFont = False
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 1485.882178460000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12E_Ip"]')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Left = 630.472790000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3_Iv"]')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          Left = 667.204443340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3_If"]')
          ParentFont = False
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          Left = 705.276672190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3_Ip"]')
          ParentFont = False
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Left = 519.748300000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3A_Iv"]')
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          AllowVectorExport = True
          Left = 556.479953340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3A_If"]')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          AllowVectorExport = True
          Left = 594.552182190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3A_Ip"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 313.700990000000000000
        Width = 2532.285100000000000000
        object Memo123: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 2532.285100000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo125: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 2456.694500000000000000
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
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 2532.285100000000000000
        object Memo225: TfrxMemoView
          AllowVectorExport = True
          Left = 2307.505460070000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6E_Ov"]')
          ParentFont = False
        end
        object Memo226: TfrxMemoView
          AllowVectorExport = True
          Left = 2344.237113410000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6E_Of"]')
          ParentFont = False
        end
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          Left = 2196.189860000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB25_Ov"]')
          ParentFont = False
        end
        object Memo228: TfrxMemoView
          AllowVectorExport = True
          Left = 2232.921513340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB25_Of"]')
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          AllowVectorExport = True
          Left = 2270.993742190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB25_Op"]')
          ParentFont = False
        end
        object Memo230: TfrxMemoView
          AllowVectorExport = True
          Left = 2084.024430000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB50_Ov"]')
          ParentFont = False
        end
        object Memo231: TfrxMemoView
          AllowVectorExport = True
          Left = 2120.756083340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB50_Of"]')
          ParentFont = False
        end
        object Memo232: TfrxMemoView
          AllowVectorExport = True
          Left = 2158.828312190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB50_Op"]')
          ParentFont = False
        end
        object Memo233: TfrxMemoView
          AllowVectorExport = True
          Left = 1973.418060000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12_Ov"]')
          ParentFont = False
        end
        object Memo234: TfrxMemoView
          AllowVectorExport = True
          Left = 2010.149713340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12_Of"]')
          ParentFont = False
        end
        object Memo235: TfrxMemoView
          AllowVectorExport = True
          Left = 2048.221942190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12_Op"]')
          ParentFont = False
        end
        object Memo236: TfrxMemoView
          AllowVectorExport = True
          Left = 1860.811690000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6R_Ov"]')
          ParentFont = False
        end
        object Memo237: TfrxMemoView
          AllowVectorExport = True
          Left = 1897.543343340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6R_Of"]')
          ParentFont = False
        end
        object Memo238: TfrxMemoView
          AllowVectorExport = True
          Left = 1935.615572190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6R_Op"]')
          ParentFont = False
        end
        object Memo239: TfrxMemoView
          AllowVectorExport = True
          Left = 1748.205320000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6_Ov"]')
          ParentFont = False
        end
        object Memo240: TfrxMemoView
          AllowVectorExport = True
          Left = 1784.936973340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6_Of"]')
          ParentFont = False
        end
        object Memo241: TfrxMemoView
          AllowVectorExport = True
          Left = 1823.009202190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6_Op"]')
          ParentFont = False
        end
        object Memo242: TfrxMemoView
          AllowVectorExport = True
          Left = 2382.309342260000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6E_Op"]')
          ParentFont = False
        end
        object Memo243: TfrxMemoView
          AllowVectorExport = True
          Left = 2420.019269050000000000
          Width = 36.233801950000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12E_Ov"]')
          ParentFont = False
        end
        object Memo244: TfrxMemoView
          AllowVectorExport = True
          Left = 2458.134951000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12E_Of"]')
          ParentFont = False
        end
        object Memo245: TfrxMemoView
          AllowVectorExport = True
          Left = 2494.591208460000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12E_Op"]')
          ParentFont = False
        end
        object Memo246: TfrxMemoView
          AllowVectorExport = True
          Left = 1636.181820000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3_Ov"]')
          ParentFont = False
        end
        object Memo247: TfrxMemoView
          AllowVectorExport = True
          Left = 1672.913473340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3_Of"]')
          ParentFont = False
        end
        object Memo248: TfrxMemoView
          AllowVectorExport = True
          Left = 1710.985702190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3_Op"]')
          ParentFont = False
        end
        object Memo249: TfrxMemoView
          AllowVectorExport = True
          Left = 1525.457330000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3A_Ov"]')
          ParentFont = False
        end
        object Memo250: TfrxMemoView
          AllowVectorExport = True
          Left = 1562.188983340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3A_Of"]')
          ParentFont = False
        end
        object Memo251: TfrxMemoView
          AllowVectorExport = True
          Left = 1600.261212190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3A_Op"]')
          ParentFont = False
        end
        object Memo255: TfrxMemoView
          AllowVectorExport = True
          Left = 1301.552460070000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6E_Iv"]')
          ParentFont = False
        end
        object Memo256: TfrxMemoView
          AllowVectorExport = True
          Left = 1338.284113410000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6E_If"]')
          ParentFont = False
        end
        object Memo257: TfrxMemoView
          AllowVectorExport = True
          Left = 1190.236860000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB25_Iv"]')
          ParentFont = False
        end
        object Memo258: TfrxMemoView
          AllowVectorExport = True
          Left = 1226.968513340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB25_If"]')
          ParentFont = False
        end
        object Memo259: TfrxMemoView
          AllowVectorExport = True
          Left = 1265.040742190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB25_Ip"]')
          ParentFont = False
        end
        object Memo260: TfrxMemoView
          AllowVectorExport = True
          Left = 1078.071430000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB50_Iv"]')
          ParentFont = False
        end
        object Memo261: TfrxMemoView
          AllowVectorExport = True
          Left = 1114.803083340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB50_If"]')
          ParentFont = False
        end
        object Memo262: TfrxMemoView
          AllowVectorExport = True
          Left = 1152.875312190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB50_Ip"]')
          ParentFont = False
        end
        object Memo263: TfrxMemoView
          AllowVectorExport = True
          Left = 967.465060000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12_Iv"]')
          ParentFont = False
        end
        object Memo264: TfrxMemoView
          AllowVectorExport = True
          Left = 1004.196713340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12_If"]')
          ParentFont = False
        end
        object Memo265: TfrxMemoView
          AllowVectorExport = True
          Left = 1042.268942190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12_Ip"]')
          ParentFont = False
        end
        object Memo266: TfrxMemoView
          AllowVectorExport = True
          Left = 854.858690000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6R_Iv"]')
          ParentFont = False
        end
        object Memo267: TfrxMemoView
          AllowVectorExport = True
          Left = 891.590343340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6R_If"]')
          ParentFont = False
        end
        object Memo268: TfrxMemoView
          AllowVectorExport = True
          Left = 929.662572190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6R_Ip"]')
          ParentFont = False
        end
        object Memo269: TfrxMemoView
          AllowVectorExport = True
          Left = 742.252320000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6_Iv"]')
          ParentFont = False
        end
        object Memo270: TfrxMemoView
          AllowVectorExport = True
          Left = 778.983973340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6_If"]')
          ParentFont = False
        end
        object Memo271: TfrxMemoView
          AllowVectorExport = True
          Left = 817.056202190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6_Ip"]')
          ParentFont = False
        end
        object Memo272: TfrxMemoView
          AllowVectorExport = True
          Left = 1376.356342260000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6E_Ip"]')
          ParentFont = False
        end
        object Memo273: TfrxMemoView
          AllowVectorExport = True
          Left = 1414.066269050000000000
          Width = 36.233801950000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12E_Iv"]')
          ParentFont = False
        end
        object Memo274: TfrxMemoView
          AllowVectorExport = True
          Left = 1451.181951000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12E_If"]')
          ParentFont = False
        end
        object Memo275: TfrxMemoView
          AllowVectorExport = True
          Left = 1485.638208460000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12E_Ip"]')
          ParentFont = False
        end
        object Memo276: TfrxMemoView
          AllowVectorExport = True
          Left = 630.228820000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3_Iv"]')
          ParentFont = False
        end
        object Memo277: TfrxMemoView
          AllowVectorExport = True
          Left = 666.960473340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3_If"]')
          ParentFont = False
        end
        object Memo278: TfrxMemoView
          AllowVectorExport = True
          Left = 705.032702190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3A_Ip"]')
          ParentFont = False
        end
        object Memo279: TfrxMemoView
          AllowVectorExport = True
          Left = 519.504330000000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3A_Iv"]')
          ParentFont = False
        end
        object Memo280: TfrxMemoView
          AllowVectorExport = True
          Left = 556.235983340000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3A_If"]')
          ParentFont = False
        end
        object Memo281: TfrxMemoView
          AllowVectorExport = True
          Left = 594.308212190000000000
          Width = 36.283464570000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3A_Ip"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBRecap: TfrxDBDataset
    UserName = 'frxDBRecap'
    CloseDataSource = False
    DataSet = QRecap
    BCDToCurrency = False
    Left = 232
    Top = 88
  end
  object QRecap: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_fichees_recap ')
    SQLConnection = DM.SQLConnection1
    Left = 136
    Top = 64
  end
  object QSUM: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      #9'SUM(B3A_Iv ) as TB3A_Iv ,'
      #9'SUM(B3A_Ip ) as TB3A_Ip ,'
      #9'SUM(B3A_If ) as TB3A_If ,'
      #9'SUM(B3_Iv  ) as TB3_Iv  ,'
      #9'SUM(B3_Ip  ) as TB3_Ip  ,'
      #9'SUM(B3_If  ) as TB3_If  ,'
      #9'SUM(B6_Iv  ) as TB6_Iv  ,'
      #9'SUM(B6_Ip  ) as TB6_Ip  ,'
      #9'SUM(B6_If  ) as TB6_If  ,'
      #9'SUM(B6R_Iv ) as TB6R_Iv ,'
      #9'SUM(B6R_Ip ) as TB6R_Ip ,'
      #9'SUM(B6R_If ) as TB6R_If ,'
      #9'SUM(B12_Iv ) as TB12_Iv ,'
      #9'SUM(B12_Ip ) as TB12_Ip ,'
      #9'SUM(B12_If ) as TB12_If ,'
      #9'SUM(B50_Iv ) as TB50_Iv ,'
      #9'SUM(B50_Ip ) as TB50_Ip ,'
      #9'SUM(B50_If ) as TB50_If ,'
      #9'SUM(B25_Iv ) as TB25_Iv ,'
      #9'SUM(B25_Ip ) as TB25_Ip ,'
      #9'SUM(B25_If ) as TB25_If ,'
      #9'SUM(B6E_Iv ) as TB6E_Iv ,'
      #9'SUM(B6E_Ip ) as TB6E_Ip ,'
      #9'SUM(B6E_If ) as TB6E_If ,'
      #9'SUM(B12E_Iv) as TB12E_Iv,'
      #9'SUM(B12E_Ip) as TB12E_Ip,'
      #9'SUM(B12E_If) as TB12E_If,'
      #9'SUM(B3A_Ov ) as TB3A_Ov ,'
      #9'SUM(B3A_Op ) as TB3A_Op ,'
      #9'SUM(B3A_Of ) as TB3A_Of ,'
      #9'SUM(B3_Ov  ) as TB3_Ov  ,'
      #9'SUM(B3_Op  ) as TB3_Op  ,'
      #9'SUM(B3_Of  ) as TB3_Of  ,'
      #9'SUM(B6_Ov  ) as TB6_Ov  ,'
      #9'SUM(B6_Op  ) as TB6_Op  ,'
      #9'SUM(B6_Of  ) as TB6_Of  ,'
      #9'SUM(B6R_Ov ) as TB6R_Ov ,'
      #9'SUM(B6R_Op ) as TB6R_Op ,'
      #9'SUM(B6R_Of ) as TB6R_Of ,'
      #9'SUM(B12_Ov ) as TB12_Ov ,'
      #9'SUM(B12_Op ) as TB12_Op ,'
      #9'SUM(B12_Of ) as TB12_Of ,'
      #9'SUM(B50_Ov ) as TB50_Ov ,'
      #9'SUM(B50_Op ) as TB50_Op ,'
      #9'SUM(B50_Of ) as TB50_Of ,'
      #9'SUM(B25_Ov ) as TB25_Ov ,'
      #9'SUM(B25_Op ) as TB25_Op ,'
      #9'SUM(B25_Of ) as TB25_Of ,'
      #9'SUM(B6E_Ov ) as TB6E_Ov ,'
      #9'SUM(B6E_Op ) as TB6E_Op ,'
      #9'SUM(B6E_Of ) as TB6E_Of ,'
      #9'SUM(B12E_Ov) as TB12E_Ov,'
      #9'SUM(B12E_Op) as TB12E_Op,'
      #9'SUM(B12E_Of) as TB12E_Of'
      ''
      'from tb_fichees_recap ')
    SQLConnection = DM.SQLConnection1
    Left = 80
    Top = 96
  end
  object frxDBSUM: TfrxDBDataset
    UserName = 'frxDBSUM'
    CloseDataSource = False
    DataSet = QSUM
    BCDToCurrency = False
    Left = 176
    Top = 120
  end
end