object frmListeFacture: TfrmListeFacture
  Left = 0
  Top = 0
  Caption = 'Liste de facture'
  ClientHeight = 291
  ClientWidth = 579
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
    Width = 579
    Height = 62
    Align = alTop
    Caption = 'Recherche'
    TabOrder = 0
    ExplicitWidth = 580
    object Label2: TLabel
      Left = 185
      Top = 17
      Width = 20
      Height = 13
      Caption = 'Du :'
    end
    object Label3: TLabel
      Left = 184
      Top = 41
      Width = 20
      Height = 13
      Caption = 'Au :'
    end
    object SpeedButton1: TSpeedButton
      Left = 509
      Top = 15
      Width = 68
      Height = 45
      Align = alRight
      Caption = 'Rechercher'
      Flat = True
      OnClick = SpeedButton1Click
      ExplicitLeft = 544
      ExplicitHeight = 56
    end
    object Label4: TLabel
      Left = 289
      Top = 13
      Width = 31
      Height = 13
      Caption = 'Total :'
    end
    object Label5: TLabel
      Left = 289
      Top = 29
      Width = 58
      Height = 13
      Caption = 'Total pay'#233' :'
    end
    object Label6: TLabel
      Left = 289
      Top = 45
      Width = 59
      Height = 13
      Caption = 'Total reste :'
    end
    object lbtotal: TLabel
      Left = 353
      Top = 13
      Width = 22
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lbtotpaye: TLabel
      Left = 353
      Top = 29
      Width = 22
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lbtotreste: TLabel
      Left = 353
      Top = 45
      Width = 22
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object cbStatut: TComboBox
      Left = 6
      Top = 14
      Width = 78
      Height = 21
      Style = csDropDownList
      ParentColor = True
      TabOrder = 0
      TextHint = 'Statut'
      StyleElements = [seBorder]
      Items.Strings = (
        ''
        'Pay'#233'e'
        'En attente'
        'Forc'#233'e')
    end
    object d1: TDateTimePicker
      Left = 206
      Top = 14
      Width = 76
      Height = 21
      Date = 44461.472379351850000000
      Time = 44461.472379351850000000
      TabOrder = 1
      StyleElements = [seBorder]
    end
    object d2: TDateTimePicker
      Left = 206
      Top = 37
      Width = 76
      Height = 21
      Date = 44461.472379351850000000
      Time = 44461.472379351850000000
      TabOrder = 2
      StyleElements = [seBorder]
    end
    object edCodeClt: TEdit
      Left = 6
      Top = 37
      Width = 78
      Height = 21
      ParentColor = True
      TabOrder = 3
      TextHint = 'Client'
      OnDblClick = edCodeCltDblClick
    end
    object cbType: TComboBox
      Left = 89
      Top = 14
      Width = 91
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
      Text = 'Comptoire'
      TextHint = 'Type'
      Items.Strings = (
        'Comptoire'
        'Camion')
    end
    object edVehicule: TEdit
      Left = 89
      Top = 37
      Width = 91
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 5
      TextHint = 'Vehicule'
    end
  end
  object St_listeFacture: TStringGrid
    Left = 0
    Top = 62
    Width = 579
    Height = 202
    Align = alClient
    ColCount = 7
    DefaultRowHeight = 15
    DoubleBuffered = False
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
    ParentColor = True
    ParentDoubleBuffered = False
    PopupMenu = PopupMenu1
    ScrollBars = ssNone
    TabOrder = 1
    StyleElements = [seBorder]
    OnDblClick = St_listeFactureDblClick
    OnDrawCell = St_listeFactureDrawCell
    ExplicitWidth = 580
    ExplicitHeight = 190
    ColWidths = (
      59
      69
      181
      71
      65
      62
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 264
    Width = 579
    Height = 27
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 252
    ExplicitWidth = 580
    object Button1: TButton
      Left = 504
      Top = 0
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Imprimer'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 505
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 112
    object Consultation1: TMenuItem
      Caption = 'Consultation'
      OnClick = Consultation1Click
    end
    object Supprimer1: TMenuItem
      Caption = 'Annulation'
      OnClick = Supprimer1Click
    end
  end
  object RFactureListe: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44648.497365601800000000
    ReportOptions.LastChange = 44648.497365601800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 416
    Top = 112
    Datasets = <
      item
        DataSet = DM.frxDBParam
        DataSetName = 'frxDBParam'
      end
      item
        DataSet = frxRFactureListe
        DataSetName = 'frxRFactureListe'
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 294.803340000000000000
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'LISTE DE FACTURE')
          ParentFont = False
        end
        object md1: TfrxMemoView
          AllowVectorExport = True
          Left = 39.456710000000000000
          Top = 25.322834650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 25.236240000000000000
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
          Top = 25.322834650000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 25.322834650000000000
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
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 48.000014650000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Statut :')
          ParentFont = False
        end
        object mStatut: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 48.000014650000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '-')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 25.677180000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Type :')
          ParentFont = False
        end
        object mtype: TfrxMemoView
          AllowVectorExport = True
          Left = 345.448818900000000000
          Top = 25.456710000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 45.354360000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'V'#233'hicule :')
          ParentFont = False
        end
        object mvehicule: TfrxMemoView
          AllowVectorExport = True
          Left = 345.496290000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 3.779530000000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 507.007966770000000000
          Top = 19.677180000000000000
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
        Top = 132.283550000000000000
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
          Width = 58.082120890000000000
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
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 63.641180890000000000
          Width = 103.646486530000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Facture')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 165.508137420000000000
          Width = 81.449126110000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'code Clt')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 247.059613530000000000
          Width = 191.990406920000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nom Clt')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 441.043998960000000000
          Width = 90.222634620000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Montant')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 533.691803580000000000
          Width = 85.753279390000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pay'#233)
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 622.429312970000000000
          Width = 90.995060810000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reste')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897637795275600000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxRFactureListe
        DataSetName = 'frxRFactureListe'
        RowCount = 0
        object frxRFactureListedate_fact: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 58.204719530000000000
          Height = 15.118110240000000000
          DataSet = frxRFactureListe
          DataSetName = 'frxRFactureListe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."date_fact"]')
          ParentFont = False
          WordWrap = False
        end
        object frxRFactureListenum_fact: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 63.763779530000000000
          Top = 2.000000000000000000
          Width = 103.559057560000000000
          Height = 15.118110240000000000
          DataSet = frxRFactureListe
          DataSetName = 'frxRFactureListe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."num_fact"]')
          ParentFont = False
        end
        object frxRFactureListecode_clt1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 165.543307090000000000
          Top = 2.000000000000000000
          Width = 81.637795280000000000
          Height = 15.118110240000000000
          DataSet = frxRFactureListe
          DataSetName = 'frxRFactureListe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."code_clt"]')
          ParentFont = False
        end
        object frxRFactureListenom_clt: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 2.000000000000000000
          Width = 192.000000000000000000
          Height = 15.118110240000000000
          DataSet = frxRFactureListe
          DataSetName = 'frxRFactureListe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."nom_clt"]')
          ParentFont = False
        end
        object frxRFactureListemnt_t: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 441.070866140000000000
          Top = 2.000000000000000000
          Width = 90.330708660000000000
          Height = 15.118110240000000000
          DataSet = frxRFactureListe
          DataSetName = 'frxRFactureListe'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.ForeColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."mnt_t"]')
          ParentFont = False
        end
        object frxRFactureListemnt_p: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 533.669291340000000000
          Top = 2.000000000000000000
          Width = 85.795275590000000000
          Height = 15.118110240000000000
          DataSet = frxRFactureListe
          DataSetName = 'frxRFactureListe'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."mnt_p"]')
          ParentFont = False
        end
        object frxRFactureListemnt_r: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 622.488188980000000000
          Top = 2.000000000000000000
          Width = 91.086614170000000000
          Height = 15.118110240000000000
          DataSet = frxRFactureListe
          DataSetName = 'frxRFactureListe'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxRFactureListe."mnt_r"> > 0'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxRFactureListe."mnt_r"]')
          ParentFont = False
        end
      end
    end
  end
  object frxRFactureListe: TfrxDBDataset
    UserName = 'frxRFactureListe'
    CloseDataSource = False
    DataSet = QFactureListe
    BCDToCurrency = False
    Left = 496
    Top = 112
  end
  object QFactureListe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_facturation  where statut='#39'PA'#39)
    SQLConnection = DM.SQLConnection1
    Left = 440
    Top = 176
  end
  object QConsultation: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tb_facturation f, tb_facturation_detail d'
      'where f.num_fact = d.num_fact')
    SQLConnection = DM.SQLConnection1
    Left = 40
    Top = 184
  end
  object frxDBConsultation: TfrxDBDataset
    UserName = 'frxDBConsultation'
    CloseDataSource = False
    DataSet = QConsultation
    BCDToCurrency = False
    Left = 48
    Top = 136
  end
  object Rconsultation: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44648.497365601800000000
    ReportOptions.LastChange = 44648.497365601800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 88
    Datasets = <
      item
        DataSet = frxDBConsultation
        DataSetName = 'frxDBConsultation'
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 302.362400000000000000
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CONSULTATION DE FACTURES')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.236240000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Date : ')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 42.000014650000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Statut :')
          ParentFont = False
        end
        object frxRFactureListedate_fact: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 22.299212598425200000
          Width = 65.763779530000000000
          Height = 18.897650000000000000
          DataField = 'date_fact'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."date_fact"]')
        end
        object frxDBConsultationstatut: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 41.952755905511810000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'statut'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."statut"]')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 122.622140000000000000
          Top = 22.299212598425200000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Facture :')
          ParentFont = False
        end
        object frxRFactureListenum_fact: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 186.944979530000000000
          Top = 22.299212598425200000
          Width = 99.779527560000000000
          Height = 18.897650000000000000
          DataField = 'num_fact'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."num_fact"]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 122.622140000000000000
          Top = 41.952755905511810000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Client :')
          ParentFont = False
        end
        object frxRFactureListecode_clt1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 174.779547090000000000
          Top = 41.952755905511810000
          Width = 70.299205280000000000
          Height = 18.897650000000000000
          DataField = 'code_clt'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."code_clt"]')
        end
        object frxRFactureListenom_clt: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 246.346630000000000000
          Top = 41.952755905511810000
          Width = 192.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nom_clt'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."nom_clt"]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 292.700990000000000000
          Top = 22.299212598425200000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Montant :')
          ParentFont = False
        end
        object frxDBConsultationmnt_t: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 360.732530000000000000
          Top = 22.299212598425200000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."mnt_t"]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 447.661720000000000000
          Top = 22.299212598425200000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pay'#233' :')
          ParentFont = False
        end
        object frxDBConsultationmnt_p: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 493.016080000000000000
          Top = 22.299212600000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."mnt_p"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 576.165740000000000000
          Top = 22.299212598425200000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Reste :')
          ParentFont = False
        end
        object frxDBConsultationmnt_r: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 22.299212600000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."mnt_r"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 136.063080000000000000
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
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 103.436480890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Code art')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 105.641180890000000000
          Width = 368.213586530000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'D'#233'signation :')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 476.059613530000000000
          Width = 59.706856920000000000
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
          Left = 540.043998960000000000
          Width = 78.884044620000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PU')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 622.429312970000000000
          Width = 79.656470810000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PT')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = frxDBConsultation
        DataSetName = 'frxDBConsultation'
        RowCount = 0
        object frxDBConsultationcode_art: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 1.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'code_art'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."code_art"]')
          ParentFont = False
        end
        object frxDBConsultationdesignation_art: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826771650000000000
          Top = 1.133858270000000000
          Width = 368.125984250000000000
          Height = 18.897650000000000000
          DataField = 'designation_art'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBConsultation."designation_art"]')
          ParentFont = False
        end
        object frxDBConsultationqte_art: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 476.220472440000000000
          Top = 1.133858270000000000
          Width = 59.716535430000000000
          Height = 18.897650000000000000
          DataField = 'qte_art'
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBConsultation."qte_art"]')
          ParentFont = False
        end
        object frxDBConsultationPrixU: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.094488190000000000
          Top = 1.133858270000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBConsultation."PrixU"]')
          ParentFont = False
        end
        object frxDBConsultationPrixT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 622.488188980000000000
          Top = 1.133858270000000000
          Width = 79.748031500000000000
          Height = 18.897650000000000000
          DataSet = frxDBConsultation
          DataSetName = 'frxDBConsultation'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBConsultation."PrixT"]')
          ParentFont = False
        end
      end
    end
  end
end
