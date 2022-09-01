object frmFiche_stock: TfrmFiche_stock
  Left = 0
  Top = 0
  Caption = 'Fiche de stock'
  ClientHeight = 326
  ClientWidth = 565
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 565
    Height = 81
    Align = alTop
    Caption = 'Fiche de stock par magasin'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    StyleElements = [seBorder]
    object Label1: TLabel
      Left = 8
      Top = 39
      Width = 46
      Height = 13
      Caption = 'Magasin :'
    end
    object Label4: TLabel
      Left = 8
      Top = 61
      Width = 32
      Height = 13
      Caption = 'Code :'
    end
    object cb_magasin: TComboBox
      Left = 70
      Top = 36
      Width = 251
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cb_magasinCloseUp
      OnCloseUp = cb_magasinCloseUp
    end
    object edcode_mag: TEdit
      Left = 70
      Top = 58
      Width = 121
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 17
      Width = 129
      Height = 17
      Caption = 'Tous les magasins'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object Button2: TButton
      Left = 488
      Top = 15
      Width = 75
      Height = 64
      Align = alRight
      Caption = 'Recherche'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 81
    Width = 565
    Height = 220
    Align = alClient
    Color = clBtnFace
    ColCount = 6
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goRowSelect]
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      64
      223
      76
      64
      64
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 301
    Width = 565
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Button1: TButton
      Left = 490
      Top = 0
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Imprimer'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object QFiche_stock: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_article A, tb_stock S'
      '         where A.code_art = S.code_art'
      
        '         and s.code_mag = (select code_mag from tb_magasin where' +
        ' designation_mag = '#39'PFGB'#39')')
    SQLConnection = DM.SQLConnection1
    Left = 368
    Top = 136
  end
  object frxFiche_stock: TfrxDBDataset
    UserName = 'frxFiche_stock'
    CloseDataSource = False
    DataSet = QFiche_stock
    BCDToCurrency = False
    Left = 352
    Top = 192
  end
  object frxMAgasin: TfrxDBDataset
    UserName = 'frxMAgasin'
    CloseDataSource = False
    DataSet = QMagasin
    BCDToCurrency = False
    Left = 96
    Top = 200
  end
  object QMagasin: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_magasin')
    SQLConnection = DM.SQLConnection1
    Left = 112
    Top = 144
  end
  object frxE_Fiche_stock: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44427.869417592600000000
    ReportOptions.LastChange = 44672.351831990740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 208
    Datasets = <
      item
        DataSet = DM.frxDBParam
        DataSetName = 'frxDBParam'
      end
      item
        DataSet = frxFiche_stock
        DataSetName = 'frxFiche_stock'
      end
      item
        DataSet = frxMAgasin
        DataSetName = 'frxMAgasin'
      end>
    Variables = <>
    Style = <>
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
        Height = 55.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 4.811070000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FICHE DE STOCK')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 468.929272990000000000
          Top = 7.559060000000000000
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
            '[frxDBParam."nom"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 511.055049760000000000
          Top = 23.456710000000000000
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
            '[frxDBParam."description"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 98.267780000000000000
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
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 106.291586130000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clMenuText
          Memo.UTF8W = (
            'Code Art.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 108.291586130000000000
          Width = 366.190820080000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clMenuText
          Memo.UTF8W = (
            'D'#233'signation Art.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 641.371573570000000000
          Width = 73.518192660000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clMenuText
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte Totale')
          ParentFont = False
          Style = 'Header'
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 474.102660000000000000
          Width = 77.297722660000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clMenuText
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte vide')
          ParentFont = False
          Style = 'Header'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 551.693260000000000000
          Width = 88.636312660000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clMenuText
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte Charg'#233)
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxFiche_stock
        DataSetName = 'frxFiche_stock'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 106.291586130000000000
          Height = 22.677180000000000000
          DataSet = frxFiche_stock
          DataSetName = 'frxFiche_stock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxFiche_stock."code_art"]')
          ParentFont = False
          VAlign = vaCenter
          Highlights = <
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = '<frxFiche_stock."Qte_mag"> < 0'
              FillType = ftBrush
              Fill.BackColor = 12040191
              Frame.Typ = []
            end
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = '<frxFiche_stock."qte_vide"> < 0'
              FillType = ftBrush
              Fill.BackColor = 12040191
              Frame.Typ = []
            end>
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 108.291586130000000000
          Width = 366.236227800000000000
          Height = 22.677180000000000000
          DataSet = frxFiche_stock
          DataSetName = 'frxFiche_stock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxFiche_stock."designation_art"]')
          ParentFont = False
          VAlign = vaCenter
          Highlights = <
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = '<frxFiche_stock."Qte_mag"> <0'
              FillType = ftBrush
              Fill.BackColor = 12040191
              Frame.Typ = []
            end
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = '<frxFiche_stock."qte_vide"> < 0'
              FillType = ftBrush
              Fill.BackColor = 12040191
              Frame.Typ = []
            end>
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811023620000000000
          Width = 88.818897640000000000
          Height = 22.677180000000000000
          DataSet = frxFiche_stock
          DataSetName = 'frxFiche_stock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxFiche_stock."Qte_mag"]')
          ParentFont = False
          VAlign = vaCenter
          Highlights = <
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = '<frxFiche_stock."Qte_mag"> < 0'
              FillType = ftBrush
              Fill.BackColor = 12566527
              Frame.Typ = []
            end
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = '<frxFiche_stock."qte_vide"> < 0'
              FillType = ftBrush
              Fill.BackColor = 12040191
              Frame.Typ = []
            end>
        end
        object frxFiche_stockqte_vide: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 473.952755910000000000
          Width = 77.480314960000000000
          Height = 22.677165350000000000
          DataSet = frxFiche_stock
          DataSetName = 'frxFiche_stock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxFiche_stock."qte_vide"]')
          ParentFont = False
          VAlign = vaCenter
          Highlights = <
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = '<frxFiche_stock."Qte_mag"> < 0'
              FillType = ftBrush
              Fill.BackColor = 12040191
              Frame.Typ = []
            end
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = '<frxFiche_stock."qte_vide"> < 0'
              FillType = ftBrush
              Fill.BackColor = 12040191
              Frame.Typ = []
            end>
        end
        object frxFiche_stockqte_totale: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 641.385826770000000000
          Width = 73.700787400000000000
          Height = 22.677165350000000000
          DataSet = frxFiche_stock
          DataSetName = 'frxFiche_stock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxFiche_stock."qte_totale"]')
          ParentFont = False
          VAlign = vaCenter
          Highlights = <
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = '<frxFiche_stock."qte_vide"> < 0'
              FillType = ftBrush
              Fill.BackColor = 12040191
              Frame.Typ = []
            end
            item
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Condition = '<frxFiche_stock."Qte_mag"> < 0'
              FillType = ftBrush
              Fill.BackColor = 12040191
              Frame.Typ = []
            end>
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.133890000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 11.000000000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 12.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo21: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 168.189157010000000000
          Top = 26.000000000000000000
          Width = 381.732385980000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Left = 251.338745000000000000
          Top = 59.559060000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Left = 272.126160000000000000
          Top = 42.118120000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
end
