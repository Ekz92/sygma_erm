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
  OnCreate = FormCreate
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
      OnChange = cbClientCloseUp
      OnCloseUp = cbClientCloseUp
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
      Width = 240
      Height = 21
      CharCase = ecUpperCase
      ParentColor = True
      TabOrder = 4
      OnChange = cbVehChange
      OnCloseUp = cbVehCloseUp
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
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1107.402290000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 68.031540000000000000
        Width = 1107.402290000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 2.093955400000000000
          Top = 42.708661417322800000
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
          Left = 72.600715170000000000
          Top = 42.708661417322800000
          Width = 109.606299210000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 183.005891420000000000
          Top = 42.708661417322800000
          Width = 107.338582680000000000
          Height = 18.897650000000000000
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
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 920.425196850394000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 950.283464566929000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 920.425196850394000000
          Top = 21.795273150000000000
          Width = 88.440944881889800000
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
          Left = 829.929133858270000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 859.787401574800000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 890.023622047240000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 829.929133860000000000
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
          Left = 740.055118110236000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 769.535433070866000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 799.717302190000000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 740.055118110000000000
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
          Left = 650.314960629921000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 680.173228346457000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 710.110932190000000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 650.314960629921000000
          Top = 21.795273150000000000
          Width = 88.440944881889800000
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
          Left = 560.685039370079000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 590.543307086614000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 620.401574803150000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 560.685039370079000000
          Top = 21.795273150000000000
          Width = 88.440944881889800000
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
          Left = 471.055118110236000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 501.825963340000000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 530.898192190000000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 471.055118110236000000
          Top = 21.795273150000000000
          Width = 88.440944881889800000
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
          Left = 980.198332260000000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 1010.055118110240000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 1010.055118110240000000
          Top = 21.795273150000000000
          Width = 88.440944881889800000
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
          Left = 1039.157480314960000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 1069.393700787400000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 381.070810000000000000
          Top = 42.582674720000000000
          Width = 28.724409448818900000
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
          Left = 410.802463340000000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 440.874692190000000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 381.250513790000000000
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
          Left = 291.346320000000000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 321.077973340000000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 351.150202190000000000
          Top = 42.582674720000000000
          Width = 28.724409450000000000
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
          Left = 291.526023790000000000
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
          Left = 291.440295590000000000
          Top = 2.244092050000000000
          Width = 808.819420000000000000
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
        Top = 192.756030000000000000
        Width = 1107.402290000000000000
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
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 72.600715170000000000
          Width = 109.606299212598000000
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
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 183.005891420000000000
          Width = 107.338582680000000000
          Height = 18.897650000000000000
          DataField = 'marque_veh'
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
            '[frxDBRecap."marque_veh"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 920.425196850000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 950.283464566929000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 829.929133860000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 859.787401570000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 890.023622050000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 740.055118110000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 769.535433070000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 799.717302190000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 650.314960629921000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 680.173228346457000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 710.110932190000000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 560.685039370079000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 590.543307086614000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 620.401574803150000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 471.055118110000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 500.825963340000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 530.898192190000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 980.198332260000000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 1010.055118110240000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 1039.157480314960000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 1069.393700787400000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 381.070810000000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 410.661417320000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 440.874692190000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 291.346320000000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 320.921259840000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 351.150202190000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 340.157700000000000000
        Width = 1107.402290000000000000
        object Memo123: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1107.402290000000000000
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
          Left = 1031.811690000000000000
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
        Height = 45.354360000000000000
        Top = 234.330860000000000000
        Width = 1107.402290000000000000
        object Memo225: TfrxMemoView
          AllowVectorExport = True
          Left = 920.425196850394000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 950.283464566929000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          Left = 829.929133860000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 859.787401570000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 890.023622050000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 740.055118110000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 769.535433070000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 799.473332190000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 650.314960629921000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 680.173228346457000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 709.866962190000000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 560.685039370079000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 590.543307090000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 620.401574803150000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 471.055118110000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 500.581993340000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 530.654222190000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
        object Memo242: TfrxMemoView
          AllowVectorExport = True
          Left = 979.954362260000000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 1010.055118110240000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
          Left = 1039.157480314960000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 1069.393700787400000000
          Top = 0.220470000000000000
          Width = 28.724409448818900000
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
        object Memo246: TfrxMemoView
          AllowVectorExport = True
          Left = 380.826840000000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 410.661417320000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 440.897637800000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 291.102350000000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 320.921259840000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 350.906232190000000000
          Top = 0.220470000000000000
          Width = 28.724409450000000000
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
          Left = 291.575140000000000000
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
          Left = 381.181102360000000000
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
          Left = 471.055118110000000000
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
          Left = 560.685039370000000000
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
          Left = 650.314960629921000000
          Top = 20.251966060000000000
          Width = 88.440944881889800000
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
          Left = 740.055118110000000000
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
          Left = 829.929133860000000000
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
        object Memo292: TfrxMemoView
          AllowVectorExport = True
          Left = 920.425196850000000000
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
            
              '[(<frxDBSUM."TB6E_Ov">+<frxDBSUM."TB6E_Op">+<frxDBSUM."TB6E_Of">' +
              ')]')
          ParentFont = False
        end
        object Memo293: TfrxMemoView
          AllowVectorExport = True
          Left = 1010.055118110240000000
          Top = 20.251966060000000000
          Width = 88.440944881889800000
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
      #9'SUM(B12E_Of) as TB12E_Of'
      ''
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
    Left = 176
    Top = 120
  end
end