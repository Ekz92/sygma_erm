object frmListeSortie: TfrmListeSortie
  Left = 0
  Top = 0
  Caption = 'Liste de sortie'
  ClientHeight = 328
  ClientWidth = 533
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
  object StringGrid1: TStringGrid
    Left = 0
    Top = 47
    Width = 533
    Height = 253
    Align = alClient
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentColor = True
    ScrollBars = ssVertical
    TabOrder = 0
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      64
      260
      46
      50
      106)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 533
    Height = 47
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 624
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 36
      Height = 13
      Caption = 'D'#233'but :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 23
      Top = 26
      Width = 21
      Height = 13
      Caption = 'Fin :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 457
      Top = 1
      Width = 75
      Height = 45
      Align = alRight
      Caption = 'Voir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 344
      ExplicitTop = 6
      ExplicitHeight = 22
    end
    object d1: TDateTimePicker
      Left = 55
      Top = 1
      Width = 105
      Height = 21
      Date = 44094.317163078700000000
      Time = 44094.317163078700000000
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 1
    end
    object d2: TDateTimePicker
      Left = 55
      Top = 23
      Width = 105
      Height = 21
      Date = 44094.317163078700000000
      Time = 44094.317163078700000000
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 300
    Width = 533
    Height = 28
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 222
    ExplicitWidth = 534
    object Button2: TButton
      Left = 457
      Top = 1
      Width = 75
      Height = 26
      Align = alRight
      Caption = 'G'#233'n'#233'rer'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object frxLSortie: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44450.476247245400000000
    ReportOptions.LastChange = 44450.476247245400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 216
    Top = 96
    Datasets = <
      item
        DataSet = frxDBLSortie
        DataSetName = 'frxDBLSortie'
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 1.779530000000000000
          Width = 294.803340000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Etat de Sortie en stock')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220472000000
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
          Width = 68.211251734894400000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'code_art')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 68.211251734894400000
          Width = 166.777906033997000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'designation_art')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 234.989157768891000000
          Width = 78.109906418765700000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'code_mag')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 313.099064190000000000
          Width = 190.894803020000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'designation_mag')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 502.875747210000000000
          Width = 58.382491510000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 562.376358710000000000
          Width = 96.521402760000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Date')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 658.897761470916000000
          Width = 59.212474749556800000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Usager')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDBLSortie
        DataSetName = 'frxDBLSortie'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Width = 68.211251730000000000
          Height = 18.897650000000000000
          DataField = 'code_art'
          DataSet = frxDBLSortie
          DataSetName = 'frxDBLSortie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBLSortie."code_art"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 68.211251730000000000
          Width = 166.777906030000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBLSortie
          DataSetName = 'frxDBLSortie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBLSortie."designation_art"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 234.989157770000000000
          Width = 78.109906420000000000
          Height = 18.897650000000000000
          DataField = 'code_mag'
          DataSet = frxDBLSortie
          DataSetName = 'frxDBLSortie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBLSortie."code_mag"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 313.099064190000000000
          Width = 190.894803020000000000
          Height = 18.897650000000000000
          DataField = 'designation_mag'
          DataSet = frxDBLSortie
          DataSetName = 'frxDBLSortie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBLSortie."designation_mag"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 502.875747210000000000
          Width = 58.382491510000000000
          Height = 18.897650000000000000
          DataField = 'qte_sortie'
          DataSet = frxDBLSortie
          DataSetName = 'frxDBLSortie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBLSortie."qte_sortie"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 562.376358710000000000
          Width = 96.521402760000000000
          Height = 18.897650000000000000
          DataField = 'date_sortie'
          DataSet = frxDBLSortie
          DataSetName = 'frxDBLSortie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBLSortie."date_sortie"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 658.897761470000000000
          Width = 59.212474750000000000
          Height = 18.897650000000000000
          DataSet = frxDBLSortie
          DataSetName = 'frxDBLSortie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBLSortie."Usager"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo19: TfrxMemoView
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
  object QLSortie: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_Sortie S, tb_Article A, tb_magasin m')
    SQLConnection = DM.SQLConnection1
    Left = 120
    Top = 85
    object QLSortieid_sortie: TIntegerField
      FieldName = 'id_sortie'
      Required = True
    end
    object QLSortiecode_art: TStringField
      FieldName = 'code_art'
    end
    object QLSortiecode_mag: TStringField
      FieldName = 'code_mag'
    end
    object QLSortieqte_sortie: TIntegerField
      FieldName = 'qte_sortie'
    end
    object QLSortieusager: TStringField
      FieldName = 'usager'
    end
    object QLSortiedate_sortie: TSQLTimeStampField
      FieldName = 'date_sortie'
    end
    object QLSortieid_art: TIntegerField
      FieldName = 'id_art'
      Required = True
    end
    object QLSortiecode_art_1: TStringField
      FieldName = 'code_art_1'
      Required = True
    end
    object QLSortiedesignation_art: TStringField
      FieldName = 'designation_art'
      Required = True
      Size = 100
    end
    object QLSortietype_art: TStringField
      FieldName = 'type_art'
      Required = True
      Size = 100
    end
    object QLSortiekilo: TFloatField
      FieldName = 'kilo'
      Required = True
    end
    object QLSortiecode_mag_1: TStringField
      FieldName = 'code_mag_1'
      Required = True
      Size = 15
    end
    object QLSortieid_mag: TIntegerField
      FieldName = 'id_mag'
      Required = True
    end
    object QLSortiecode_mag_2: TStringField
      FieldName = 'code_mag_2'
      Required = True
      Size = 15
    end
    object QLSortiedesignation_mag: TStringField
      FieldName = 'designation_mag'
      Required = True
      Size = 100
    end
  end
  object frxDBLSortie: TfrxDBDataset
    UserName = 'frxDBLSortie'
    CloseDataSource = False
    DataSet = QLSortie
    BCDToCurrency = False
    Left = 136
    Top = 152
  end
end
