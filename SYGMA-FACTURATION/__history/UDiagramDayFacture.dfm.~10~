object frmDiagramDayFact: TfrmDiagramDayFact
  Left = 0
  Top = 0
  Caption = 'Diagramme journalier de facture'
  ClientHeight = 404
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 23
    Width = 58
    Height = 13
    Caption = 'Fr'#233'quence :'
  end
  object Bevel1: TBevel
    Left = 7
    Top = 7
    Width = 297
    Height = 118
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 20
    Height = 13
    Caption = 'Du :'
  end
  object Label3: TLabel
    Left = 16
    Top = 69
    Width = 20
    Height = 13
    Caption = 'Au :'
  end
  object cbFrequence: TComboBox
    Left = 106
    Top = 20
    Width = 132
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 0
    Text = 'Quotidienne'
    Items.Strings = (
      'Quotidienne'
      'Mensuelle'
      'Annuelle')
  end
  object Button1: TButton
    Left = 15
    Top = 93
    Width = 75
    Height = 25
    Caption = 'Valider'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 93
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 2
  end
  object d1: TDateTimePicker
    Left = 106
    Top = 42
    Width = 132
    Height = 21
    Date = 44851.645768819440000000
    Time = 44851.645768819440000000
    TabOrder = 3
  end
  object d2: TDateTimePicker
    Left = 106
    Top = 64
    Width = 132
    Height = 21
    Date = 44851.645768819440000000
    Time = 44851.645768819440000000
    TabOrder = 4
  end
  object Chart1: TChart
    Left = 8
    Top = 128
    Width = 721
    Height = 273
    Legend.Alignment = laBottom
    Title.Text.Strings = (
      'TChart')
    BottomAxis.LabelsFormat.TextAlignment = taCenter
    Chart3DPercent = 5
    DepthAxis.LabelsFormat.TextAlignment = taCenter
    DepthTopAxis.LabelsFormat.TextAlignment = taCenter
    LeftAxis.LabelsFormat.TextAlignment = taCenter
    RightAxis.LabelsFormat.TextAlignment = taCenter
    TopAxis.LabelsFormat.TextAlignment = taCenter
    Zoom.Pen.Mode = pmNotXor
    TabOrder = 5
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Marks.Visible = False
      DataSource = DBCrossTabSource1
      Title = 'Totale'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object QDay: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_day_diagram_facture')
    SQLConnection = DM.SQLConnection1
    Left = 306
    Top = 8
  end
  object frxDBDay: TfrxDBDataset
    UserName = 'frxDBDay'
    CloseDataSource = False
    DataSet = QDay
    BCDToCurrency = False
    Left = 350
    Top = 8
  end
  object frxDay: TfrxChartObject
    Left = 397
    Top = 8
  end
  object RDay: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44851.425029351800000000
    ReportOptions.LastChange = 44851.425029351800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 352
    Top = 56
    Datasets = <
      item
        DataSet = frxDBDay
        DataSetName = 'frxDBDay'
      end>
    Variables = <>
    Style = <>
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
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object Chart1: TfrxChartView
        AllowVectorExport = True
        Left = 15.118120000000000000
        Top = 64.252010000000000000
        Width = 1020.473100000000000000
        Height = 566.929133860000000000
        HighlightColor = clBlack
        Frame.Typ = []
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C650825426F74746F6D417869732E4C6162656C73466F726D61742E
          54657874416C69676E6D656E740708746143656E746572244465707468417869
          732E4C6162656C73466F726D61742E54657874416C69676E6D656E7407087461
          43656E746572274465707468546F70417869732E4C6162656C73466F726D6174
          2E54657874416C69676E6D656E740708746143656E7465720D4672616D652E56
          697369626C6508234C656674417869732E4C6162656C73466F726D61742E5465
          7874416C69676E6D656E740708746143656E746572245269676874417869732E
          4C6162656C73466F726D61742E54657874416C69676E6D656E74070874614365
          6E74657222546F70417869732E4C6162656C73466F726D61742E54657874416C
          69676E6D656E740708746143656E746572165669657733444F7074696F6E732E
          526F746174696F6E02000D5A6F6F6D2E50656E2E4D6F64650708706D4E6F7458
          6F720A426576656C4F75746572070662764E6F6E6505436F6C6F720707636C57
          686974650D44656661756C7443616E766173060E54474449506C757343616E76
          617311436F6C6F7250616C65747465496E646578020D000B544C696E65536572
          69657307536572696573310E436F6C6F7245616368506F696E7409114D61726B
          732E466F6E742E48656967687402F70D4D61726B732E56697369626C6508144D
          61726B732E43616C6C6F75742E4C656E67746802040F4D61726B732E44726177
          457665727902020F42727573682E4261636B436F6C6F720709636C4465666175
          6C7416506F696E7465722E496E666C6174654D617267696E73090D506F696E74
          65722E5374796C65070B707352656374616E676C650F506F696E7465722E5669
          7369626C65080C5856616C7565732E4E616D650601580D5856616C7565732E4F
          72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D650601
          590D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            DataType = dtDBData
            DataSet = frxDBDay
            DataSetName = 'frxDBDay'
            SortOrder = soNone
            TopN = 0
            XType = xtText
            Source1 = 'frxDBDay."tmontant"'
            Source2 = 'frxDBDay."libelle"'
            Source3 = 'frxDBDay."date_dbf"'
            XSource = 'frxDBDay."tmontant"'
            YSource = 'frxDBDay."libelle"'
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = SQLTable1
    Left = 192
    Top = 216
  end
  object DBCrossTabSource1: TDBCrossTabSource
    Active = True
    DataSet = SQLTable1
    GroupField = 'libelle'
    LabelField = 'date_dbf'
    Series = Series1
    ValueField = 'tmontant'
    Left = 120
    Top = 184
  end
  object SQLTable1: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = DM.SQLConnection1
    TableName = 'tb_day_diagram_facture'
    Left = 272
    Top = 208
  end
end
