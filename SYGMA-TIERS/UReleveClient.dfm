object frmReleveOpClient: TfrmReleveOpClient
  Left = 0
  Top = 0
  Caption = 'Relev'#233' d'#39'op'#233'ration Client'
  ClientHeight = 367
  ClientWidth = 430
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
    Width = 430
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 430
      Height = 61
      Align = alClient
      Caption = 'Recherche Client'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 32
        Height = 13
        Caption = 'Code :'
      end
      object Label2: TLabel
        Left = 32
        Top = 38
        Width = 28
        Height = 13
        Caption = 'Nom :'
      end
      object edCodeClt: TEdit
        Left = 89
        Top = 13
        Width = 141
        Height = 21
        ParentColor = True
        TabOrder = 0
        OnChange = edCodeCltChange
      end
      object edNomclt: TEdit
        Left = 89
        Top = 35
        Width = 320
        Height = 21
        ParentColor = True
        TabOrder = 1
        OnChange = edNomcltChange
      end
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 61
    Width = 430
    Height = 176
    Align = alClient
    ColCount = 3
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    ParentColor = True
    TabOrder = 1
    StyleElements = [seBorder]
    OnDblClick = StringGrid1DblClick
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      78
      233
      113)
  end
  object Panel2: TPanel
    Left = 0
    Top = 341
    Width = 430
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Button1: TButton
      Left = 280
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Editer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 355
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Annuler'
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 237
    Width = 430
    Height = 104
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 430
      Height = 104
      Align = alClient
      Shape = bsFrame
      ExplicitLeft = 5
      ExplicitTop = 4
      ExplicitWidth = 431
      ExplicitHeight = 99
    end
    object Label3: TLabel
      Left = 16
      Top = 12
      Width = 34
      Height = 13
      Caption = 'Client :'
    end
    object Label4: TLabel
      Left = 16
      Top = 34
      Width = 28
      Height = 13
      Caption = 'Nom :'
    end
    object Label5: TLabel
      Left = 16
      Top = 57
      Width = 20
      Height = 13
      Caption = 'Du :'
    end
    object Label6: TLabel
      Left = 215
      Top = 57
      Width = 17
      Height = 13
      Caption = 'Au:'
    end
    object Label7: TLabel
      Left = 16
      Top = 80
      Width = 37
      Height = 13
      Caption = 'Statut :'
    end
    object edClientCode: TEdit
      Left = 65
      Top = 9
      Width = 141
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
    end
    object edClientNom: TEdit
      Left = 65
      Top = 31
      Width = 320
      Height = 21
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
    end
    object d1: TDateTimePicker
      Left = 65
      Top = 54
      Width = 142
      Height = 21
      Date = 44601.663779050930000000
      Time = 44601.663779050930000000
      TabOrder = 2
    end
    object d2: TDateTimePicker
      Left = 243
      Top = 54
      Width = 142
      Height = 21
      Date = 44601.663779050930000000
      Time = 44601.663779050930000000
      TabOrder = 3
    end
    object cbStatut: TComboBox
      Left = 65
      Top = 77
      Width = 141
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
      Text = 'Toutes'
      Items.Strings = (
        'Toutes'
        'Pay'#233'es'
        'En attente')
    end
  end
  object frxReleve: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44601.643740358800000000
    ReportOptions.LastChange = 44604.798835578700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 152
    Top = 84
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBQSoldeGene'
      end
      item
        DataSet = frxDBQSum
        DataSetName = 'frxDBQSum'
      end
      item
        DataSet = frxDBReleve
        DataSetName = 'frxDBReleve'
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 113.385900000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = -16.000000000000000000
          Width = 1065.826783860000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 555.992580000000000000
          Width = 195.419199590000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14869218
          HAlign = haCenter
          Memo.UTF8W = (
            'Facture')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 359.338900000000000000
          Width = 195.419199590000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14869218
          HAlign = haCenter
          Memo.UTF8W = (
            'Avance')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.718051170000000000
          Width = 84.529546200000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14869218
          Memo.UTF8W = (
            'Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 89.011357370000000000
          Width = 71.433070870000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = 14869218
          HAlign = haCenter
          Memo.UTF8W = (
            'Ope')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 161.209734180000000000
          Width = 105.826771650000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = 14869218
          HAlign = haCenter
          Memo.UTF8W = (
            'Caisse')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 267.847597060000000000
          Width = 91.086614170000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14869218
          HAlign = haCenter
          Memo.UTF8W = (
            'Pi'#232'ce')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 359.656791830000000000
          Top = 18.000000000000000000
          Width = 93.371889590000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#233'bit')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 454.367271420000000000
          Top = 18.000000000000000000
          Width = 97.762018070000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cr'#233'dit')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 553.467879500000000000
          Top = 18.000000000000000000
          Width = 97.151419590000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'D'#233'bit')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 651.178359090000000000
          Top = 18.000000000000000000
          Width = 97.762018070000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cr'#233'dit')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 750.278967160000000000
          Width = 300.729016700000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14869218
          Memo.UTF8W = (
            'Libelle')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 26.456692910000000000
          Width = 51.912998700000000000
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
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 65.488250000000000000
          Top = 26.456692913385800000
          Width = 93.487828700000000000
          Height = 18.897650000000000000
          DataField = 'code_clt'
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReleve."code_clt"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 167.196548700000000000
          Top = 26.456692913385800000
          Width = 125.466462470000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'nom_client'
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReleve."nom_client"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 1.559060000000000000
          Top = 0.779530000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relev'#233' d'#39'op'#233'rations client')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 9.000000000000000000
          Top = 49.338590000000000000
          Width = 51.912998700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Du :')
          ParentFont = False
          Style = 'Header'
        end
        object md1: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 49.133890000000000000
          Width = 51.912998700000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Au:')
          ParentFont = False
          Style = 'Header'
        end
        object md2: TfrxMemoView
          AllowVectorExport = True
          Left = 221.771800000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBReleve
        DataSetName = 'frxDBReleve'
        RowCount = 0
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 3.718051170000000000
          Width = 84.529546200000000000
          Height = 18.897650000000000000
          DataField = 'date_rc'
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReleve."date_rc"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 90.011357370000000000
          Width = 70.962136810000000000
          Height = 18.897650000000000000
          DataField = 'operation_rc'
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReleve."operation_rc"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 162.209734180000000000
          Width = 106.315042880000000000
          Height = 18.897650000000000000
          DataField = 'caisse_rc'
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReleve."caisse_rc"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 267.847597060000000000
          Width = 91.086614170000000000
          Height = 18.897650000000000000
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReleve."piece"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 359.656791830000000000
          Width = 93.371889590000000000
          Height = 18.897650000000000000
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReleve."avance_debit"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 454.367271420000000000
          Width = 97.762018070000000000
          Height = 18.897650000000000000
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReleve."avance_credit"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 552.467879500000000000
          Width = 97.133865590000000000
          Height = 18.897650000000000000
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReleve."factRet_debit"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 651.299212600000000000
          Width = 97.889763779527600000
          Height = 18.897650000000000000
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReleve."factRet_credit"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 752.278967160000000000
          Width = 296.949486700000000000
          Height = 18.897650000000000000
          DataField = 'Libelle'
          DataSet = frxDBReleve
          DataSetName = 'frxDBReleve'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReleve."Libelle"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 408.189240000000000000
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
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 298.582870000000000000
        Width = 1046.929810000000000000
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = -0.307471300000000000
          Top = 6.677180000000000000
          Width = 1044.906374920000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 359.811023620000000000
          Top = 5.000000000000000000
          Width = 93.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBQSum."SUM(avance_debit)"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 454.299212600000000000
          Top = 5.133858270000000000
          Width = 97.889763779527600000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBQSum."SUM(avance_credit)"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 552.566929130000000000
          Top = 5.133858270000000000
          Width = 97.133858270000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBQSum."SUM(factRet_debit)"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 651.212598430000000000
          Top = 5.133858270000000000
          Width = 97.889763779527600000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBQSum."SUM(factRet_credit)"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 4.000000000000000000
          Width = 51.912998700000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
          Style = 'Header'
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 203.094198700000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Solde Avance/Facture :')
          ParentFont = False
          Style = 'Header'
        end
        object frxDBQSumsoldeA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 359.811023620000000000
          Top = 30.236220470000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQSum
          DataSetName = 'frxDBQSum'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBQSum."soldeA"]')
          ParentFont = False
        end
        object frxDBQSumSoldeF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 30.236220470000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQSum
          DataSetName = 'frxDBQSum'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBQSum."SoldeF"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 34.015770000000000000
          Width = 1044.906374920000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 203.094198700000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Solde global :')
          ParentFont = False
          Style = 'Header'
        end
        object frxDBQSumsoldeGene: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 361.173470000000000000
          Top = 56.692950000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          DataSet = frxDBQSum
          DataSetName = 'frxDBQSum'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBQSoldeGene."soldeGene"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBReleve: TfrxDBDataset
    UserName = 'frxDBReleve'
    CloseDataSource = False
    DataSet = QReleve
    BCDToCurrency = False
    Left = 104
    Top = 84
  end
  object QReleve: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_releve_client')
    SQLConnection = DM.SQLConnection1
    Left = 104
    Top = 116
    object QReleveid_rc: TIntegerField
      FieldName = 'id_rc'
      Required = True
    end
    object QRelevecode_clt: TStringField
      FieldName = 'code_clt'
      Required = True
      Size = 30
    end
    object QRelevenom_client: TStringField
      FieldName = 'nom_client'
      Required = True
      Size = 50
    end
    object QRelevedate_rc: TDateField
      FieldName = 'date_rc'
    end
    object QReleveoperation_rc: TStringField
      FieldName = 'operation_rc'
      Size = 30
    end
    object QRelevecaisse_rc: TStringField
      FieldName = 'caisse_rc'
      Size = 30
    end
    object QRelevepiece: TStringField
      FieldName = 'piece'
      Size = 30
    end
    object QReleveavance_debit: TStringField
      FieldName = 'avance_debit'
      Size = 30
    end
    object QReleveavance_credit: TStringField
      FieldName = 'avance_credit'
      Size = 30
    end
    object QRelevefactRet_debit: TStringField
      FieldName = 'factRet_debit'
      Size = 30
    end
    object QRelevefactRet_credit: TStringField
      FieldName = 'factRet_credit'
      Size = 30
    end
    object QReleveLibelle: TStringField
      FieldName = 'Libelle'
      Size = 100
    end
  end
  object frxDBQSum: TfrxDBDataset
    UserName = 'frxDBQSum'
    CloseDataSource = False
    DataSet = QSum
    BCDToCurrency = False
    Left = 32
    Top = 84
  end
  object QSum: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT SUM(avance_debit), SUM(avance_credit),SUM(factRet_debit),' +
        'SUM(factRet_credit) ,(SUM(avance_credit) - SUM(avance_debit)) as' +
        ' soldeA,(SUM(factRet_credit) - SUM(factRet_debit)) as SoldeF FRO' +
        'M `tb_releve_client`')
    SQLConnection = DM.SQLConnection1
    Left = 32
    Top = 116
    object QSumSUMavance_debit: TFloatField
      FieldName = 'SUM(avance_debit)'
    end
    object QSumSUMavance_credit: TFloatField
      FieldName = 'SUM(avance_credit)'
    end
    object QSumSUMfactRet_debit: TFloatField
      FieldName = 'SUM(factRet_debit)'
    end
    object QSumSUMfactRet_credit: TFloatField
      FieldName = 'SUM(factRet_credit)'
    end
    object QSumsoldeA: TFloatField
      FieldName = 'soldeA'
    end
    object QSumSoldeF: TFloatField
      FieldName = 'SoldeF'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBQSoldeGene'
    CloseDataSource = False
    DataSet = QSoldeGene
    BCDToCurrency = False
    Left = 208
    Top = 84
  end
  object QSoldeGene: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT (SUM(factRet_credit) - (SUM(factRet_debit)) - (SUM(avance' +
        '_credit) - SUM(avance_debit))) as soldeGene  FROM `tb_releve_cli' +
        'ent`')
    SQLConnection = DM.SQLConnection1
    Left = 208
    Top = 116
  end
end
