object frmFicheRecapo: TfrmFicheRecapo
  Left = 0
  Top = 0
  Caption = 'R'#233'cap des sorties'
  ClientHeight = 177
  ClientWidth = 334
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 334
    Height = 145
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
    object Label5: TLabel
      Left = 24
      Top = 83
      Width = 46
      Height = 13
      Caption = 'Vehicule :'
    end
    object Label6: TLabel
      Left = 24
      Top = 104
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
    object edcodeClt: TEdit
      Left = 91
      Top = 57
      Width = 240
      Height = 21
      ParentColor = True
      TabOrder = 2
      OnDblClick = edcodeCltDblClick
    end
    object cbVeh: TComboBox
      Left = 91
      Top = 79
      Width = 240
      Height = 21
      CharCase = ecUpperCase
      ParentColor = True
      TabOrder = 3
      OnChange = cbVehChange
      OnCloseUp = cbVehCloseUp
    end
    object edMarque: TEdit
      Left = 91
      Top = 101
      Width = 240
      Height = 21
      ParentColor = True
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 334
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
        DataSet = DM.frxDBParam
        DataSetName = 'frxDBParam'
      end
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
      PaperWidth = 470.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 249.448980000000000000
        Width = 1700.788500000000000000
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          Left = 752.929133860000000000
          Top = 0.220470000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo228: TfrxMemoView
          AllowVectorExport = True
          Left = 777.787401570000000000
          Top = 0.220470000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo229: TfrxMemoView
          AllowVectorExport = True
          Left = 803.527559055118000000
          Top = 0.220470000000000000
          Width = 37.417322830000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo230: TfrxMemoView
          AllowVectorExport = True
          Left = 663.055118110000000000
          Top = 0.220470000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo231: TfrxMemoView
          AllowVectorExport = True
          Left = 688.535433070000000000
          Top = 0.220470000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo232: TfrxMemoView
          AllowVectorExport = True
          Left = 713.748031500000000000
          Top = 0.220470000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo233: TfrxMemoView
          AllowVectorExport = True
          Left = 573.314960630000000000
          Top = 0.220470000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 599.173228350000000000
          Top = 0.220470000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 624.866962190000000000
          Top = 0.220470000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 483.685039370000000000
          Top = 0.220470000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 508.543307090000000000
          Top = 0.220470000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 534.401574800000000000
          Top = 0.220470000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 394.055118110000000000
          Top = 0.220470000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 419.905511811024000000
          Top = 0.220470000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 444.654222190000000000
          Top = 0.220470000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo246: TfrxMemoView
          AllowVectorExport = True
          Left = 304.251968503937000000
          Top = 0.220470000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo247: TfrxMemoView
          AllowVectorExport = True
          Left = 329.661417320000000000
          Top = 0.220470000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo248: TfrxMemoView
          AllowVectorExport = True
          Left = 354.897637800000000000
          Top = 0.220470000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo249: TfrxMemoView
          AllowVectorExport = True
          Left = 214.401574800000000000
          Top = 0.220470000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo250: TfrxMemoView
          AllowVectorExport = True
          Left = 239.921259840000000000
          Top = 0.220470000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo251: TfrxMemoView
          AllowVectorExport = True
          Left = 264.906232190000000000
          Top = 0.220470000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo285: TfrxMemoView
          AllowVectorExport = True
          Left = 214.401574800000000000
          Top = 20.251966060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3_Ov">+<frxDBSUM."TB3_Op">+<frxDBSUM."TB3_Of">)]')
          ParentFont = False
        end
        object Memo286: TfrxMemoView
          AllowVectorExport = True
          Left = 304.181102360000000000
          Top = 20.251966060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB3A_Ov">+<frxDBSUM."TB3A_Op">+<frxDBSUM."TB3A_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo287: TfrxMemoView
          AllowVectorExport = True
          Left = 394.055118110000000000
          Top = 20.251966060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6_Ov">+<frxDBSUM."TB6_Op">+<frxDBSUM."TB6_Of">)]')
          ParentFont = False
        end
        object Memo288: TfrxMemoView
          AllowVectorExport = True
          Left = 483.685039370000000000
          Top = 20.251966060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB6R_Ov">+<frxDBSUM."TB6R_Op">+<frxDBSUM."TB6R_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo289: TfrxMemoView
          AllowVectorExport = True
          Left = 573.314960630000000000
          Top = 20.251966060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB12_Ov">+<frxDBSUM."TB12_Op">+<frxDBSUM."TB12_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo290: TfrxMemoView
          AllowVectorExport = True
          Left = 663.055118110000000000
          Top = 20.251966060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB25_Ov">+<frxDBSUM."TB25_Op">+<frxDBSUM."TB25_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo291: TfrxMemoView
          AllowVectorExport = True
          Left = 752.929133860000000000
          Top = 20.251966060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB50_Ov">+<frxDBSUM."TB50_Op">+<frxDBSUM."TB50_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 842.843230000000000000
          Top = 0.322846850000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB14_Ov"]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 867.945592200000000000
          Top = 0.322846850000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB14_Of"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 894.181812680000000000
          Top = 0.322846850000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB14_Op"]')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 842.843230000000000000
          Top = 20.354342910000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB14_Ov">+<frxDBSUM."TB14_Op">+<frxDBSUM."TB14_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 931.992890000000000000
          Top = 0.102376850000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB20_Ov"]')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 957.354330708661000000
          Top = 0.102376850000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB20_Of"]')
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 982.677165354331000000
          Top = 0.102376850000000000
          Width = 37.417322830000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB20_Op"]')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 931.992890000000000000
          Top = 20.133872910000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB20_Ov">+<frxDBSUM."TB20_Op">+<frxDBSUM."TB20_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.481140000000000000
          Top = 0.102376850000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB35_Ov"]')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Left = 1045.583502200000000000
          Top = 0.102376850000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB35_Of"]')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 1070.819722680000000000
          Top = 0.102376850000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB35_Op"]')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.481140000000000000
          Top = 20.133872910000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB35_Ov">+<frxDBSUM."TB35_Op">+<frxDBSUM."TB35_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo225: TfrxMemoView
          AllowVectorExport = True
          Left = 1108.551950000000000000
          Top = 0.102376850000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 1133.410217720000000000
          Top = 0.102376850000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo242: TfrxMemoView
          AllowVectorExport = True
          Left = 1159.354330710000000000
          Top = 0.102376850000000000
          Width = 37.417322830000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 1198.181871260000000000
          Top = 0.102376850000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 1224.284233460000000000
          Top = 0.102376850000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 1249.520453940000000000
          Top = 0.102376850000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
        object Memo292: TfrxMemoView
          AllowVectorExport = True
          Left = 1108.551950000000000000
          Top = 20.133872910000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB6E_Ov">+<frxDBSUM."TB6E_Op">+<frxDBSUM."TB6E_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo293: TfrxMemoView
          AllowVectorExport = True
          Left = 1198.181871260000000000
          Top = 20.133872910000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB12E_Ov">+<frxDBSUM."TB12E_Op">+<frxDBSUM."TB12E_O' +
              'f">)]')
          ParentFont = False
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          Left = 1287.748920000000000000
          Top = 0.102376850000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6M_Ov"]')
          ParentFont = False
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Left = 1312.607187720000000000
          Top = 0.102376850000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6M_Of"]')
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          AllowVectorExport = True
          Left = 1337.551300710000000000
          Top = 0.102376850000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6M_Op"]')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          AllowVectorExport = True
          Left = 1377.378841260000000000
          Top = 0.102376850000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12M_Ov"]')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          AllowVectorExport = True
          Left = 1403.481203460000000000
          Top = 0.102376850000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12M_Of"]')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          AllowVectorExport = True
          Left = 1428.717423940000000000
          Top = 0.102376850000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12M_Op"]')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          AllowVectorExport = True
          Left = 1287.748920000000000000
          Top = 20.133872910000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB6M_Ov">+<frxDBSUM."TB6M_Op">+<frxDBSUM."TB6M_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          AllowVectorExport = True
          Left = 1377.378841260000000000
          Top = 20.133872910000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB12M_Ov">+<frxDBSUM."TB12M_Op">+<frxDBSUM."TB12M_O' +
              'f">)]')
          ParentFont = False
        end
        object Memo266: TfrxMemoView
          AllowVectorExport = True
          Left = 1467.827770000000000000
          Top = 0.102376850000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6T_Ov"]')
          ParentFont = False
        end
        object Memo267: TfrxMemoView
          AllowVectorExport = True
          Left = 1492.686037720000000000
          Top = 0.102376850000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6T_Of"]')
          ParentFont = False
        end
        object Memo268: TfrxMemoView
          AllowVectorExport = True
          Left = 1517.630150710000000000
          Top = 0.102376850000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6T_Op"]')
          ParentFont = False
        end
        object Memo269: TfrxMemoView
          AllowVectorExport = True
          Left = 1557.457691260000000000
          Top = 0.102376850000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12T_Ov"]')
          ParentFont = False
        end
        object Memo270: TfrxMemoView
          AllowVectorExport = True
          Left = 1582.560053460000000000
          Top = 0.102376850000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12T_Of"]')
          ParentFont = False
        end
        object Memo271: TfrxMemoView
          AllowVectorExport = True
          Left = 1607.796273940000000000
          Top = 0.102376850000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12T_Op"]')
          ParentFont = False
        end
        object Memo272: TfrxMemoView
          AllowVectorExport = True
          Left = 1467.827770000000000000
          Top = 20.133872910000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB6T_Ov">+<frxDBSUM."TB6T_Op">+<frxDBSUM."TB6T_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo273: TfrxMemoView
          AllowVectorExport = True
          Left = 1557.457691260000000000
          Top = 20.133872910000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(<frxDBSUM."TB12T_Ov">+<frxDBSUM."TB12T_Op">+<frxDBSUM."TB12T_O' +
              'f">)]')
          ParentFont = False
        end
        object Memo275: TfrxMemoView
          AllowVectorExport = True
          Left = 752.960769060000000000
          Top = 41.692923150000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB50_Ov">*50)]')
          ParentFont = False
        end
        object Memo276: TfrxMemoView
          AllowVectorExport = True
          Left = 777.819036770000000000
          Top = 41.692923150000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB50_Of">*50)]')
          ParentFont = False
        end
        object Memo277: TfrxMemoView
          AllowVectorExport = True
          Left = 803.527559055118000000
          Top = 41.692923150000000000
          Width = 37.417322830000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB50_Op">*50)]')
          ParentFont = False
        end
        object Memo278: TfrxMemoView
          AllowVectorExport = True
          Left = 663.086753310000000000
          Top = 41.692923150000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB25_Ov">*25)]')
          ParentFont = False
        end
        object Memo279: TfrxMemoView
          AllowVectorExport = True
          Left = 688.567068270000000000
          Top = 41.692923150000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB25_Of">*25)]')
          ParentFont = False
        end
        object Memo280: TfrxMemoView
          AllowVectorExport = True
          Left = 713.779666700000000000
          Top = 41.692923150000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB25_Op">*25)]')
          ParentFont = False
        end
        object Memo281: TfrxMemoView
          AllowVectorExport = True
          Left = 573.346595830000000000
          Top = 41.692923150000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12_Ov">*12)]')
          ParentFont = False
        end
        object Memo282: TfrxMemoView
          AllowVectorExport = True
          Left = 599.204863550000000000
          Top = 41.692923150000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12_Of">*12)]')
          ParentFont = False
        end
        object Memo283: TfrxMemoView
          AllowVectorExport = True
          Left = 624.898597390000000000
          Top = 41.692923150000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12_Op">*12)]')
          ParentFont = False
        end
        object Memo284: TfrxMemoView
          AllowVectorExport = True
          Left = 483.716674570000000000
          Top = 41.692923150000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6R_Ov">*6)]')
          ParentFont = False
        end
        object Memo294: TfrxMemoView
          AllowVectorExport = True
          Left = 508.574942290000000000
          Top = 41.692923150000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6R_Of">*6)]')
          ParentFont = False
        end
        object Memo295: TfrxMemoView
          AllowVectorExport = True
          Left = 534.433210000000000000
          Top = 41.692923150000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6R_Op">*6)]')
          ParentFont = False
        end
        object Memo296: TfrxMemoView
          AllowVectorExport = True
          Left = 394.086753310000000000
          Top = 41.692923150000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6_Ov">*6)]')
          ParentFont = False
        end
        object Memo297: TfrxMemoView
          AllowVectorExport = True
          Left = 419.905511811024000000
          Top = 41.692923150000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6_Of">*6)]')
          ParentFont = False
        end
        object Memo298: TfrxMemoView
          AllowVectorExport = True
          Left = 444.685857390000000000
          Top = 41.692923150000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6_Op">*6)]')
          ParentFont = False
        end
        object Memo299: TfrxMemoView
          AllowVectorExport = True
          Left = 304.251968503937000000
          Top = 41.692923150000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3A_Ov">*3)]')
          ParentFont = False
        end
        object Memo300: TfrxMemoView
          AllowVectorExport = True
          Left = 329.693052520000000000
          Top = 41.692923150000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3A_Of">*3)]')
          ParentFont = False
        end
        object Memo301: TfrxMemoView
          AllowVectorExport = True
          Left = 354.929273000000000000
          Top = 41.692923150000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3A_Op">*3)]')
          ParentFont = False
        end
        object Memo302: TfrxMemoView
          AllowVectorExport = True
          Left = 214.433210000000000000
          Top = 41.692923150000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3_Ov">*3)]')
          ParentFont = False
        end
        object Memo303: TfrxMemoView
          AllowVectorExport = True
          Left = 239.952895040000000000
          Top = 41.692923150000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3_Of">*3)]')
          ParentFont = False
        end
        object Memo304: TfrxMemoView
          AllowVectorExport = True
          Left = 264.937867390000000000
          Top = 41.692923150000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3_Op">*3)]')
          ParentFont = False
        end
        object Memo305: TfrxMemoView
          AllowVectorExport = True
          Left = 214.433210000000000000
          Top = 61.724419210000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB3_Ov">*3)+(<frxDBSUM."TB3_Of">*3)+(<frxDBSUM."TB' +
              '3_Op">*3))]')
          ParentFont = False
        end
        object Memo306: TfrxMemoView
          AllowVectorExport = True
          Left = 304.212737560000000000
          Top = 61.724419210000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB3A_Ov">*3)+(<frxDBSUM."TB3A_Of">*3)+(<frxDBSUM."' +
              'TB3A_Op">*3))]')
          ParentFont = False
        end
        object Memo307: TfrxMemoView
          AllowVectorExport = True
          Left = 394.086753310000000000
          Top = 61.724419210000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB6_Ov">*6)+(<frxDBSUM."TB6_Of">*6)+(<frxDBSUM."TB' +
              '6_Op">*6))]')
          ParentFont = False
        end
        object Memo308: TfrxMemoView
          AllowVectorExport = True
          Left = 483.716674570000000000
          Top = 61.724419210000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB6R_Ov">*6)+(<frxDBSUM."TB6R_Of">*6)+(<frxDBSUM."' +
              'TB6R_Op">*6))]')
          ParentFont = False
        end
        object Memo309: TfrxMemoView
          AllowVectorExport = True
          Left = 573.346595830000000000
          Top = 61.724419210000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB12_Ov">*12)+(<frxDBSUM."TB12_Of">*12)+(<frxDBSUM' +
              '."TB12_Op">*12))]')
          ParentFont = False
        end
        object Memo310: TfrxMemoView
          AllowVectorExport = True
          Left = 663.086753310000000000
          Top = 61.724419210000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB25_Ov">*25)+(<frxDBSUM."TB25_Of">*25)+(<frxDBSUM' +
              '."TB25_Op">*25))]')
          ParentFont = False
        end
        object Memo311: TfrxMemoView
          AllowVectorExport = True
          Left = 752.960769060000000000
          Top = 61.724419210000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB50_Ov">*50)+(<frxDBSUM."TB50_Of">*50)+(<frxDBSUM' +
              '."TB50_Op">*50))]')
          ParentFont = False
        end
        object Memo312: TfrxMemoView
          AllowVectorExport = True
          Left = 842.874865200000000000
          Top = 41.795300000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB14_Ov">*14)]')
          ParentFont = False
        end
        object Memo313: TfrxMemoView
          AllowVectorExport = True
          Left = 867.977227400000000000
          Top = 41.795300000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB14_Of">*14)]')
          ParentFont = False
        end
        object Memo314: TfrxMemoView
          AllowVectorExport = True
          Left = 894.213447880000000000
          Top = 41.795300000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB14_Op">*14)]')
          ParentFont = False
        end
        object Memo315: TfrxMemoView
          AllowVectorExport = True
          Left = 842.874865200000000000
          Top = 61.826796060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB14_Ov">*14)+(<frxDBSUM."TB14_Of">*14)+(<frxDBSUM' +
              '."TB14_Op">*14))]')
          ParentFont = False
        end
        object Memo316: TfrxMemoView
          AllowVectorExport = True
          Left = 932.024525200000000000
          Top = 41.574830000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB20_Ov">*20)]')
          ParentFont = False
        end
        object Memo317: TfrxMemoView
          AllowVectorExport = True
          Left = 957.354330708661000000
          Top = 41.574830000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB20_Of">*20)]')
          ParentFont = False
        end
        object Memo318: TfrxMemoView
          AllowVectorExport = True
          Left = 982.677165354331000000
          Top = 41.574830000000000000
          Width = 37.417322830000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB20_Op">*20)]')
          ParentFont = False
        end
        object Memo319: TfrxMemoView
          AllowVectorExport = True
          Left = 932.024525200000000000
          Top = 61.606326060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB20_Ov">*20)+(<frxDBSUM."TB20_Of">*20)+(<frxDBSUM' +
              '."TB20_Op">*20))]')
          ParentFont = False
        end
        object Memo320: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.512775200000000000
          Top = 41.574830000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB35_Ov">*35)]')
          ParentFont = False
        end
        object Memo321: TfrxMemoView
          AllowVectorExport = True
          Left = 1045.615137400000000000
          Top = 41.574830000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB35_Of">*35)]')
          ParentFont = False
        end
        object Memo322: TfrxMemoView
          AllowVectorExport = True
          Left = 1070.851357880000000000
          Top = 41.574830000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB35_Op">*35)]')
          ParentFont = False
        end
        object Memo323: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.512775200000000000
          Top = 61.606326060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB35_Ov">*35)+(<frxDBSUM."TB35_Of">*35)+(<frxDBSUM' +
              '."TB35_Op">*35))]')
          ParentFont = False
        end
        object Memo324: TfrxMemoView
          AllowVectorExport = True
          Left = 1108.583585200000000000
          Top = 41.574830000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6E_Ov">*6)]')
          ParentFont = False
        end
        object Memo325: TfrxMemoView
          AllowVectorExport = True
          Left = 1133.441852920000000000
          Top = 41.574830000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6E_Of">*6)]')
          ParentFont = False
        end
        object Memo326: TfrxMemoView
          AllowVectorExport = True
          Left = 1159.385965910000000000
          Top = 41.574830000000000000
          Width = 37.417322830000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6E_Op">*6)]')
          ParentFont = False
        end
        object Memo327: TfrxMemoView
          AllowVectorExport = True
          Left = 1198.213506460000000000
          Top = 41.574830000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12E_Ov">*12)]')
          ParentFont = False
        end
        object Memo328: TfrxMemoView
          AllowVectorExport = True
          Left = 1224.315868660000000000
          Top = 41.574830000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12E_Of">*12)]')
          ParentFont = False
        end
        object Memo329: TfrxMemoView
          AllowVectorExport = True
          Left = 1249.552089140000000000
          Top = 41.574830000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12E_Op">*12)]')
          ParentFont = False
        end
        object Memo330: TfrxMemoView
          AllowVectorExport = True
          Left = 1108.583585200000000000
          Top = 61.606326060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB6E_Ov">*6)+(<frxDBSUM."TB6E_Of">*6)+(<frxDBSUM."' +
              'TB6E_Op">*6))]')
          ParentFont = False
        end
        object Memo331: TfrxMemoView
          AllowVectorExport = True
          Left = 1198.213506460000000000
          Top = 61.606326060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB12E_Ov">*12)+(<frxDBSUM."TB12E_Of">*12)+(<frxDBS' +
              'UM."TB12E_Op">*12))]')
          ParentFont = False
        end
        object Memo332: TfrxMemoView
          AllowVectorExport = True
          Left = 1287.780555200000000000
          Top = 41.574830000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6M_Ov">*6)]')
          ParentFont = False
        end
        object Memo333: TfrxMemoView
          AllowVectorExport = True
          Left = 1312.638822920000000000
          Top = 41.574830000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6M_Of">*6)]')
          ParentFont = False
        end
        object Memo334: TfrxMemoView
          AllowVectorExport = True
          Left = 1337.582935910000000000
          Top = 41.574830000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6M_Op">*6)]')
          ParentFont = False
        end
        object Memo335: TfrxMemoView
          AllowVectorExport = True
          Left = 1377.410476460000000000
          Top = 41.574830000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12M_Ov">*12)]')
          ParentFont = False
        end
        object Memo336: TfrxMemoView
          AllowVectorExport = True
          Left = 1403.512838660000000000
          Top = 41.574830000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12M_Of">*12)]')
          ParentFont = False
        end
        object Memo337: TfrxMemoView
          AllowVectorExport = True
          Left = 1428.749059140000000000
          Top = 41.574830000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12M_Op">*12)]')
          ParentFont = False
        end
        object Memo338: TfrxMemoView
          AllowVectorExport = True
          Left = 1287.780555200000000000
          Top = 61.606326060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB6M_Ov">*6)+(<frxDBSUM."TB6M_Ov">*6)+(<frxDBSUM."' +
              'TB6M_Ov">*6))]')
          ParentFont = False
        end
        object Memo339: TfrxMemoView
          AllowVectorExport = True
          Left = 1377.410476460000000000
          Top = 61.606326060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB12M_Ov">*12)+(<frxDBSUM."TB12M_Of">*12)+(<frxDBS' +
              'UM."TB12M_Op">*12))]')
          ParentFont = False
        end
        object Memo340: TfrxMemoView
          AllowVectorExport = True
          Left = 1467.859405200000000000
          Top = 41.574830000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6T_Ov">*6)]')
          ParentFont = False
        end
        object Memo341: TfrxMemoView
          AllowVectorExport = True
          Left = 1492.717672920000000000
          Top = 41.574830000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6T_Of">*6)]')
          ParentFont = False
        end
        object Memo342: TfrxMemoView
          AllowVectorExport = True
          Left = 1517.661785910000000000
          Top = 41.574830000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6T_Op">*6)]')
          ParentFont = False
        end
        object Memo343: TfrxMemoView
          AllowVectorExport = True
          Left = 1557.489326460000000000
          Top = 41.574830000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12T_Ov">*12)]')
          ParentFont = False
        end
        object Memo344: TfrxMemoView
          AllowVectorExport = True
          Left = 1582.591688660000000000
          Top = 41.574830000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12T_Of">*12)]')
          ParentFont = False
        end
        object Memo345: TfrxMemoView
          AllowVectorExport = True
          Left = 1607.827909140000000000
          Top = 41.574830000000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12T_Op">*12)]')
          ParentFont = False
        end
        object Memo346: TfrxMemoView
          AllowVectorExport = True
          Left = 1467.859405200000000000
          Top = 61.606326060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB6T_Ov">*6)+(<frxDBSUM."TB6T_Of">*6)+(<frxDBSUM."' +
              'TB6T_Op">*6))]')
          ParentFont = False
        end
        object Memo347: TfrxMemoView
          AllowVectorExport = True
          Left = 1557.489326460000000000
          Top = 61.606326060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB12T_Ov">*12)+(<frxDBSUM."TB12T_Of">*12)+(<frxDBS' +
              'UM."TB12T_Op">*12))]')
          ParentFont = False
        end
        object Memo348: TfrxMemoView
          AllowVectorExport = True
          Top = 0.377952760000000000
          Width = 212.409448820000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Totaux en qte')
          ParentFont = False
        end
        object Memo349: TfrxMemoView
          AllowVectorExport = True
          Top = 20.409448820000000000
          Width = 212.409448820000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Cumul des totaux en qte')
          ParentFont = False
        end
        object Memo350: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574803150000000000
          Width = 212.409448820000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Totaux en volume')
          ParentFont = False
        end
        object Memo351: TfrxMemoView
          AllowVectorExport = True
          Top = 61.472480000000000000
          Width = 212.409448820000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Cumul des totaux en volume')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 1700.788500000000000000
        object Memo274: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'LISTE DE SORTIE PAR FICHE')
          ParentFont = False
        end
        object md1: TfrxMemoView
          AllowVectorExport = True
          Left = 39.456710000000000000
          Top = 20.984244650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 20.897650000000000000
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
          Left = 175.519790000000000000
          Top = 20.984244650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 20.984244650000000000
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
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 1400.796230000000000000
          Width = 241.889775980000000000
          Height = 18.897650000000000000
          AutoWidth = True
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
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 1440.922006770000000000
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
        Height = 63.496062990000000000
        Top = 83.149660000000000000
        Width = 1700.788500000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 2.093955400000000000
          Top = 42.708661420000000000
          Width = 68.787401570000000000
          Height = 18.897637795275600000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 72.005891420000000000
          Top = 42.708661420000000000
          Width = 141.354352680000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'V'#233'hicule')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 752.929133860000000000
          Top = 42.582674720000000000
          Width = 24.566929133858300000
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
          Left = 777.787401570000000000
          Top = 42.582674720000000000
          Width = 24.566929130000000000
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
          Left = 803.527559055118000000
          Top = 42.582674720000000000
          Width = 37.417322830000000000
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
          Left = 752.929133860000000000
          Top = 21.795273150000000000
          Width = 88.440944880000000000
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
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 663.055118110000000000
          Top = 42.582674720000000000
          Width = 24.566929133858300000
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
          Left = 688.535433070000000000
          Top = 42.582674720000000000
          Width = 24.566929130000000000
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
          Left = 713.717302190000000000
          Top = 42.582674720000000000
          Width = 37.417322834645700000
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
          Left = 663.055118110000000000
          Top = 21.795273150000000000
          Width = 88.440944880000000000
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
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 573.314960630000000000
          Top = 42.582674720000000000
          Width = 24.566929133858300000
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
          Left = 599.173228350000000000
          Top = 42.582674720000000000
          Width = 24.566929130000000000
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
          Left = 625.110932190000000000
          Top = 42.582674720000000000
          Width = 37.417322834645700000
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
          Left = 573.314960630000000000
          Top = 21.795273150000000000
          Width = 88.440944880000000000
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
          Left = 483.685039370000000000
          Top = 42.582674720000000000
          Width = 24.566929133858300000
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
          Left = 508.543307090000000000
          Top = 42.582674720000000000
          Width = 24.566929130000000000
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
          Left = 534.401574800000000000
          Top = 42.582674720000000000
          Width = 37.417322834645700000
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
          Left = 483.685039370000000000
          Top = 21.795273150000000000
          Width = 88.440944880000000000
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
          Left = 394.055118110000000000
          Top = 42.582674720000000000
          Width = 24.566929133858300000
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
          Left = 419.825963340000000000
          Top = 42.582674720000000000
          Width = 24.566929130000000000
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
          Left = 444.898192190000000000
          Top = 42.582674720000000000
          Width = 37.417322834645700000
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
          Left = 394.055118110000000000
          Top = 21.795273150000000000
          Width = 88.440944880000000000
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
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 304.070810000000000000
          Top = 42.582674720000000000
          Width = 24.566929133858300000
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
          Left = 329.802463340000000000
          Top = 42.582674720000000000
          Width = 24.566929130000000000
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
          Left = 354.874692190000000000
          Top = 42.582674720000000000
          Width = 37.417322834645700000
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
          Left = 304.250513790000000000
          Top = 21.795273150000000000
          Width = 88.440944880000000000
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
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 214.401574800000000000
          Top = 42.582674720000000000
          Width = 24.566929133858300000
          Height = 18.897637800000000000
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
          Left = 240.077973340000000000
          Top = 42.582674720000000000
          Width = 24.566929130000000000
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
          Left = 265.150202190000000000
          Top = 42.582674720000000000
          Width = 37.417322830000000000
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
          Left = 214.401574800000000000
          Top = 21.795273150000000000
          Width = 88.440944880000000000
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
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          Left = 214.401574800000000000
          Top = 2.244092050000000000
          Width = 1432.441870000000000000
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
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 842.843230000000000000
          Top = 42.708661420000000000
          Width = 24.566929133858300000
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
          Left = 842.843230000000000000
          Top = 21.897650000000000000
          Width = 88.440944880000000000
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
            'B14')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 867.945592200000000000
          Top = 42.685051570000000000
          Width = 24.566929130000000000
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
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 894.181812680000000000
          Top = 42.685051570000000000
          Width = 37.417322834645700000
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
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 931.992890000000000000
          Top = 42.708661420000000000
          Width = 24.566929133858300000
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
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 931.992890000000000000
          Top = 21.677180000000000000
          Width = 88.440944880000000000
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
            'B20')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 957.354330708661000000
          Top = 42.708661420000000000
          Width = 24.566929130000000000
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
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 982.677165354331000000
          Top = 42.708661420000000000
          Width = 37.417322830000000000
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
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.481140000000000000
          Top = 42.708661420000000000
          Width = 24.566929133858300000
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
        object Memo192: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.481140000000000000
          Top = 21.677180000000000000
          Width = 88.440944880000000000
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
            'B35')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 1045.583502200000000000
          Top = 42.708661420000000000
          Width = 24.566929130000000000
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
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 1070.819722680000000000
          Top = 42.708661420000000000
          Width = 37.417322834645700000
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
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 1108.551950000000000000
          Top = 42.708661420000000000
          Width = 24.566929133858300000
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
          Left = 1133.410217720000000000
          Top = 42.708661420000000000
          Width = 24.566929130000000000
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
          Left = 1108.551950000000000000
          Top = 21.677180000000000000
          Width = 88.440944880000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 1159.325085410000000000
          Top = 42.708661420000000000
          Width = 37.417322830000000000
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
          Left = 1198.181871260000000000
          Top = 42.708661420000000000
          Width = 24.566929133858300000
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
          Left = 1198.181871260000000000
          Top = 21.677180000000000000
          Width = 88.440944880000000000
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
          Left = 1224.284233460000000000
          Top = 42.708661420000000000
          Width = 24.566929130000000000
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
          Left = 1249.520453940000000000
          Top = 42.708661420000000000
          Width = 37.417322834645700000
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
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 1287.748920000000000000
          Top = 42.708661420000000000
          Width = 24.566929133858300000
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
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 1312.607187720000000000
          Top = 42.708661420000000000
          Width = 24.566929130000000000
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
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 1287.748920000000000000
          Top = 21.677180000000000000
          Width = 88.440944880000000000
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
            'B6M')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Left = 1337.522055410000000000
          Top = 42.708661420000000000
          Width = 37.417322834645700000
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
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 1377.378841260000000000
          Top = 42.708661420000000000
          Width = 24.566929133858300000
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
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Left = 1377.378841260000000000
          Top = 21.677180000000000000
          Width = 88.440944880000000000
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
            'B12M')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 1403.481203460000000000
          Top = 42.708661420000000000
          Width = 24.566929130000000000
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
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 1428.717423940000000000
          Top = 42.708661420000000000
          Width = 37.417322834645700000
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
        object Memo252: TfrxMemoView
          AllowVectorExport = True
          Left = 1467.827770000000000000
          Top = 42.708661420000000000
          Width = 24.566929133858300000
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
        object Memo253: TfrxMemoView
          AllowVectorExport = True
          Left = 1492.686037720000000000
          Top = 42.708661420000000000
          Width = 24.566929130000000000
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
        object Memo254: TfrxMemoView
          AllowVectorExport = True
          Left = 1467.827770000000000000
          Top = 21.677180000000000000
          Width = 88.440944880000000000
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
            'B6T')
          ParentFont = False
        end
        object Memo255: TfrxMemoView
          AllowVectorExport = True
          Left = 1517.600905410000000000
          Top = 42.708661420000000000
          Width = 37.417322834645700000
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
        object Memo256: TfrxMemoView
          AllowVectorExport = True
          Left = 1557.457691260000000000
          Top = 42.708661420000000000
          Width = 24.566929133858300000
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
        object Memo257: TfrxMemoView
          AllowVectorExport = True
          Left = 1557.457691260000000000
          Top = 21.677180000000000000
          Width = 88.440944880000000000
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
            'B12T')
          ParentFont = False
        end
        object Memo258: TfrxMemoView
          AllowVectorExport = True
          Left = 1582.560053460000000000
          Top = 42.708661420000000000
          Width = 24.566929130000000000
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
        object Memo259: TfrxMemoView
          AllowVectorExport = True
          Left = 1607.796273940000000000
          Top = 42.708661420000000000
          Width = 37.417322834645700000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 207.874150000000000000
        Width = 1700.788500000000000000
        DataSet = frxDBRecap
        DataSetName = 'frxDBRecap'
        RowCount = 0
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 2.093955400000000000
          Width = 68.887269880000000000
          Height = 18.897650000000000000
          DataField = 'date_fes'
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBRecap."date_fes"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 72.005891420000000000
          Width = 141.354352680000000000
          Height = 18.897650000000000000
          DataField = 'nom_clt'
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBRecap."nom_clt"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 752.929133860000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B50_Ov"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 777.787401570000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B50_Of"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 803.527559055118000000
          Width = 37.417322830000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B50_Op"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 663.055118110000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B25_Ov"]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 688.535433070000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B25_Of"]')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 713.717302190000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B25_Op"]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 573.314960630000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 599.173228350000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 625.110932190000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 483.685039370000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 508.543307090000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 534.401574800000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 394.055118110000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 419.905511811024000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 444.898192190000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6_Op"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 304.070810000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3A_Ov"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 329.661417320000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3A_Of"]')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 354.874692190000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3A_Op"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 214.401574800000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3_Ov"]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 239.921259840000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3_Of"]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 265.150202190000000000
          Width = 37.417322830000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B3_Op"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 842.843230000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B14_Ov"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 867.945592200000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B14_Of"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 894.181812680000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B14_Op"]')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 931.992890000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B20_Ov"]')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 957.354330708661000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B20_Of"]')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 982.677165354331000000
          Width = 37.417322830000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B20_Op"]')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 1020.481140000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B35_Ov"]')
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 1045.583502200000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B35_Of"]')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 1070.819722680000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B35_Op"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 1108.551950000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 1133.410217720000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6E_Of"]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 1159.325085410000000000
          Width = 37.417322830000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 1198.181871260000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 1224.284233460000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Left = 1249.520453940000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12E_Op"]')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 1287.748920000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6M_Ov"]')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 1312.607187720000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6M_Of"]')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 1337.522055410000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6M_Op"]')
          ParentFont = False
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 1377.378841260000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12M_Ov"]')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Left = 1403.481203460000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12M_Of"]')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          Left = 1428.717423940000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12M_Op"]')
          ParentFont = False
        end
        object Memo260: TfrxMemoView
          AllowVectorExport = True
          Left = 1467.827770000000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6T_Ov"]')
          ParentFont = False
        end
        object Memo261: TfrxMemoView
          AllowVectorExport = True
          Left = 1492.686037720000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6T_Of"]')
          ParentFont = False
        end
        object Memo262: TfrxMemoView
          AllowVectorExport = True
          Left = 1517.600905410000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B6T_Op"]')
          ParentFont = False
        end
        object Memo263: TfrxMemoView
          AllowVectorExport = True
          Left = 1557.457691260000000000
          Width = 24.566929133858300000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12T_Ov"]')
          ParentFont = False
        end
        object Memo264: TfrxMemoView
          AllowVectorExport = True
          Left = 1582.560053460000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12T_Of"]')
          ParentFont = False
        end
        object Memo265: TfrxMemoView
          AllowVectorExport = True
          Left = 1607.796273940000000000
          Width = 37.417322834645700000
          Height = 18.897650000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRecap."B12T_Op"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 400.630180000000000000
        Width = 1700.788500000000000000
        object Memo123: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1700.788500000000000000
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
          Left = 1625.197900000000000000
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
      'select * from tb_ficheo_recap ')
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
      #9'SUM(B12E_Of) as TB12E_Of,'
      #9'SUM(B14_Ov) as TB14_Ov,'
      #9'SUM(B14_Op) as TB14_Op,'
      #9'SUM(B14_Of) as TB14_Of,'
      #9'SUM(B20_Ov) as TB20_Ov,'
      #9'SUM(B20_Op) as TB20_Op,'
      #9'SUM(B20_Of) as TB20_Of,'
      #9'SUM(B35_Ov) as TB35_Ov,'
      #9'SUM(B35_Op) as TB35_Op,'
      #9'SUM(B35_Of) as TB35_Of,'
      #9'SUM(B6M_Ov) as TB6M_Ov,'
      #9'SUM(B6M_Op) as TB6M_Op,'
      #9'SUM(B6M_Of) as TB6M_Of,'
      #9'SUM(B12M_Ov) as TB12M_Ov,'
      #9'SUM(B12M_Op) as TB12M_Op,'
      #9'SUM(B12M_Of) as TB12M_Of,'
      #9'SUM(B6T_Ov) as TB6T_Ov,'
      #9'SUM(B6T_Op) as TB6T_Op,'
      #9'SUM(B6T_Of) as TB6T_Of,'
      #9'SUM(B12T_Ov) as TB12T_Ov,'
      #9'SUM(B12T_Op) as TB12T_Op,'
      #9'SUM(B12T_Of) as TB12T_Of'
      'from tb_ficheo_recap ')
    SQLConnection = DM.SQLConnection1
    Left = 80
    Top = 96
  end
  object frxDBSUM: TfrxDBDataset
    UserName = 'frxDBSUM'
    CloseDataSource = False
    DataSet = QSUM
    BCDToCurrency = False
    Left = 184
    Top = 80
  end
end
