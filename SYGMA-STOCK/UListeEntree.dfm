object frmListeEntree: TfrmListeEntree
  Left = 0
  Top = 0
  Caption = 'Liste des entr'#233'e'
  ClientHeight = 303
  ClientWidth = 539
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
    Width = 539
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 680
    object Label2: TLabel
      Left = 23
      Top = 30
      Width = 21
      Height = 13
      Caption = 'Fin :'
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 36
      Height = 13
      Caption = 'D'#233'but :'
    end
    object d1: TDateTimePicker
      Left = 55
      Top = 5
      Width = 105
      Height = 21
      Date = 44094.317163078700000000
      Time = 44094.317163078700000000
      Color = clBtnFace
      ParentColor = True
      TabOrder = 0
    end
    object d2: TDateTimePicker
      Left = 55
      Top = 27
      Width = 105
      Height = 21
      Date = 44094.317163078700000000
      Time = 44094.317163078700000000
      Color = clBtnFace
      ParentColor = True
      TabOrder = 1
    end
    object Button1: TButton
      Left = 464
      Top = 0
      Width = 75
      Height = 51
      Align = alRight
      Caption = 'Voir'
      TabOrder = 2
      OnClick = Button1Click
      ExplicitLeft = 605
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 274
    Width = 539
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 371
    ExplicitWidth = 680
    object Button2: TButton
      Left = 474
      Top = 0
      Width = 65
      Height = 29
      Align = alRight
      Caption = 'G'#233'n'#233'rer'
      TabOrder = 0
      OnClick = Button2Click
      ExplicitLeft = 615
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 51
    Width = 539
    Height = 223
    Align = alClient
    ColCount = 7
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    ParentColor = True
    PopupMenu = PopupMenu1
    TabOrder = 2
    StyleElements = [seBorder]
    OnDrawCell = StringGrid1DrawCell
    ExplicitWidth = 680
    ExplicitHeight = 320
    ColWidths = (
      36
      61
      229
      38
      49
      52
      64)
  end
  object QLentree: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_entree E, tb_Article A, tb_magasin m')
    SQLConnection = DM.SQLConnection1
    Left = 120
    Top = 85
  end
  object frxDBfrxLEntree: TfrxDBDataset
    UserName = 'frxDBfrxLEntree'
    CloseDataSource = False
    DataSet = QLentree
    BCDToCurrency = False
    Left = 136
    Top = 152
  end
  object frxLEntree: TfrxReport
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
        DataSet = frxDBfrxLEntree
        DataSetName = 'frxDBfrxLEntree'
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
            'Etat des entr'#233'e en stock')
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
          Width = 79.549841730000000000
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
          Left = 83.211251730000000000
          Width = 261.266156030000000000
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
          Left = 343.989157770000000000
          Width = 78.109906420000000000
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
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 423.732530000000000000
          Width = 78.109906420000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Type entree')
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
        DataSet = frxDBfrxLEntree
        DataSetName = 'frxDBfrxLEntree'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Width = 79.549841730000000000
          Height = 18.897650000000000000
          DataField = 'code_art'
          DataSet = frxDBfrxLEntree
          DataSetName = 'frxDBfrxLEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBfrxLEntree."code_art"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 83.211251730000000000
          Width = 261.266156030000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBfrxLEntree
          DataSetName = 'frxDBfrxLEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBfrxLEntree."designation_art"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 343.989157770000000000
          Width = 78.109906420000000000
          Height = 18.897650000000000000
          DataField = 'code_mag'
          DataSet = frxDBfrxLEntree
          DataSetName = 'frxDBfrxLEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBfrxLEntree."code_mag"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 502.875747210000000000
          Width = 58.382491510000000000
          Height = 18.897650000000000000
          DataField = 'Qte_entree'
          DataSet = frxDBfrxLEntree
          DataSetName = 'frxDBfrxLEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBfrxLEntree."Qte_entree"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 562.376358710000000000
          Width = 96.521402760000000000
          Height = 18.897650000000000000
          DataField = 'date_entree'
          DataSet = frxDBfrxLEntree
          DataSetName = 'frxDBfrxLEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBfrxLEntree."date_entree"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 658.897761470000000000
          Width = 59.212474750000000000
          Height = 18.897650000000000000
          DataField = 'Usager'
          DataSet = frxDBfrxLEntree
          DataSetName = 'frxDBfrxLEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBfrxLEntree."Usager"]')
          ParentFont = False
        end
        object frxDBfrxLEntreetype_entree: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 423.732530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'type_entree'
          DataSet = frxDBfrxLEntree
          DataSetName = 'frxDBfrxLEntree'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBfrxLEntree."type_entree"]')
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
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 144
    object Supprimer1: TMenuItem
      Caption = 'Annulation'
      OnClick = Supprimer1Click
    end
  end
end
