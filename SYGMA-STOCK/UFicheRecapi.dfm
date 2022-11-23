object frmFicheRecapi: TfrmFicheRecapi
  Left = 0
  Top = 0
  Caption = 'R'#233'cap des entr'#233'es'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 1700.788500000000000000
        object Memo225: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'LISTE D'#39'ENTREE PAR FICHE')
          ParentFont = False
        end
        object md1: TfrxMemoView
          AllowVectorExport = True
          Left = 45.015770000000000000
          Top = 22.543304650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 9.338590000000000000
          Top = 22.456710000000000000
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
          Left = 181.078850000000000000
          Top = 22.543304650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 145.401670000000000000
          Top = 22.543304650000000000
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
          Left = 1408.764690000000000000
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
          Left = 1448.890466770000000000
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
        Height = 64.252010000000000000
        Top = 86.929190000000000000
        Width = 1700.788500000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 8.093955400000000000
          Top = 42.362204720000000000
          Width = 57.448811570000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 67.015748030000000000
          Top = 42.362204720000000000
          Width = 152.692942680000000000
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
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 758.937007874016000000
          Top = 42.362204720000000000
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
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 788.417322834646000000
          Top = 42.362204720000000000
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
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 818.653543310000000000
          Top = 42.362204720000000000
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
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 758.937007870000000000
          Top = 21.574803150000000000
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
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 669.315400000000000000
          Top = 42.362204720000000000
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
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 699.220472440945000000
          Top = 42.362204720000000000
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
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 729.078740160000000000
          Top = 42.362204720000000000
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
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 669.495103790000000000
          Top = 21.574803150000000000
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
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 579.787401574803000000
          Top = 42.362204720000000000
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
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 609.440683340000000000
          Top = 42.362204720000000000
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
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 639.512912190000000000
          Top = 42.362204720000000000
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
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 579.787401574803000000
          Top = 21.574803150000000000
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
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 490.755905511811000000
          Top = 42.362204720000000000
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
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 519.834313340000000000
          Top = 42.362204720000000000
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
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 549.906542190000000000
          Top = 42.362204720000000000
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
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 490.755905510000000000
          Top = 21.574803150000000000
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
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 400.496290000000000000
          Top = 42.362204720000000000
          Width = 36.283469450000000000
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
          Left = 438.227943340000000000
          Top = 42.362204720000000000
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
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 464.300172190000000000
          Top = 42.362204720000000000
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
            'P')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 400.675993790000000000
          Top = 21.574803150000000000
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
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 310.677165354331000000
          Top = 42.362204720000000000
          Width = 36.283469450000000000
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
          Left = 348.204443340000000000
          Top = 42.362204720000000000
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
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 374.276672190000000000
          Top = 42.362204720000000000
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
            'P')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 310.652493790000000000
          Top = 21.574803150000000000
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
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 221.110236220000000000
          Top = 42.362204720000000000
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
            'V')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 260.409448820000000000
          Top = 42.362204720000000000
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
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 285.354330710000000000
          Top = 42.362204720000000000
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
            'P')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 221.110236220472000000
          Top = 21.574803150000000000
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
        object Memo223: TfrxMemoView
          AllowVectorExport = True
          Left = 221.110236220000000000
          Top = 3.118120000000000000
          Width = 1433.197128660000000000
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
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 849.673149210000000000
          Top = 42.330708661417300000
          Width = 28.724409450000000000
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
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 849.607004650000000000
          Top = 21.543307086614200000
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
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 879.087319610000000000
          Top = 42.330708661417300000
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
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 908.945587330000000000
          Top = 42.330708661417300000
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
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 939.381869210000000000
          Top = 42.330708661417300000
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
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 939.315724650000000000
          Top = 21.543307086614200000
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
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 968.796039610000000000
          Top = 42.330708661417300000
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
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 998.654307330000000000
          Top = 42.330708661417300000
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
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.870119210000000000
          Top = 42.330708661417300000
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
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.803974650000000000
          Top = 21.543307086614200000
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
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 1057.284289610000000000
          Top = 42.330708661417300000
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
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 1087.142557330000000000
          Top = 42.330708661417300000
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
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 1116.992890000000000000
          Top = 42.330708661417300000
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
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.472440944880000000
          Top = 42.330708660000000000
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
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 1116.858267720000000000
          Top = 21.543307086614200000
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
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 1176.796772190000000000
          Top = 42.330708661417300000
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
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 1206.506698980000000000
          Top = 42.330708661417300000
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
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 1206.440554420000000000
          Top = 21.543307086614200000
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
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 1235.920869380000000000
          Top = 42.330708661417300000
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
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 1265.779137100000000000
          Top = 42.330708661417300000
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
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 1295.629921259840000000
          Top = 42.330708660000000000
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
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 1325.937283340000000000
          Top = 42.330708661417300000
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
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 1295.629921259840000000
          Top = 21.543307090000000000
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
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 1356.009512190000000000
          Top = 42.330708661417300000
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
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 1385.719438980000000000
          Top = 42.330708661417300000
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
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 1385.653294420000000000
          Top = 21.543307086614200000
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
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 1415.133609380000000000
          Top = 42.330708661417300000
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
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 1444.991877100000000000
          Top = 42.330708661417300000
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
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 1475.268710000000000000
          Top = 42.330708661417300000
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
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 1505.000363340000000000
          Top = 42.330708661417300000
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
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 1475.448413790000000000
          Top = 21.543307086614200000
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
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 1535.072592190000000000
          Top = 42.330708661417300000
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
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 1564.782518980000000000
          Top = 42.330708661417300000
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
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 1564.716374420000000000
          Top = 21.543307086614200000
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
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 1594.196689380000000000
          Top = 42.330708661417300000
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
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 1624.054957100000000000
          Top = 42.330708661417300000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 211.653680000000000000
        Width = 1700.788500000000000000
        DataSet = frxDBRecap
        DataSetName = 'frxDBRecap'
        RowCount = 0
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 8.093955400000000000
          Width = 57.548679880000000000
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
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 67.015748030000000000
          Width = 152.692942680000000000
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
          VAlign = vaCenter
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 758.937007874016000000
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
            '[frxDBRecap."B50_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 788.417322834646000000
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
            '[frxDBRecap."B50_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 818.653543307087000000
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
            '[frxDBRecap."B50_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 669.315400000000000000
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
            '[frxDBRecap."B25_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Left = 699.220472440945000000
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
            '[frxDBRecap."B25_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 729.078740157480000000
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
            '[frxDBRecap."B25_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 579.787401574803000000
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
            '[frxDBRecap."B12_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 609.622047244094000000
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
            '[frxDBRecap."B12_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 639.512912190000000000
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
            '[frxDBRecap."B12_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 490.755905511811000000
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
            '[frxDBRecap."B6R_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Left = 519.992125980000000000
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
            '[frxDBRecap."B6R_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 549.906542190000000000
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
            '[frxDBRecap."B6R_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Left = 400.496290000000000000
          Width = 36.283469450000000000
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
            '[frxDBRecap."B6_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 438.362204720000000000
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
            '[frxDBRecap."B6_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 464.464566930000000000
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
            '[frxDBRecap."B6_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Left = 310.629921260000000000
          Width = 36.283469450000000000
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
            '[frxDBRecap."B3A_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          Left = 348.322834650000000000
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
            '[frxDBRecap."B3A_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          Left = 374.276672190000000000
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
            '[frxDBRecap."B3A_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Left = 221.110236220000000000
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
            '[frxDBRecap."B3_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo218: TfrxMemoView
          AllowVectorExport = True
          Left = 260.479953340000000000
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
            '[frxDBRecap."B3_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo219: TfrxMemoView
          AllowVectorExport = True
          Left = 285.519685040000000000
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
            '[frxDBRecap."B3_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 849.673149210000000000
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
            '[frxDBRecap."B14_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 879.087319610000000000
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
            '[frxDBRecap."B14_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 908.945587330000000000
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
            '[frxDBRecap."B14_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 939.381869210000000000
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
            '[frxDBRecap."B20_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 968.796039610000000000
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
            '[frxDBRecap."B20_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 998.654307330000000000
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
            '[frxDBRecap."B20_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.870119210000000000
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
            '[frxDBRecap."B35_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 1057.284289610000000000
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
            '[frxDBRecap."B35_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 1087.142557330000000000
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
            '[frxDBRecap."B35_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 1116.992890000000000000
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
            '[frxDBRecap."B6E_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.472440944880000000
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
            '[frxDBRecap."B6E_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 1176.796772190000000000
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
            '[frxDBRecap."B6E_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 1206.506698980000000000
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
            '[frxDBRecap."B12E_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 1235.920869380000000000
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
            '[frxDBRecap."B12E_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 1265.779137100000000000
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
            '[frxDBRecap."B12E_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 1295.629921260000000000
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
            '[frxDBRecap."B6M_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 1325.763530640000000000
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
            '[frxDBRecap."B6M_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 1356.009512190000000000
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
            '[frxDBRecap."B6M_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 1385.719438980000000000
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
            '[frxDBRecap."B12M_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 1415.133609380000000000
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
            '[frxDBRecap."B12M_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 1444.991877100000000000
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
            '[frxDBRecap."B12M_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 1475.268710000000000000
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
            '[frxDBRecap."B6T_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 1504.826610640000000000
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
            '[frxDBRecap."B6T_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 1535.072592190000000000
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
            '[frxDBRecap."B6T_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 1564.782518980000000000
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
            '[frxDBRecap."B12T_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 1594.196689380000000000
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
            '[frxDBRecap."B12T_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 1624.054957100000000000
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
            '[frxDBRecap."B12T_Ip"]')
          ParentFont = False
          VAlign = vaCenter
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
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 88.149660000000000000
        Top = 253.228510000000000000
        Width = 1700.788500000000000000
        object Memo257: TfrxMemoView
          AllowVectorExport = True
          Left = 758.937007874016000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB50_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo258: TfrxMemoView
          AllowVectorExport = True
          Left = 788.417322834646000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB50_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo259: TfrxMemoView
          AllowVectorExport = True
          Left = 818.653543307087000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB50_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo260: TfrxMemoView
          AllowVectorExport = True
          Left = 669.503937010000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB25_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo261: TfrxMemoView
          AllowVectorExport = True
          Left = 699.220472440945000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB25_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo262: TfrxMemoView
          AllowVectorExport = True
          Left = 729.078740157480000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB25_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo263: TfrxMemoView
          AllowVectorExport = True
          Left = 579.787401574803000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo264: TfrxMemoView
          AllowVectorExport = True
          Left = 609.622047244094000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo265: TfrxMemoView
          AllowVectorExport = True
          Left = 639.268942190000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo266: TfrxMemoView
          AllowVectorExport = True
          Left = 490.755905511811000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6R_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo267: TfrxMemoView
          AllowVectorExport = True
          Left = 519.992125980000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6R_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo268: TfrxMemoView
          AllowVectorExport = True
          Left = 549.929133858268000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6R_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo269: TfrxMemoView
          AllowVectorExport = True
          Left = 400.637795280000000000
          Width = 36.283469450000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo270: TfrxMemoView
          AllowVectorExport = True
          Left = 438.362204720000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo271: TfrxMemoView
          AllowVectorExport = True
          Left = 464.464566930000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo276: TfrxMemoView
          AllowVectorExport = True
          Left = 310.629921260000000000
          Width = 36.283469450000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3A_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo277: TfrxMemoView
          AllowVectorExport = True
          Left = 348.322834650000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3A_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo278: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173228350000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3A_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo279: TfrxMemoView
          AllowVectorExport = True
          Left = 221.110236220000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo280: TfrxMemoView
          AllowVectorExport = True
          Left = 260.235983340000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo281: TfrxMemoView
          AllowVectorExport = True
          Left = 285.519685040000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB3_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo220: TfrxMemoView
          AllowVectorExport = True
          Left = 220.685039370000000000
          Top = 20.031496060000000000
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
            '[(<frxDBSUM."TB3_Iv">+<frxDBSUM."TB3_Ip">+<frxDBSUM."TB3_If">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo221: TfrxMemoView
          AllowVectorExport = True
          Left = 310.629921260000000000
          Top = 20.118120000000000000
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
            
              '[(<frxDBSUM."TB3A_Iv">+<frxDBSUM."TB3A_Ip">+<frxDBSUM."TB3A_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo222: TfrxMemoView
          AllowVectorExport = True
          Left = 400.567410000000000000
          Top = 20.031496060000000000
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
            '[(<frxDBSUM."TB6_Iv">+<frxDBSUM."TB6_Ip">+<frxDBSUM."TB6_If">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo252: TfrxMemoView
          AllowVectorExport = True
          Left = 490.755905510000000000
          Top = 20.031496060000000000
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
            
              '[(<frxDBSUM."TB6R_Iv">+<frxDBSUM."TB6R_Ip">+<frxDBSUM."TB6R_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo253: TfrxMemoView
          AllowVectorExport = True
          Left = 579.787401574803000000
          Top = 20.031496060000000000
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
            
              '[(<frxDBSUM."TB12_Iv">+<frxDBSUM."TB12_Ip">+<frxDBSUM."TB12_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo254: TfrxMemoView
          AllowVectorExport = True
          Left = 669.503937010000000000
          Top = 20.031496060000000000
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
            
              '[(<frxDBSUM."TB25_Iv">+<frxDBSUM."TB25_Ip">+<frxDBSUM."TB25_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo282: TfrxMemoView
          AllowVectorExport = True
          Left = 758.937007874016000000
          Top = 20.031496060000000000
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
            
              '[(<frxDBSUM."TB50_Iv">+<frxDBSUM."TB50_Ip">+<frxDBSUM."TB50_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 849.429179210000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB14_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 878.969209370000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB14_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 909.001118620000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB14_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 849.284170000000000000
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
            
              '[(<frxDBSUM."TB14_Iv">+<frxDBSUM."TB14_Ip">+<frxDBSUM."TB14_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 939.137899210000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB20_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 968.677929370000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB20_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 998.709838620000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB20_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 938.992890000000000000
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
            
              '[(<frxDBSUM."TB20_Iv">+<frxDBSUM."TB20_Ip">+<frxDBSUM."TB20_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.626149210000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB35_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 1057.166179370000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB35_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 1087.198088620000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB35_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.481140000000000000
          Top = 20.031496060000000000
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
            
              '[(<frxDBSUM."TB35_Iv">+<frxDBSUM."TB35_Ip">+<frxDBSUM."TB35_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo255: TfrxMemoView
          AllowVectorExport = True
          Left = 1116.858267720000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6E_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo256: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.472440944880000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6E_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo272: TfrxMemoView
          AllowVectorExport = True
          Left = 1176.552802190000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6E_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo273: TfrxMemoView
          AllowVectorExport = True
          Left = 1206.262728980000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12E_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo274: TfrxMemoView
          AllowVectorExport = True
          Left = 1235.802759140000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12E_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo275: TfrxMemoView
          AllowVectorExport = True
          Left = 1265.834668390000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12E_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo283: TfrxMemoView
          AllowVectorExport = True
          Left = 1116.858267716540000000
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
            
              '[(<frxDBSUM."TB6E_Iv">+<frxDBSUM."TB6E_Ip">+<frxDBSUM."TB6E_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo284: TfrxMemoView
          AllowVectorExport = True
          Left = 1206.117719770000000000
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
            
              '[(<frxDBSUM."TB12E_Iv">+<frxDBSUM."TB12E_Ip">+<frxDBSUM."TB12E_I' +
              'f">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 1295.629921259840000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6M_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 1325.763530640000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6M_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Left = 1355.765542190000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6M_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Left = 1385.475468980000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12M_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 1415.015499140000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12M_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 1445.047408390000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12M_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 1295.629921259840000000
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
            
              '[(<frxDBSUM."TB6M_Iv">+<frxDBSUM."TB6M_Ip">+<frxDBSUM."TB6M_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 1385.330459770000000000
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
            
              '[(<frxDBSUM."TB12M_Iv">+<frxDBSUM."TB12M_Ip">+<frxDBSUM."TB12M_I' +
              'f">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 1475.346295680000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6T_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 1504.826610640000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6T_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 1534.828622190000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB6T_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 1564.538548980000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12T_Iv"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 1594.078579140000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12T_If"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = 1624.110488390000000000
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
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBSUM."TB12T_Ip"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo192: TfrxMemoView
          AllowVectorExport = True
          Left = 1475.346295680000000000
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
            
              '[(<frxDBSUM."TB6T_Iv">+<frxDBSUM."TB6T_Ip">+<frxDBSUM."TB6T_If">' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          Left = 1564.393539770000000000
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
            
              '[(<frxDBSUM."TB12T_Iv">+<frxDBSUM."TB12T_Ip">+<frxDBSUM."TB12T_I' +
              'f">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo226: TfrxMemoView
          AllowVectorExport = True
          Left = 759.023768500000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB50_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          Left = 788.504083460000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB50_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo228: TfrxMemoView
          AllowVectorExport = True
          Left = 818.740303940000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB50_Ip">*50)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo229: TfrxMemoView
          AllowVectorExport = True
          Left = 669.590697640000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB25_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo230: TfrxMemoView
          AllowVectorExport = True
          Left = 699.307233070000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB25_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo231: TfrxMemoView
          AllowVectorExport = True
          Left = 729.165500790000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB25_Ip">*25)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo232: TfrxMemoView
          AllowVectorExport = True
          Left = 579.874162200000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo233: TfrxMemoView
          AllowVectorExport = True
          Left = 609.708807870000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo234: TfrxMemoView
          AllowVectorExport = True
          Left = 639.355702820000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12_Ip">*12)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo235: TfrxMemoView
          AllowVectorExport = True
          Left = 490.842666140000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6R_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo236: TfrxMemoView
          AllowVectorExport = True
          Left = 520.078886610000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6R_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo237: TfrxMemoView
          AllowVectorExport = True
          Left = 550.015894490000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6R_Ip">*6)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo238: TfrxMemoView
          AllowVectorExport = True
          Left = 400.724555910000000000
          Top = 40.574830000000000000
          Width = 36.283469450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo239: TfrxMemoView
          AllowVectorExport = True
          Left = 438.448965350000000000
          Top = 40.574830000000000000
          Width = 24.566929130000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo240: TfrxMemoView
          AllowVectorExport = True
          Left = 464.551327560000000000
          Top = 40.574830000000000000
          Width = 24.566929130000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6_Ip">*6)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo241: TfrxMemoView
          AllowVectorExport = True
          Left = 310.716681890000000000
          Top = 40.574830000000000000
          Width = 36.283469450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3A_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo242: TfrxMemoView
          AllowVectorExport = True
          Left = 348.409595280000000000
          Top = 40.574830000000000000
          Width = 24.566929130000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3A_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo243: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173228350000000000
          Top = 40.574830000000000000
          Width = 24.566929130000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3A_Ip">*3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo244: TfrxMemoView
          AllowVectorExport = True
          Left = 221.196996850000000000
          Top = 40.574830000000000000
          Width = 37.417322830000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo245: TfrxMemoView
          AllowVectorExport = True
          Left = 260.322743970000000000
          Top = 40.574830000000000000
          Width = 24.566929130000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo246: TfrxMemoView
          AllowVectorExport = True
          Left = 285.606445670000000000
          Top = 40.574830000000000000
          Width = 24.566929130000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB3_Ip">*3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo247: TfrxMemoView
          AllowVectorExport = True
          Left = 220.771800000000000000
          Top = 66.606326060000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB3_Iv">*0)+(<frxDBSUM."TB3_If">*0)+(<frxDBSUM."TB' +
              '3_Ip">*3))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo248: TfrxMemoView
          AllowVectorExport = True
          Left = 310.716681890000000000
          Top = 66.692950000000000000
          Width = 88.440944880000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[((<frxDBSUM."TB3A_Iv">*0)+(<frxDBSUM."TB3A_If">*0)+(<frxDBSUM."' +
              'TB3A_Ip">*3))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo249: TfrxMemoView
          AllowVectorExport = True
          Left = 400.654170630000000000
          Top = 66.606326060000000000
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
            
              '[((<frxDBSUM."TB6_Iv">*0)+(<frxDBSUM."TB6_If">*0)+(<frxDBSUM."TB' +
              '6_Ip">*6))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo250: TfrxMemoView
          AllowVectorExport = True
          Left = 490.842666140000000000
          Top = 66.606326060000000000
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
            
              '[((<frxDBSUM."TB6R_Iv">*0)+(<frxDBSUM."TB6R_If">*0)+(<frxDBSUM."' +
              'TB6R_Ip">*6))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo251: TfrxMemoView
          AllowVectorExport = True
          Left = 579.874162200000000000
          Top = 66.606326060000000000
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
            
              '[((<frxDBSUM."TB12_Iv">*0)+(<frxDBSUM."TB12_If">*0)+(<frxDBSUM."' +
              'TB12_Ip">*12))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo285: TfrxMemoView
          AllowVectorExport = True
          Left = 669.590697640000000000
          Top = 66.606326060000000000
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
            
              '[((<frxDBSUM."TB25_Iv">*0)+(<frxDBSUM."TB25_If">*0)+(<frxDBSUM."' +
              'TB25_Ip">*25))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo286: TfrxMemoView
          AllowVectorExport = True
          Left = 759.023768500000000000
          Top = 66.606326060000000000
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
            
              '[((<frxDBSUM."TB50_Iv">*0)+(<frxDBSUM."TB50_If">*0)+(<frxDBSUM."' +
              'TB50_Ip">*50))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo287: TfrxMemoView
          AllowVectorExport = True
          Left = 849.515939840000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB14_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo288: TfrxMemoView
          AllowVectorExport = True
          Left = 879.055970000000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB14_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo289: TfrxMemoView
          AllowVectorExport = True
          Left = 909.087879250000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB14_Ip">*14)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo290: TfrxMemoView
          AllowVectorExport = True
          Left = 849.370930630000000000
          Top = 66.708702910000000000
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
            
              '[((<frxDBSUM."TB14_Iv">*0)+(<frxDBSUM."TB14_If">*0)+(<frxDBSUM."' +
              'TB14_Ip">*14))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo291: TfrxMemoView
          AllowVectorExport = True
          Left = 939.224659840000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB20_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo292: TfrxMemoView
          AllowVectorExport = True
          Left = 968.764690000000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB20_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo293: TfrxMemoView
          AllowVectorExport = True
          Left = 998.796599250000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB20_Ip">*20)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo294: TfrxMemoView
          AllowVectorExport = True
          Left = 939.079650630000000000
          Top = 66.708702910000000000
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
            
              '[((<frxDBSUM."TB20_Iv">*0)+(<frxDBSUM."TB20_If">*0)+(<frxDBSUM."' +
              'TB20_Ip">*20))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo295: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.712909840000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB35_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo296: TfrxMemoView
          AllowVectorExport = True
          Left = 1057.252940000000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB35_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo297: TfrxMemoView
          AllowVectorExport = True
          Left = 1087.284849250000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB35_Ip">*35)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo298: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.567900630000000000
          Top = 66.606326060000000000
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
            
              '[((<frxDBSUM."TB35_Iv">*0)+(<frxDBSUM."TB35_If">*0)+(<frxDBSUM."' +
              'TB35_Ip">*35))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo299: TfrxMemoView
          AllowVectorExport = True
          Left = 1116.945028350000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6E_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo300: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.559201570000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6E_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo301: TfrxMemoView
          AllowVectorExport = True
          Left = 1176.639562820000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6E_Ip">*6)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo302: TfrxMemoView
          AllowVectorExport = True
          Left = 1206.349489610000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12E_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo303: TfrxMemoView
          AllowVectorExport = True
          Left = 1235.889519770000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12E_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo304: TfrxMemoView
          AllowVectorExport = True
          Left = 1265.921429020000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12E_Ip">*12)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo305: TfrxMemoView
          AllowVectorExport = True
          Left = 1116.945028350000000000
          Top = 66.708702910000000000
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
            
              '[((<frxDBSUM."TB6E_Iv">*0)+(<frxDBSUM."TB6E_If">*0)+(<frxDBSUM."' +
              'TB6E_Ip">*6))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo306: TfrxMemoView
          AllowVectorExport = True
          Left = 1206.204480400000000000
          Top = 66.708702910000000000
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
            
              '[((<frxDBSUM."TB12E_Iv">*0)+(<frxDBSUM."TB12E_If">*0)+(<frxDBSUM' +
              '."TB12E_Ip">*12))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo307: TfrxMemoView
          AllowVectorExport = True
          Left = 1295.716681890000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6M_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo308: TfrxMemoView
          AllowVectorExport = True
          Left = 1325.850291270000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6M_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo309: TfrxMemoView
          AllowVectorExport = True
          Left = 1355.852302820000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6M_Ip">*6)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo310: TfrxMemoView
          AllowVectorExport = True
          Left = 1385.562229610000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12M_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo311: TfrxMemoView
          AllowVectorExport = True
          Left = 1415.102259770000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12M_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo312: TfrxMemoView
          AllowVectorExport = True
          Left = 1445.134169020000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12M_Ip">*12)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo313: TfrxMemoView
          AllowVectorExport = True
          Left = 1295.716681890000000000
          Top = 66.708702910000000000
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
            
              '[((<frxDBSUM."TB6M_Iv">*0)+(<frxDBSUM."TB6M_If">*0)+(<frxDBSUM."' +
              'TB6M_Ip">*6))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo314: TfrxMemoView
          AllowVectorExport = True
          Left = 1385.417220400000000000
          Top = 66.708702910000000000
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
            
              '[((<frxDBSUM."TB12M_Iv">*0)+(<frxDBSUM."TB12M_If">*0)+(<frxDBSUM' +
              '."TB12M_Ip">*12))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo315: TfrxMemoView
          AllowVectorExport = True
          Left = 1475.433056310000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6T_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo316: TfrxMemoView
          AllowVectorExport = True
          Left = 1504.913371270000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6T_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo317: TfrxMemoView
          AllowVectorExport = True
          Left = 1534.915382820000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB6T_Ip">*6)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo318: TfrxMemoView
          AllowVectorExport = True
          Left = 1564.625309610000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12T_Iv">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo319: TfrxMemoView
          AllowVectorExport = True
          Left = 1594.165339770000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12T_If">*0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo320: TfrxMemoView
          AllowVectorExport = True
          Left = 1624.197249020000000000
          Top = 40.574830000000000000
          Width = 28.724409450000000000
          Height = 22.677180000000000000
          DataSet = frxDBRecap
          DataSetName = 'frxDBRecap'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = 12120018
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBSUM."TB12T_Ip">*12)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo321: TfrxMemoView
          AllowVectorExport = True
          Left = 1475.433056310000000000
          Top = 66.708702910000000000
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
            
              '[((<frxDBSUM."TB6T_Iv">*0)+(<frxDBSUM."TB6T_If">*0)+(<frxDBSUM."' +
              'TB6T_Ip">*6))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo322: TfrxMemoView
          AllowVectorExport = True
          Left = 1564.480300400000000000
          Top = 66.708702910000000000
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
            
              '[((<frxDBSUM."TB12T_Iv">*0)+(<frxDBSUM."TB12T_If">*0)+(<frxDBSUM' +
              '."TB12T_Ip">*12))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo348: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
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
          Left = 7.559060000000000000
          Top = 20.031496060000000000
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
          Left = 7.559060000000000000
          Top = 41.196850390000000000
          Width = 212.409448820000000000
          Height = 22.677180000000000000
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
          Left = 7.559060000000000000
          Top = 67.094527240000000000
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
      'select * from tb_fichei_recap ')
    SQLConnection = DM.SQLConnection1
    Left = 120
    Top = 120
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
      #9'SUM(B14_Iv) as TB14_Iv,'
      #9'SUM(B14_Ip) as TB14_Ip,'
      #9'SUM(B14_If) as TB14_If,'
      #9'SUM(B20_Iv) as TB20_Iv,'
      #9'SUM(B20_Ip) as TB20_Ip,'
      #9'SUM(B20_If) as TB20_If,'
      #9'SUM(B35_Iv) as TB35_Iv,'
      #9'SUM(B35_Ip) as TB35_Ip,'
      #9'SUM(B35_If) as TB35_If,'
      #9'SUM(B6M_Iv) as TB6M_Iv,'
      #9'SUM(B6M_Ip) as TB6M_Ip,'
      #9'SUM(B6M_If) as TB6M_If,'
      #9'SUM(B12M_Iv) as TB12M_Iv,'
      #9'SUM(B12M_Ip) as TB12M_Ip,'
      #9'SUM(B12M_If) as TB12M_If,'
      #9'SUM(B6T_Iv) as TB6T_Iv,'
      #9'SUM(B6T_Ip) as TB6T_Ip,'
      #9'SUM(B6T_If) as TB6T_If,'
      #9'SUM(B12T_Iv) as TB12T_Iv,'
      #9'SUM(B12T_Ip) as TB12T_Ip,'
      #9'SUM(B12T_If) as TB12T_If'
      ''
      'from tb_fichei_recap ')
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
    Top = 112
  end
end
