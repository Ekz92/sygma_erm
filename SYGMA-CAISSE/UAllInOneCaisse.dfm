object frmAllInOneCaisse: TfrmAllInOneCaisse
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Gestion de caisse'
  ClientHeight = 611
  ClientWidth = 1108
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 611
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 513
      Height = 369
      Align = alTop
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 511
        Height = 64
        Align = alTop
        Caption = 'Recherche d'#39'articles'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 31
          Width = 47
          Height = 19
          Caption = 'Code :'
        end
        object Label2: TLabel
          Left = 172
          Top = 31
          Width = 45
          Height = 19
          Caption = 'Nom :'
        end
        object edCode: TEdit
          Left = 61
          Top = 28
          Width = 97
          Height = 27
          ParentColor = True
          TabOrder = 0
        end
        object edNom: TEdit
          Left = 226
          Top = 28
          Width = 282
          Height = 27
          ParentColor = True
          TabOrder = 1
          OnChange = edNomChange
        end
      end
      object st_CsArtListe: TStringGrid
        Left = 1
        Top = 65
        Width = 511
        Height = 304
        Align = alTop
        ColCount = 2
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect]
        ParentColor = True
        ScrollBars = ssVertical
        TabOrder = 1
        StyleElements = [seBorder]
        OnDrawCell = st_CsArtListeDrawCell
        ColWidths = (
          95
          410)
      end
    end
  end
end
