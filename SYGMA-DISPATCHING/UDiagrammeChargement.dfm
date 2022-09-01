object frmDiagrammeChargement: TfrmDiagrammeChargement
  Left = 0
  Top = 0
  Caption = 'Diagramme de Chargement'
  ClientHeight = 120
  ClientWidth = 275
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
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 263
    Height = 84
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 16
    Top = 41
    Width = 39
    Height = 13
    Caption = 'D'#233'but : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 66
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
  object Label3: TLabel
    Left = 16
    Top = 19
    Width = 25
    Height = 13
    Caption = 'Top :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object d1: TDateTimePicker
    Left = 153
    Top = 39
    Width = 106
    Height = 21
    Date = 44712.681736805560000000
    Time = 44712.681736805560000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object d2: TDateTimePicker
    Left = 153
    Top = 62
    Width = 106
    Height = 21
    Date = 44712.681736805560000000
    Time = 44712.681736805560000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 120
    Top = 92
    Width = 75
    Height = 25
    Caption = 'G'#233'n'#233'rer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 196
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Fermer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtop: TEdit
    Left = 153
    Top = 16
    Width = 106
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentColor = True
    ParentFont = False
    TabOrder = 4
    Text = '10'
  end
  object Diagramme: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44712.687247372700000000
    ReportOptions.LastChange = 44712.687247372700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 6
    Datasets = <
      item
        DataSet = frxDiag
        DataSetName = 'frxDiag'
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Chart1: TfrxChartView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 1035.591220000000000000
          Height = 676.535870000000000000
          HighlightColor = clBlack
          Frame.Typ = []
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C6508104C6567656E642E416C69676E6D656E7407086C61426F7474
            6F6D25426F74746F6D417869732E4C6162656C73466F726D61742E5465787441
            6C69676E6D656E740708746143656E746572244465707468417869732E4C6162
            656C73466F726D61742E54657874416C69676E6D656E740708746143656E7465
            72274465707468546F70417869732E4C6162656C73466F726D61742E54657874
            416C69676E6D656E740708746143656E7465720D4672616D652E56697369626C
            6508234C656674417869732E4C6162656C73466F726D61742E54657874416C69
            676E6D656E740708746143656E746572245269676874417869732E4C6162656C
            73466F726D61742E54657874416C69676E6D656E740708746143656E74657222
            546F70417869732E4C6162656C73466F726D61742E54657874416C69676E6D65
            6E740708746143656E7465720656696577334408165669657733444F7074696F
            6E732E526F746174696F6E02000D5A6F6F6D2E50656E2E4D6F64650708706D4E
            6F74586F720A426576656C4F75746572070662764E6F6E6505436F6C6F720707
            636C57686974650D44656661756C7443616E766173060E54474449506C757343
            616E76617311436F6C6F7250616C65747465496E646578020D000F54486F7269
            7A42617253657269657307536572696573311B42617242727573682E47726164
            69656E742E446972656374696F6E070B67644C65667452696768741A42617242
            727573682E4772616469656E742E456E64436F6C6F72042B406B001942617242
            727573682E4772616469656E742E56697369626C65090E436F6C6F7245616368
            506F696E7409074461726B50656E038200114D61726B732E466F6E742E486569
            67687402F70D4D61726B732E56697369626C6508144D61726B732E43616C6C6F
            75742E4C656E67746802040F4D61726B732E4472617745766572790202084261
            725374796C65070E6273526563744772616469656E740F426172576964746850
            657263656E740255124772616469656E742E446972656374696F6E070B67644C
            6566745269676874114772616469656E742E456E64436F6C6F72042B406B0010
            4772616469656E742E56697369626C6509084D756C746942617207066D624E6F
            6E650C5856616C7565732E4E616D6506034261720D5856616C7565732E4F7264
            657207066C6F4E6F6E650C5956616C7565732E4E616D650601590D5956616C75
            65732E4F72646572070B6C6F417363656E64696E67000000}
          ChartElevation = 345
          SeriesData = <
            item
              DataType = dtDBData
              DataSet = frxDiag
              DataSetName = 'frxDiag'
              SortOrder = soAscending
              TopN = 0
              XType = xtText
              Source1 = 'frxDiag."nom_livreur"'
              Source2 = 'frxDiag."sum(tvc.TKilo)"'
              XSource = 'frxDiag."nom_livreur"'
              YSource = 'frxDiag."sum(tvc.TKilo)"'
            end>
        end
      end
    end
  end
  object SQLDiag: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select sum(tvc.TKilo), tlc.nom_livreur  from tb_vte_chargveh tvc' +
        ' '
      
        'inner join tb_livraison_camion tlc on tlc.num_charg = tvc.numCha' +
        'rg '
      'group by tlc.code_livreur'
      'limit 10 ;')
    SQLConnection = DM.SQLConnection1
    Left = 112
    Top = 64
  end
  object frxDiag: TfrxDBDataset
    UserName = 'frxDiag'
    CloseDataSource = False
    DataSet = SQLDiag
    BCDToCurrency = False
    Left = 64
    Top = 48
  end
  object frxChartObject1: TfrxChartObject
    Left = 16
    Top = 8
  end
end
