object frmListeFcheEntree: TfrmListeFcheEntree
  Left = 0
  Top = 0
  Caption = 'Liste d'#39'entr'#233'e'
  ClientHeight = 409
  ClientWidth = 765
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
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 765
    Height = 27
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object Button1: TButton
      Left = 614
      Top = 1
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Recherche'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 689
      Top = 1
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Annuler'
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 137
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 6
      Width = 20
      Height = 13
      Caption = 'Du :'
    end
    object Label2: TLabel
      Left = 4
      Top = 27
      Width = 20
      Height = 13
      Caption = 'Au :'
    end
    object Label3: TLabel
      Left = 4
      Top = 50
      Width = 34
      Height = 13
      Caption = 'Client :'
    end
    object Label4: TLabel
      Left = 4
      Top = 72
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object Label5: TLabel
      Left = 4
      Top = 95
      Width = 46
      Height = 13
      Caption = 'Vehicule :'
    end
    object Label6: TLabel
      Left = 4
      Top = 116
      Width = 41
      Height = 13
      Caption = 'Immat. :'
    end
    object d1: TDateTimePicker
      Left = 71
      Top = 3
      Width = 115
      Height = 21
      Date = 44801.587425474540000000
      Time = 44801.587425474540000000
      Color = clBtnFace
      ParentColor = True
      TabOrder = 0
    end
    object d2: TDateTimePicker
      Left = 71
      Top = 25
      Width = 115
      Height = 21
      Date = 44801.587425474540000000
      Time = 44801.587425474540000000
      Color = clBtnFace
      ParentColor = True
      TabOrder = 1
    end
    object cbClient: TComboBox
      Left = 71
      Top = 47
      Width = 240
      Height = 21
      CharCase = ecUpperCase
      ParentColor = True
      TabOrder = 2
      OnChange = cbClientCloseUp
      OnCloseUp = cbClientCloseUp
    end
    object edcodeClt: TEdit
      Left = 71
      Top = 69
      Width = 115
      Height = 21
      ParentColor = True
      TabOrder = 3
    end
    object cbVeh: TComboBox
      Left = 71
      Top = 91
      Width = 240
      Height = 21
      CharCase = ecUpperCase
      ParentColor = True
      TabOrder = 4
      OnChange = cbVehCloseUp
      OnCloseUp = cbVehCloseUp
    end
    object edMarque: TEdit
      Left = 71
      Top = 113
      Width = 240
      Height = 21
      ParentColor = True
      TabOrder = 5
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 164
    Width = 765
    Height = 219
    Align = alClient
    ColCount = 8
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentColor = True
    PopupMenu = PopupMenu1
    ScrollBars = ssVertical
    TabOrder = 2
    StyleElements = [seBorder]
    OnDblClick = StringGrid1DblClick
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      75
      78
      53
      70
      156
      73
      136
      112)
  end
  object Panel3: TPanel
    Left = 0
    Top = 383
    Width = 765
    Height = 26
    Align = alBottom
    TabOrder = 3
    object Button3: TButton
      Left = 689
      Top = 1
      Width = 75
      Height = 24
      Align = alRight
      Caption = 'Pr'#233'visualiser'
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object frxFicheEntree: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44803.293738842600000000
    ReportOptions.LastChange = 44803.299862303200000000
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
        DataSet = frxDBFicheEntree
        DataSetName = 'frxDBFicheEntree'
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
        Width = 1046.929810000000000000
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Liste des entr'#233'es par fiche d'#39'entr'#233'e')
          ParentFont = False
        end
        object md1: TfrxMemoView
          AllowVectorExport = True
          Left = 39.456710000000000000
          Top = 26.543304650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
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
          Top = 26.543304650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 26.543304650000000000
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
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 90.708720000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 1046.929133858270000000
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
          Width = 93.639482180000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Num')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 93.403242180000000000
          Width = 81.532641770000000000
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 175.786702010000000000
          Width = 202.606370000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'V'#233'hicule')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 379.786702010000000000
          Width = 299.758377820000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Article')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 683.411189830000000000
          Width = 62.634991770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte vide')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 746.046181600000000000
          Width = 64.171492590000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte fuite')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 810.217674190000000000
          Width = 71.853996710000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte pleine')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 883.341654440000000000
          Width = 77.629667650000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kg fuite')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 962.294142090000000000
          Width = 85.312171770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kg pleine')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 173.858380000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBFicheEntree
        DataSetName = 'frxDBFicheEntree'
        RowCount = 0
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Width = 93.639482180000000000
          Height = 18.897650000000000000
          DataField = 'num_fes'
          DataSet = frxDBFicheEntree
          DataSetName = 'frxDBFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBFicheEntree."num_fes"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 93.403242180000000000
          Width = 81.532641770000000000
          Height = 18.897650000000000000
          DataField = 'date_fes'
          DataSet = frxDBFicheEntree
          DataSetName = 'frxDBFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheEntree."date_fes"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 175.786702010000000000
          Width = 202.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheEntree
          DataSetName = 'frxDBFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBFicheEntree."nom_veh"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 379.786702010000000000
          Width = 299.758377820000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBFicheEntree
          DataSetName = 'frxDBFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBFicheEntree."designation_art"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 683.411189830000000000
          Width = 62.634991770000000000
          Height = 18.897650000000000000
          DataSet = frxDBFicheEntree
          DataSetName = 'frxDBFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheEntree."qte_vide"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 746.046181600000000000
          Width = 64.171492590000000000
          Height = 18.897650000000000000
          DataField = 'qte_fuite'
          DataSet = frxDBFicheEntree
          DataSetName = 'frxDBFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheEntree."qte_fuite"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 810.217674190000000000
          Width = 71.853996710000000000
          Height = 18.897650000000000000
          DataField = 'qte_pleine'
          DataSet = frxDBFicheEntree
          DataSetName = 'frxDBFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheEntree."qte_pleine"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 883.341654440000000000
          Width = 77.629667650000000000
          Height = 18.897650000000000000
          DataField = 'kgfuite'
          DataSet = frxDBFicheEntree
          DataSetName = 'frxDBFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheEntree."kgfuite"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 962.294142090000000000
          Width = 85.312171770000000000
          Height = 18.897650000000000000
          DataField = 'kgpleine'
          DataSet = frxDBFicheEntree
          DataSetName = 'frxDBFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBFicheEntree."kgpleine"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 374.173470000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
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
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 99.157531570000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 684.559052680000000000
          Top = 7.000000000000000000
          Width = 62.740157480000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBFicheEntree."qte_vide">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 747.299210160000000000
          Top = 7.000000000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBFicheEntree."qte_fuite">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 811.551178660000000000
          Top = 7.000000000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBFicheEntree."qte_pleine">,MasterData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 884.606296770000000000
          Top = 7.000000000000000000
          Width = 77.480329610000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBFicheEntree."kgfuite">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 963.409446380000000000
          Top = 7.000000000000000000
          Width = 81.637807480000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBFicheEntree."kgpleine">,MasterData1)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 684.315400000000000000
          Top = 26.677180000000000000
          Width = 199.559055120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(sum(<frxDBFicheEntree."qte_vide">)+sum(<frxDBFicheEntree."qte_' +
              'fuite">)+sum(<frxDBFicheEntree."qte_pleine">))]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 884.630490000000000000
          Top = 26.787401570000000000
          Width = 161.007874015748000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(sum(<frxDBFicheEntree."kgfuite">)+sum(<frxDBFicheEntree."kgple' +
              'ine">))]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Commentaire :')
          ParentFont = False
        end
        object mComment: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
        end
      end
    end
  end
  object frxDBFicheEntree: TfrxDBDataset
    UserName = 'frxDBFicheEntree'
    CloseDataSource = False
    DataSet = QFicheEntree
    BCDToCurrency = False
    Left = 232
    Top = 88
  end
  object QFicheEntree: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from tb_fiche_es tfe'
      'inner join tb_fiche_esh tfe2'
      'on tfe.num_fes = tfe2.num_fh'
      ' where type_fes= 0;')
    SQLConnection = DM.SQLConnection1
    Left = 368
    Top = 64
  end
  object frxLFicheEntree: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44803.293738842600000000
    ReportOptions.LastChange = 44803.299862303200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 61
    Top = 209
    Datasets = <
      item
        DataSet = frxDBLFicheEntree
        DataSetName = 'frxDBLFicheEntree'
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
        Width = 1046.929810000000000000
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Liste des entr'#233'es par fiche d'#39'entr'#233'e')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 1046.929133858270000000
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
          Width = 93.639482180000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Num')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 93.403242180000000000
          Width = 81.532641770000000000
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
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 175.786702010000000000
          Width = 198.826840000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'V'#233'hicule')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 375.786702010000000000
          Width = 307.317437820000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Article')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 683.411189830000000000
          Width = 62.634991770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte vide')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 746.046181600000000000
          Width = 64.171492590000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte fuite')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 810.217674190000000000
          Width = 71.853996710000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte pleine')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 883.341654440000000000
          Width = 77.629667650000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kg fuite')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 962.294142090000000000
          Width = 85.312171770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kg pleine')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBLFicheEntree
        DataSetName = 'frxDBLFicheEntree'
        RowCount = 0
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Width = 93.639482180000000000
          Height = 18.897650000000000000
          DataField = 'num_fes'
          DataSet = frxDBLFicheEntree
          DataSetName = 'frxDBLFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBLFicheEntree."num_fes"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 93.403242180000000000
          Width = 81.532641770000000000
          Height = 18.897650000000000000
          DataField = 'date_fes'
          DataSet = frxDBLFicheEntree
          DataSetName = 'frxDBLFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLFicheEntree."date_fes"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 175.786702010000000000
          Width = 198.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLFicheEntree
          DataSetName = 'frxDBLFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBLFicheEntree."nom_veh"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 375.786702010000000000
          Width = 307.317437820000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBLFicheEntree
          DataSetName = 'frxDBLFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBLFicheEntree."designation_art"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 683.411189830000000000
          Width = 62.634991770000000000
          Height = 18.897650000000000000
          DataField = 'qte_vide'
          DataSet = frxDBLFicheEntree
          DataSetName = 'frxDBLFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLFicheEntree."qte_vide"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 746.046181600000000000
          Width = 64.171492590000000000
          Height = 18.897650000000000000
          DataField = 'qte_fuite'
          DataSet = frxDBLFicheEntree
          DataSetName = 'frxDBLFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLFicheEntree."qte_fuite"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 810.217674190000000000
          Width = 71.853996710000000000
          Height = 18.897650000000000000
          DataField = 'qte_pleine'
          DataSet = frxDBLFicheEntree
          DataSetName = 'frxDBLFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLFicheEntree."qte_pleine"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 883.341654440000000000
          Width = 77.629667650000000000
          Height = 18.897650000000000000
          DataField = 'kgfuite'
          DataSet = frxDBLFicheEntree
          DataSetName = 'frxDBLFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLFicheEntree."kgfuite"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 962.294142090000000000
          Width = 85.312171770000000000
          Height = 18.897650000000000000
          DataField = 'kgpleine'
          DataSet = frxDBLFicheEntree
          DataSetName = 'frxDBLFicheEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLFicheEntree."kgpleine"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 298.582870000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
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
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 683.338582680000000000
          Top = 1.000000000000000000
          Width = 62.740157480000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBLFicheEntree."qte_vide">,MasterData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 746.078740160000000000
          Top = 1.000000000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBLFicheEntree."qte_fuite">,MasterData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 810.330708660000000000
          Top = 1.000000000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBLFicheEntree."qte_pleine">,MasterData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 883.385826770000000000
          Top = 1.000000000000000000
          Width = 77.480329610000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBLFicheEntree."kgfuite">,MasterData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 962.188976380000000000
          Top = 1.000000000000000000
          Width = 85.417337480000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBLFicheEntree."kgpleine">,MasterData1)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 683.094930000000000000
          Top = 20.677180000000000000
          Width = 199.559055118110000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(sum(<frxDBLFicheEntree."qte_vide">)+sum(<frxDBLFicheEntree."qt' +
              'e_fuite">)+sum(<frxDBLFicheEntree."qte_pleine">))]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 883.410020000000000000
          Top = 20.787401570000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[(sum(<frxDBLFicheEntree."kgfuite">)+sum(<frxDBLFicheEntree."kgp' +
              'leine">))]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBLFicheEntree: TfrxDBDataset
    UserName = 'frxDBLFicheEntree'
    CloseDataSource = False
    DataSet = QLFicheEntree
    BCDToCurrency = False
    Left = 96
    Top = 272
  end
  object QLFicheEntree: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from tb_fiche_es tfe'
      'inner join tb_fiche_esh tfe2'
      'on tfe.num_fes = tfe2.num_fh'
      ' where type_fes= 0;')
    SQLConnection = DM.SQLConnection1
    Left = 232
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 248
    object Consulter1: TMenuItem
      Caption = 'Consulter'
      OnClick = Consulter1Click
    end
    object Supprimer1: TMenuItem
      Caption = 'Annuler'
      OnClick = Supprimer1Click
    end
  end
end
