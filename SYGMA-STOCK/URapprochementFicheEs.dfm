object frmRapprochementFicheEs: TfrmRapprochementFicheEs
  Left = 0
  Top = 0
  Caption = 'Rapprochement entr'#233'es/sorties'
  ClientHeight = 179
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
    Height = 147
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
    Top = 147
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
  object frxLFicheRap: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44804.278942245400000000
    ReportOptions.LastChange = 44804.278942245400000000
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
        DataSet = frxDBFicheRap
        DataSetName = 'frxDBFicheRap'
      end
      item
        DataSet = frxDBsum
        DataSetName = 'frxDBsum'
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
      PaperWidth = 420.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 8
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
        Width = 1511.812000000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 68.031540000000000000
        Width = 1511.812000000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 0.117810000000000000
          Top = 22.000000000000000000
          Width = 1511.811323860000000000
          Height = 18.897650000000000000
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
          Top = 22.000000000000000000
          Width = 80.503937010000000000
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
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 81.046308020000000000
          Top = 22.000000000000000000
          Width = 131.669751280000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Client')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 213.786869300000000000
          Top = 22.000000000000000000
          Width = 83.211281790000000000
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 297.439091090000000000
          Top = 22.000000000000000000
          Width = 183.869539540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Marque ')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 482.143200630000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'B3A')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 517.495255400000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'B3')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 552.526127420000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'B6')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 587.556999430000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B6R')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 622.722518950000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B12')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 657.447644220000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B25')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 692.172769490000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B50')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 727.897894760000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B6E')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 763.249949530000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B12E')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 799.296257550000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B14')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 834.021382820000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B20_I')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 868.746508090000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B35_I')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 908.471633350000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'B3A')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 942.891011880000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'B3')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 977.989207640000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B6')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 1013.087403410000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B6R')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 1048.320246680000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B12')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 1083.112695700000000000
          Top = 22.000000000000000000
          Width = 35.792449020000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B25')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 1119.905144720000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B50')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 1155.697593740000000000
          Top = 22.000000000000000000
          Width = 37.419378520000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B6E')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 1194.116972270000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B12E')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 1229.230604040000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B14')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 1264.023053060000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B20')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 1299.136684840000000000
          Top = 22.000000000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'B35')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          AllowVectorExport = True
          Left = 482.267716540000000000
          Top = 1.677180000000000000
          Width = 420.661417320000000000
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
            'BOUTEILLE TOTAL ENTREE')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          Left = 908.598425200000000000
          Top = 2.000000000000000000
          Width = 424.440944880000000000
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
            'BOUTEILLE TOTAL SORTIE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 1511.812000000000000000
        DataSet = frxDBFicheRap
        DataSetName = 'frxDBFicheRap'
        RowCount = 0
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 80.503937010000000000
          Height = 18.897650000000000000
          DataField = 'date_ft'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBFicheRap."date_ft"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 81.046308020000000000
          Width = 131.669751280000000000
          Height = 18.897650000000000000
          DataField = 'nom_clt'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBFicheRap."nom_clt"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 213.786869300000000000
          Width = 83.211281790000000000
          Height = 18.897650000000000000
          DataField = 'matricule_veh'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBFicheRap."matricule_veh"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 297.439091090000000000
          Width = 183.869539540000000000
          Height = 18.897650000000000000
          DataField = 'marque_veh'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBFicheRap."marque_veh"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 482.143200630000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B3A_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B3A_I"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 517.495255400000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B3_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B3_I"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 552.526127420000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B6_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B6_I"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 587.556999430000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B6R_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B6R_I"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 622.722518950000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B12_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B12_I"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 657.447644220000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B25_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B25_I"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 692.172769490000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B50_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B50_I"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 727.897894760000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B6E_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B6E_I"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 763.249949530000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B12E_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B12E_I"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 799.296257550000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B14_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B14_I"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 834.021382820000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B20_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B20_I"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 868.746508090000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B35_I'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B35_I"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 908.471633350000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B3A_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B3A_S"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 942.891011880000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B3_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B3_S"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 977.989207640000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B6_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B6_S"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 1013.087403410000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B6R_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B6R_S"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 1048.320246680000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B12_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B12_S"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 1083.112695700000000000
          Width = 35.792449020000000000
          Height = 18.897650000000000000
          DataField = 'B25_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B25_S"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 1119.905144720000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B50_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B50_S"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 1155.697593740000000000
          Width = 37.419378520000000000
          Height = 18.897650000000000000
          DataField = 'B6E_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B6E_S"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 1194.116972270000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B12E_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B12E_S"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 1229.230604040000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B14_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B14_S"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 1264.023053060000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B20_S"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 1299.136684840000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'B35_S'
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheRap."B35_S"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 317.480520000000000000
        Width = 1511.812000000000000000
        object Memo59: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1511.812000000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo61: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 1436.221400000000000000
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
        Top = 211.653680000000000000
        Width = 1511.812000000000000000
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 482.267716540000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB3A_I"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 517.417322830000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB3_I"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 552.566929130000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB6_I"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 587.716535430000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB6R_I"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 622.866141730000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB12_I"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 657.259842520000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB25_I"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 692.031496060000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB50_I"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 727.937007870000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB6E_I"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 763.086614170000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB12E_I"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 799.370078740000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB14_I"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 834.141732280000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB20_I"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 868.913385830000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB35_I"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 908.598425200000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB3A_S"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 942.992125980000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB3_S"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 978.141732280000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB6_S"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 1012.913385830000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB6R_S"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 1048.440944880000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB12_S"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 1083.212598430000000000
          Width = 35.792449020000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB25_S"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 1119.874015750000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB50_S"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 1155.779527560000000000
          Width = 37.419378520000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB6E_S"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 1193.952755910000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB12E_S"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 1229.102362200000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB14_S"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 1263.874015750000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB20_S"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 1299.023622050000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 13088242
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBsum."TB35_S"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 481.779840000000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB3A_I"><<frxDBsum."TB3A_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB3A_I">-<frxDBsum."TB3A_S">)]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 516.929446290000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB3_I"><<frxDBsum."TB3_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB3_I">-<frxDBsum."TB3_S">)]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 552.079052590000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB6_I"><<frxDBsum."TB6_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB6_I">-<frxDBsum."TB6_S">)]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 587.228658890000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB6R_I"><<frxDBsum."TB6R_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB6R_I">-<frxDBsum."TB6R_S">)]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 622.378265190000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB12_I"><<frxDBsum."TB12_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB12_I">-<frxDBsum."TB12_S">)]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 656.771965980000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB25_I"><<frxDBsum."TB25_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB25_I">-<frxDBsum."TB25_S">)]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 691.543619520000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB50_I"><<frxDBsum."TB50_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB50_I">-<frxDBsum."TB50_S">)]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 727.449131330000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB6E_I"><<frxDBsum."TB6E_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB6E_I">-<frxDBsum."TB6E_S">)]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 762.598737630000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB12E_I"><<frxDBsum."TB12E_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB12E_I">-<frxDBsum."TB12E_S">)]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 798.882202200000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB14_I"><<frxDBsum."TB14_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB14_I">-<frxDBsum."TB14_S">)]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 833.653855740000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB20_I"><<frxDBsum."TB20_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB20_I">-<frxDBsum."TB20_S">)]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 868.425509290000000000
          Top = 26.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheRap
          DataSetName = 'frxDBFicheRap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 12120018
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBsum."TB35_I"><<frxDBsum."TB35_S">'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[(<frxDBsum."TB35_I">-<frxDBsum."TB35_S">)]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362204724409000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Equarts :')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
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
      end
    end
  end
  object frxDBFicheRap: TfrxDBDataset
    UserName = 'frxDBFicheRap'
    CloseDataSource = False
    DataSet = QFicheRap
    BCDToCurrency = False
    Left = 208
    Top = 80
  end
  object QFicheRap: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_ficheEs_Total;')
    SQLConnection = DM.SQLConnection1
    Left = 136
    Top = 64
  end
  object frxDBsum: TfrxDBDataset
    UserName = 'frxDBsum'
    CloseDataSource = False
    DataSet = QSUM
    BCDToCurrency = False
    Left = 141
    Top = 116
  end
  object QSUM: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      ''
      #9'sum(B3A_I) as TB3A_I,'
      #9'sum(B3_I ) as TB3_I ,'
      #9'sum(B6_I ) as TB6_I, '
      #9'sum(B6R_I) as TB6R_I,'
      #9'sum(B12_I) as TB12_I,'
      #9'sum(B25_I) as TB25_I,'
      #9'sum(B50_I) as TB50_I,'
      #9'sum(B6E_I) as TB6E_I,'
      #9'sum(B12E_I) as TB12E_I,'
      #9'sum(B14_I) as TB14_I,'
      #9'sum(B20_I) as TB20_I,'
      #9'sum(B35_I) as TB35_I,'
      #9'--'
      #9'sum(B3A_S) as TB3A_S,'
      #9'sum(B3_S ) as TB3_S, '
      #9'sum(B6_S ) as TB6_S ,'
      #9'sum(B6R_S) as TB6R_S,'
      #9'sum(B12_S) as TB12_S,'
      #9'sum(B25_S) as TB25_S,'
      #9'sum(B50_S) as TB50_S,'
      #9'sum(B6E_S) as TB6E_S,'
      #9'sum(B12E_S) as TB12E_S,'
      #9'sum(B14_S) as TB14_S,'
      #9'sum(B20_S) as TB20_S,'
      #9'sum(B35_S) as TB35_S'
      ''
      ' from tb_ficheEs_Total;')
    SQLConnection = DM.SQLConnection1
    Left = 80
    Top = 104
  end
end
