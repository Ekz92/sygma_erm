object frmRappelBL: TfrmRappelBL
  Left = 0
  Top = 0
  Caption = 'Rappel BL'
  ClientHeight = 376
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label31: TLabel
    Left = 5
    Top = 48
    Width = 34
    Height = 13
    Caption = 'Client :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbcodeClt: TLabel
    Left = 180
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Code :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label21: TLabel
    Left = 562
    Top = 48
    Width = 25
    Height = 13
    Caption = 'Prix :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label30: TLabel
    Left = 324
    Top = 350
    Width = 46
    Height = 13
    Caption = 'Tot. Blle :'
  end
  object lbTotBlle: TLabel
    Left = 388
    Top = 350
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label27: TLabel
    Left = 208
    Top = 350
    Width = 38
    Height = 13
    Caption = 'Prix liv :'
  end
  object lbPrixLiv: TLabel
    Left = 260
    Top = 350
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label24: TLabel
    Left = 109
    Top = 350
    Width = 42
    Height = 13
    Caption = 'Tot. Kg :'
  end
  object lbTotKg: TLabel
    Left = 163
    Top = 350
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label22: TLabel
    Left = 5
    Top = 350
    Width = 49
    Height = 13
    Caption = 'Total Art :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbTot_ligne: TLabel
    Left = 70
    Top = 350
    Width = 6
    Height = 13
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 272
    Top = 48
    Width = 70
    Height = 13
    Caption = 'Point de vente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel
    Left = 456
    Top = 48
    Width = 31
    Height = 13
    Caption = 'Zone :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Sg_rappel_Bl: TStringGrid
    Left = 2
    Top = 96
    Width = 621
    Height = 245
    ColCount = 6
    DefaultRowHeight = 15
    FixedColor = clOlive
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentColor = True
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    StyleElements = [seBorder]
    OnDrawCell = Sg_rappel_BlDrawCell
    ColWidths = (
      117
      90
      91
      195
      59
      59)
  end
  object ednomClient: TEdit
    Left = 2
    Top = 69
    Width = 174
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    OnChange = ednomClientExit
    OnExit = ednomClientExit
  end
  object edcodeClt: TEdit
    Left = 177
    Top = 69
    Width = 91
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object GroupBox2: TGroupBox
    Left = 380
    Top = 0
    Width = 242
    Height = 49
    Caption = 'Recherche'
    TabOrder = 3
    object Label19: TLabel
      Left = 11
      Top = 19
      Width = 43
      Height = 13
      Caption = 'N'#176' Fact :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ednumFacture: TEdit
      Left = 85
      Top = 17
      Width = 140
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnDblClick = ednumFactureDblClick
      OnExit = ednumFactureExit
    end
  end
  object Button1: TButton
    Left = 472
    Top = 346
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Valider'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 548
    Top = 346
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 5
    OnClick = Button2Click
  end
  object edprix: TEdit
    Left = 562
    Top = 69
    Width = 60
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object EdPointVente: TEdit
    Left = 269
    Top = 69
    Width = 184
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    OnChange = EdPointVenteExit
    OnExit = EdPointVenteExit
  end
  object edzone: TEdit
    Left = 454
    Top = 69
    Width = 107
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 465
    Top = 210
    object Modifier1: TMenuItem
      Caption = 'Livraison partielle'
      OnClick = Modifier1Click
    end
  end
  object frxBL: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44439.368549988400000000
    ReportOptions.LastChange = 44439.373249363400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 220
    Top = 218
    Datasets = <
      item
        DataSet = frxDBBL
        DataSetName = 'frxDBBL'
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
      PaperHeight = 150.000000000000000000
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
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 279.685220000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'BON DE LIVRAISON')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 37.795275590551200000
          Width = 49.815162960000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176'BL :')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 37.795275590000000000
          Width = 87.610462960000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBL."num_bl"] - [frxDBBL."num_blhis"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 296.012132960000000000
          Top = 37.795275590551200000
          Width = 60.460812490000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Client :')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 296.000465450000000000
          Top = 60.472480000000000000
          Width = 60.851929960000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nom :')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 8.180636010000000000
          Top = 60.472440944881900000
          Width = 73.596247950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Magasin :')
          ParentFont = False
          Style = 'Header'
        end
        object frxDBBLdesignation_mag: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 60.472480000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'designation_mag'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBL."designation_mag"]')
        end
        object frxDBBLcode_clt: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 37.795300000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'code_clt'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBL."code_clt"]')
        end
        object frxDBBLnom_clt: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 60.472480000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nom_clt'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBL."nom_clt"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 721.889766220000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 51.729883960000000000
          Width = 102.659585120000000000
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
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 154.594169080000000000
          Width = 306.123590250000000000
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
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 462.197969330000000000
          Width = 91.487096890000000000
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
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = frxDBBL
        DataSetName = 'frxDBBL'
        RowCount = 0
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 51.729883960000000000
          Width = 102.659585120000000000
          Height = 18.897650000000000000
          DataField = 'code_art'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBBL."code_art"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 154.594169080000000000
          Width = 306.123590250000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBBL."designation_art"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 462.197969330000000000
          Width = 91.487096890000000000
          Height = 18.897650000000000000
          DataField = 'qte_his'
          DataSet = frxDBBL
          DataSetName = 'frxDBBL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBBL."qte_his"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 287.244280000000000000
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
    end
  end
  object frxDBBL: TfrxDBDataset
    UserName = 'frxDBBL'
    CloseDataSource = False
    DataSet = QBL
    BCDToCurrency = False
    Left = 300
    Top = 218
  end
  object QBL: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from tb_bl bl , tb_bl_his blh')
    SQLConnection = DM.SQLConnection1
    Left = 268
    Top = 274
  end
end
