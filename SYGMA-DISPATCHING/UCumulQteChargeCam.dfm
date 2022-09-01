object frmCumulQteChargeCam: TfrmCumulQteChargeCam
  Left = 0
  Top = 0
  Caption = 'Cumule des qte charg'#233'es'
  ClientHeight = 316
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 249
    Height = 89
    Caption = 'P'#233'riode de chargement des camions'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 36
      Height = 13
      Caption = 'D'#233'but :'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 21
      Height = 13
      Caption = 'Fin :'
    end
    object d1: TDateTimePicker
      Left = 66
      Top = 29
      Width = 110
      Height = 21
      Date = 44691.488283263890000000
      Time = 44691.488283263890000000
      TabOrder = 0
    end
    object d2: TDateTimePicker
      Left = 66
      Top = 52
      Width = 110
      Height = 21
      Date = 44691.488283263890000000
      Time = 44691.488283263890000000
      TabOrder = 1
    end
  end
  object btVisualiser: TButton
    Left = 198
    Top = 106
    Width = 75
    Height = 25
    Caption = 'Visualiser'
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 108
    Width = 171
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Items.Strings = (
      'Affichage en diagramme'
      'Affichage en tableau')
  end
  object frxTableau: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44794.885826250000000000
    ReportOptions.LastChange = 44794.885826250000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 88
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxChartObject1: TfrxChartObject
    Left = 32
    Top = 8
  end
  object QCumuleQte: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select tbd.codeArt,tbd.designationart ,sum(qte) as qte from tb_v' +
        'te_chargveh tbc '
      'inner join tb_vte_chargvehd tbd on tbc.numCharg = tbd.numCharg'
      'group by tbd.codeArt;')
    Left = 256
    Top = 43
    object QCumuleQtecodeArt: TStringField
      FieldName = 'codeArt'
      Size = 15
    end
    object QCumuleQtedesignationart: TStringField
      FieldName = 'designationart'
      Size = 100
    end
    object QCumuleQteqte: TFMTBCDField
      FieldName = 'qte'
      Precision = 32
      Size = 0
    end
  end
  object frxCumuleQte: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44794.890757650500000000
    ReportOptions.LastChange = 44794.890757650500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 208
    Top = 32
    Datasets = <>
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
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxDBCumuleQte: TfrxDBDataset
    UserName = 'frxDBCumuleQte'
    CloseDataSource = False
    DataSet = QCumuleQte
    BCDToCurrency = False
    Left = 216
    Top = 3
  end
end
