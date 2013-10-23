inherited FRelCaixa: TFRelCaixa
  Caption = 'Relat'#243'rio do caixa'
  ClientHeight = 168
  ClientWidth = 408
  ExplicitWidth = 414
  ExplicitHeight = 196
  PixelsPerInch = 96
  TextHeight = 13
  inherited spbImprimir: TSpeedButton
    Left = 267
    Top = 70
    OnClick = spbImprimirClick
    ExplicitLeft = 267
    ExplicitTop = 70
  end
  inherited gpbData: TGroupBox
    Left = 366
    Top = 29
    Width = 34
    Height = 35
    Visible = False
    ExplicitLeft = 366
    ExplicitTop = 29
    ExplicitWidth = 34
    ExplicitHeight = 35
    inherited lblDataini: TLabel
      Left = 3
      Top = 10
      ExplicitLeft = 3
      ExplicitTop = 10
    end
  end
  object calendario: TMonthCalendar [2]
    Left = 4
    Top = 4
    Width = 225
    Height = 160
    Date = 41517.385833761570000000
    TabOrder = 1
  end
  object RadioGroup: TRadioGroup [3]
    Left = 267
    Top = 4
    Width = 135
    Height = 63
    Caption = 'Tipo de relat'#243'rio'
    ItemIndex = 0
    Items.Strings = (
      'Do Dia'
      'Da Semana')
    TabOrder = 2
  end
  inherited Relatorio: TfrxReport
    ReportOptions.CreateDate = 40943.747284479200000000
    ReportOptions.LastChange = 40943.747284479200000000
    OnGetValue = RelatorioGetValue
    Left = 160
    Top = 104
    Datasets = <
      item
        DataSet = dbDespesas
        DataSetName = 'dbDespesas'
      end
      item
        DataSet = dbEmpresa
        DataSetName = 'dbEmpresa'
      end
      item
        DataSet = dbRelatorio
        DataSetName = 'dbIndividual'
      end
      item
        DataSet = dbRelCaixaTotalDiario
        DataSetName = 'dbRelCaixaTotalDiario'
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
      object Header1: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 45.354330710000000000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lan'#231'amentos Individuais')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 22.677180000000020000
          Width = 76.346456692913400000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo Lei')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 76.047310000000000000
          Top = 22.677180000000020000
          Width = 311.433070866141700000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 385.677165350000000000
          Top = 22.677180000000020000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' do ato')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 453.708661420000000000
          Top = 22.677180000000020000
          Width = 57.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Livro')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 568.606299210000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Selo Inicial')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 644.409448820000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Receitas')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 720.000000000000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FERJ')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 511.157480310000000000
          Top = 22.677180000000020000
          Width = 57.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Folha')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 794.834645670000000000
          Top = 22.677180000000020000
          Width = 105.826774090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Receitas - FERJ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 899.701300000000000000
          Top = 22.677180000000020000
          Width = 72.566929133858300000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 971.716535430000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FERC')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 325.039580000000000000
        Width = 1046.929810000000000000
        DataSet = dbRelatorio
        DataSetName = 'dbIndividual'
        RowCount = 0
        Stretched = True
        object dbIndividualCODLEI: TfrxMemoView
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'CODLEI'
          DataSet = dbRelatorio
          DataSetName = 'dbIndividual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndividual."CODLEI"]')
          ParentFont = False
        end
        object dbIndividualTIPOATO: TfrxMemoView
          Left = 75.590600000000000000
          Width = 311.433070866141700000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TIPOATO'
          DataSet = dbRelatorio
          DataSetName = 'dbIndividual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbIndividual."TIPOATO"]')
          ParentFont = False
        end
        object dbIndividualNUMATO: TfrxMemoView
          Left = 385.677165350000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUMATO'
          DataSet = dbRelatorio
          DataSetName = 'dbIndividual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndividual."NUMATO"]')
          ParentFont = False
        end
        object dbIndividualNUMLIVRO: TfrxMemoView
          Left = 453.708661420000000000
          Width = 57.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUMLIVRO'
          DataSet = dbRelatorio
          DataSetName = 'dbIndividual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndividual."NUMLIVRO"]')
          ParentFont = False
        end
        object dbIndividualNUMFOLHA: TfrxMemoView
          Left = 511.157480310000000000
          Width = 57.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUMFOLHA'
          DataSet = dbRelatorio
          DataSetName = 'dbIndividual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndividual."NUMFOLHA"]')
          ParentFont = False
        end
        object dbIndividualSELO: TfrxMemoView
          Left = 568.606299210000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SELO'
          DataSet = dbRelatorio
          DataSetName = 'dbIndividual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndividual."SELO"]')
          ParentFont = False
        end
        object dbIndividualVLREMOLUMENTOS: TfrxMemoView
          Left = 644.409448820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLREMOLUMENTOS'
          DataSet = dbRelatorio
          DataSetName = 'dbIndividual'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbIndividual."VLREMOLUMENTOS"]')
          ParentFont = False
        end
        object dbIndividualVLRFERJ: TfrxMemoView
          Left = 720.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLRFERJ'
          DataSet = dbRelatorio
          DataSetName = 'dbIndividual'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbIndividual."VLRFERJ"]')
          ParentFont = False
        end
        object dbIndividualRECEITASFERJ: TfrxMemoView
          Left = 794.834645670000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RECEITASFERJ'
          DataSet = dbRelatorio
          DataSetName = 'dbIndividual'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbIndividual."RECEITASFERJ"]')
          ParentFont = False
        end
        object dbIndividualVLRFERC: TfrxMemoView
          Left = 971.716535433071000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLRFERC'
          DataSet = dbRelatorio
          DataSetName = 'dbIndividual'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbIndividual."VLRFERC"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 366.614410000000000000
        Width = 1046.929810000000000000
        object SysMemo7: TfrxSysMemoView
          Left = 442.205010000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo8: TfrxSysMemoView
          Left = 644.409448820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbIndividual."VLREMOLUMENTOS">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo9: TfrxSysMemoView
          Left = 720.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbIndividual."VLRFERJ">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo10: TfrxSysMemoView
          Left = 794.834645670000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbIndividual."RECEITASFERJ">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo11: TfrxSysMemoView
          Left = 971.716535430000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbIndividual."VLRFERC">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo20: TfrxSysMemoView
          Left = 498.897960000000000000
          Width = 144.377952755906000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo22: TfrxSysMemoView
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo25: TfrxSysMemoView
          Left = 901.417322834646000000
          Width = 71.811033390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 854.173780000000000000
        Width = 1046.929810000000000000
        object SysMemo14: TfrxSysMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'Perfil TI - www.perfilti.com')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 757.748300000000000000
          Top = 3.779527560000020000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'Data: [Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 995.181510000000000000
          Top = 3.779530000000022000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object SysMemo15: TfrxSysMemoView
          Width = 1046.929810000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 878.031850000000000000
          Top = 3.779527560000020000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hora: [Time]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 45.354330710000000000
        ParentFont = False
        Top = 411.968770000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lan'#231'amentos Totais')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 22.677180000000020000
          Width = 76.346456692913400000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo Lei')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 76.047310000000000000
          Top = 22.677180000000020000
          Width = 418.015865200000900000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 493.606299210000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Selo Inicial')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 568.818897637795000000
          Top = 22.677180000000020000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Selo Final')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 644.409448820000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Receitas')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 720.000000000000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FERJ')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 794.834645670000000000
          Top = 22.677180000000020000
          Width = 105.826774090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Receitas - FERJ')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 899.701300000000000000
          Top = 22.677180000000020000
          Width = 72.566929133858300000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 971.716535430000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FERC')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897637800000000000
        Top = 480.000310000000000000
        Width = 1046.929810000000000000
        DataSet = dbRelCaixaTotalDiario
        DataSetName = 'dbRelCaixaTotalDiario'
        RowCount = 0
        Stretched = True
        object Memo27: TfrxMemoView
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'CODLEI'
          DataSet = dbRelCaixaTotalDiario
          DataSetName = 'dbRelCaixaTotalDiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbRelCaixaTotalDiario."CODLEI"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 75.590600000000000000
          Width = 418.015865200000900000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TIPOATO'
          DataSet = dbRelCaixaTotalDiario
          DataSetName = 'dbRelCaixaTotalDiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbRelCaixaTotalDiario."TIPOATO"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 493.606299210000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SELOINI'
          DataSet = dbRelCaixaTotalDiario
          DataSetName = 'dbRelCaixaTotalDiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbRelCaixaTotalDiario."SELOINI"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 644.409448820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'EMOLUNIDADE'
          DataSet = dbRelCaixaTotalDiario
          DataSetName = 'dbRelCaixaTotalDiario'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelCaixaTotalDiario."EMOLUNIDADE"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 720.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLRFERJ'
          DataSet = dbRelCaixaTotalDiario
          DataSetName = 'dbRelCaixaTotalDiario'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelCaixaTotalDiario."VLRFERJ"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 794.834645670000000000
          Width = 105.826774090000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RECEITASFERJ'
          DataSet = dbRelCaixaTotalDiario
          DataSetName = 'dbRelCaixaTotalDiario'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelCaixaTotalDiario."RECEITASFERJ"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 971.716535430000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLRFERC'
          DataSet = dbRelCaixaTotalDiario
          DataSetName = 'dbRelCaixaTotalDiario'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbRelCaixaTotalDiario."VLRFERC"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 568.818897637795000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SELOFIM'
          DataSet = dbRelCaixaTotalDiario
          DataSetName = 'dbRelCaixaTotalDiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbRelCaixaTotalDiario."SELOFIM"]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        Height = 22.677180000000000000
        Top = 521.575140000000100000
        Width = 1046.929810000000000000
        object SysMemo12: TfrxSysMemoView
          Left = 442.205010000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo16: TfrxSysMemoView
          Left = 644.409448820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelCaixaTotalDiario."EMOLUNIDADE">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo17: TfrxSysMemoView
          Left = 720.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelCaixaTotalDiario."VLRFERJ">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo18: TfrxSysMemoView
          Left = 794.834645670000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelCaixaTotalDiario."RECEITASFERJ">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo19: TfrxSysMemoView
          Left = 971.716535430000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbRelCaixaTotalDiario."VLRFERC">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo21: TfrxSysMemoView
          Left = 498.897960000000000000
          Width = 144.377952760000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo23: TfrxSysMemoView
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo24: TfrxSysMemoView
          Left = 901.417322834646000000
          Width = 71.811033390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header3: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 45.354330710000000000
        ParentFont = False
        Top = 566.929499999999900000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Memo30: TfrxMemoView
          Left = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Top = 22.677180000000020000
          Width = 76.346456690000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 76.047310000000000000
          Top = 22.677180000000020000
          Width = 418.015865200000900000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 493.606299210000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 568.818897640000100000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 644.409448820000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 720.000000000000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 794.834645670000000000
          Top = 22.677180000000020000
          Width = 105.826774090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 899.527559055118000000
          Top = 22.677180000000020000
          Width = 72.566929133858300000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 971.716535430000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897637800000000000
        Top = 634.961040000000000000
        Width = 1046.929810000000000000
        DataSet = dbDespesas
        DataSetName = 'dbDespesas'
        RowCount = 0
        Stretched = True
        object Memo48: TfrxMemoView
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = dbDespesas
          DataSetName = 'dbDespesas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbDespesas."CODIGO"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 75.590600000000000000
          Width = 418.015865200000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = dbDespesas
          DataSetName = 'dbDespesas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbDespesas."SUBGRUPODESPSA"] - [(<dbDespesas."DESCRICAO">)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 869.291319060000000000
          Width = 102.803169130000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VALOR'
          DataSet = dbDespesas
          DataSetName = 'dbDespesas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDespesas."VALOR"]')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        Height = 22.677180000000000000
        Top = 676.535870000000000000
        Width = 1046.929810000000000000
        object SysMemo26: TfrxSysMemoView
          Left = 442.205010000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo27: TfrxSysMemoView
          Left = 644.409448820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo28: TfrxSysMemoView
          Left = 720.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo29: TfrxSysMemoView
          Left = 794.834645670000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo30: TfrxSysMemoView
          Left = 971.716535430000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo31: TfrxSysMemoView
          Left = 498.897960000000000000
          Width = 144.377952760000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo32: TfrxSysMemoView
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo33: TfrxSysMemoView
          Left = 867.401574803149600000
          Width = 105.826771653543300000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbDespesas."VALOR">)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 71.811070000000000000
        Top = 759.685530000000000000
        Width = 1046.929810000000000000
        object SysMemo34: TfrxSysMemoView
          Left = 644.409304800000000000
          Top = 7.559055120000040000
          Width = 351.496221650000100000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'APURA'#199#195'O [DATA]')
          ParentFont = False
        end
        object SysMemo35: TfrxSysMemoView
          Left = 644.409448818897700000
          Top = 26.456710000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'RECEITAS - FERJ')
          ParentFont = False
        end
        object SysMemo36: TfrxSysMemoView
          Left = 761.574803150000000000
          Top = 26.456710000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESPESAS')
          ParentFont = False
        end
        object SysMemo37: TfrxSysMemoView
          Left = 878.740157480000000000
          Top = 26.456710000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'RESULTADO')
          ParentFont = False
        end
        object SysMemo38: TfrxSysMemoView
          Left = 644.409448820000000000
          Top = 45.354360000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TRECEITAS]')
          ParentFont = False
        end
        object SysMemo39: TfrxSysMemoView
          Left = 761.464984330000000000
          Top = 45.354360000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TDESPESAS]')
          ParentFont = False
        end
        object SysMemo40: TfrxSysMemoView
          Left = 878.630338660000000000
          Top = 45.354360000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TTOTAL]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 178.771653540000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Picture1: TfrxPictureView
          Left = 6.559060000000000000
          Top = 3.787569999999999000
          Width = 95.495980000000000000
          Height = 85.157390000000000000
          ShowHint = False
          Center = True
          Picture.Data = {
            0A544A504547496D616765AA2E0000FFD8FFE000104A46494600010100000100
            010000FFDB0084000906061311111514121416141516191C1718181818191716
            18171A1F161518181D1C171B271F1C1923191718202F20232929382C2C171F31
            35302A36262B2D2901090A0A0E0C0E1A0F0F1A2A241E25292A2F34302C2A2F2D
            2A2A2C2C2C292F2F2C2A2C2C352C342C2C2C2C2C2C30292A362D352D2C2F2C2C
            2C2F2C2D302C2C2D2FFFC000110800E100E003012200021101031101FFC4001C
            0001000203010101000000000000000000000506030407020108FFC4004C1000
            020102040205050B090801040300000102110003041221310541061322516132
            427181910714235254729293A1B1D21733536282A2B3C1D11516344373B2C2D3
            63E1E2F0F124A3C3FFC4001B0100020203010000000000000000000000000501
            0403060702FFC400381100010204020706040602030000000000010002030411
            211231051341516171F0228191A1B1D11432C1E11523525362F13342243443FF
            DA000C03010002110311003F00EE34A528425294A1094A528425294A1094A528
            42551BA77D3FF7A93630F1D76999CC116E750003A1720830741226662B5F8DFB
            A8A8B5792D02988171AD24F68650597AE062361E49D9986E35AE63C40DF245EB
            F6EE06BB2EA5D4A2B16D4B02D008D748E5E9AC4F7DAC96CDCD10C22167BF767E
            CBA27B9AF14407117F15884CEE5501BB75431CB998C663B76C0D34D0D749B574
            300CA4303A820C823C08AE15D0CE88DDC6DC1BAD907E12E0F690A762E7B8793B
            9E40F72C2E152D22DBB6A151005551B003402A6193459249EF743ED0EFAE7C53
            11894B6A59D95146E588503D674AE5DD3EE3193196B1184C42CB5BC84DAB8ADA
            A3130C0120822E0D181F24D74AE2FC2ADE26CBD9BA255C47883B861DCC0C107B
            C5709E93F472FE0AEE4B80113D87D95C77827498DD771E3A131109A2F33EF7B5
            9468EFAE45756E8374DC6394A5C016F28931E4BAED9D7BA09123948EFAB657E7
            5E177F1364FBE70E9714298370266442DD8696829B373E71DF5D5B827BA4DBBE
            D86B597E16ECADD8D16DB00D113E5662A081C830933A1963EA2EA6566B134089
            677AABA5294AC8AFA5294A1094A528425294A1094A528425294A1094A5284252
            94A1094A528425295E55C1D419F47B2842FCEBC7ED14BF794E856E5D13DCCACD
            F789AE8381F748B4985BBD65B0F91B258B3A49B6A8905C99035DCC6E600315A1
            EE91C0ECBA1E2187B88F6F381742EA338EC86046C672820F3D7999ABF443841C
            5E252D812A5835C3B76160BCF708841E2C2ABDDA681221AD978A58C1F31F536F
            0BAEFB86F21740BA0D06C34DAB2D6BE1F885B77B96D1C17B44075E6A5806123B
            883BFA7B8D6C5584F52A3FA418BEAB0D7AE14173AB467C8DB36519A363DDDC6A
            42B471B7ECDC63867619EE5B6253CE36F4463E03B51AEFAF71A1415CEFA59D3E
            B7770EB6ED01D5DCB5756E247C25AB8B90DA300C650DDDE50263511558E81592
            D8FC381CAE4FD156763EB20D44F19C1BE1AF35BB821ED92B3DF107E8B290C0F8
            8AE8FEE6FC06CE16DDAC4DEB8A1EFF0066C29D3B2C6444EACCC32EDB0F49AAE2
            AE75D2366B666334BC5309F4FB8F32BA452BE170224C4E83C4EFFCABED584F52
            94A5084A529421294A5084A529421294A5084A529421294A5084A52942169F12
            E31670E14DFBA96831852C6013BC49F0AE31C238AB35DBB83EB3E071170ACAB6
            60B74DC84BAB076CF973007B4AC7981563F746E95E637709730F190864B9D6C4
            18957CBD5F92412A44ED984CD73AB3886575B8BA3210C088CCA4195607661227
            D5CF6AC0F75D279B9A022003219FD4516EE256F610DEC3368581B5717CA478D5
            77E710CADB8F5906C9D09BEFEF0E22D6652E2AA5C0EBA3C29725646BE4DB3A7E
            B1EFADAE21C15F8BE157196003885F83BC820076482B71274CD94A98276204F6
            75B27B9670A16F057338EDBDDB82EA11AA15253AB23D12DFB7435A6BC1102038
            45B1386868781EBC9739C0F4B2FD9C67BE9DB3B123AC3006750150AB01A6A144
            1F8C01F4F7AB57032861A82011E83A8AE01D29E04D83C43DA69283559D9AD1F2
            5BD20687C55BC2BB2741F1C6F602C31DC2E43E26D936E7D7967D7530C9A9057B
            D1EF7873E1C4CC747E8A4B8B711187B172F30916D0BC77C098F59D3D75C217A4
            B89EBEE6216E15B970302C06A41CA6167C9501401CE3BB7AEA5EEA98EEAF00CB
            CAEBADB3F375B8DED16C8F5D73FE80747DB178A52C3E0ED9172E7708D513D248
            D7C03785112A480144EB9EF8AC84C37EBD05566F74F0CB770C9704B8C322331F
            29D8F580C9E7DA4E7B49A8BC0E1EFF0011C4220619B419B64B76ADC4E551B22C
            00146E4EA7526AF3EEB3C11AF1C29B20B5E2CD6C208CCCB9598B6A76483AFEBD
            455EC23705C2669031788EC023B42CDA582C0690CE4951DD2577CBAC3876B82F
            31A0BB5C5CEAE0B13DD90E7D6E51BC33A49D6F10C2E7B9D5D8B040B7D638016D
            AA36AC4E85D940CCDCCB40D22BB170EE276B1099ECBADC59233299123715F9C0
            1CBB0034DBBB902CDFCABADFB9E74ABAD2984B587C96EDA162FD6663BEEC3AB0
            3333313BF7F754C375E854C8CD62716BB69EB901457EA529599374A529421294
            A5084A529421294A5084A529421294A5084A529421733F760C428EA945963739
            5E860A0127E0E468C4E524827B2351BD72D71BF7FAC0131A003BCF7CCF75777E
            9FE030ED8637B101985904A287640CED0AA0E5EF30279026B865D58D06BFD4EE
            4F89D7D026ABC4CD219F6E18A0EF1D5559B82F18C5D9E1EAB874BB6EDB3DC6B9
            794162EF98AC0600F56022A8D60933040DE270BD22C4E1EE1B96AF30B84E66ED
            33673A0EDE6621B603B43969B5756E88DFB7C3B84DBB989390769F5D18E76664
            503E3B2C69E3E15CAF88E2AEE3B14CC016B975E028D609EC8404EF0BD91DDA93
            43AD45EE6439981C1C6A696DDD78ABC5FE15C478C616D5D738445619D2038B8B
            3A11255F431A8920C0EE11F2DF48B17C1C5AC2DCB762F2C7656D339B9A9264E8
            4CB313E66A6636D3A1F03E1DEF7C359B3A1EAD15091B120004FACC9AA5624D8E
            1F7182B9BF8CBA65EF341B88AC6D8845CA41608E0E51C86BA055A98AF6C26E37
            1A26625DCE702CF98E6546DDC66338EDA6B6AB86B488C1A19DBAD56130640323
            CA125403A8F47BC5FF0069706C192BEF564CC17B21CDC2EFD9CE490A09DB7EE0
            2234A91E062CE2F136EE86387C5DB20BE481D7AEA195D6005739092BB811BC0C
            B65E9AF056C5E0AEDA512E40651B4B210E0781311EBA21B8446E369AA8740736
            A5DF36FDEB880E3788B9745D37DCDC1B36770E036E010DA031B01063C2A43A59
            C57157B0D87F7D5BB92B708B77997ABCCACA7329040CC65548603699D609C5D1
            3E3CD81C52DC33964ADC5DB329F2E3C4119B29D8A91CEAFDEEA36971780B57EC
            1172DAB86CCA646560527D19B283DD27BAA1B91354B2002E86F797139D42E496
            E674DF713241F1D4E863633E1A5763F726BE870CC16CB5B60416B84345EDC020
            91BA904151207ACD723C291981619A0862B25736BAEA0C8CDA831B19F5F7FE8A
            F0FB1670C9EF62C6D5CF855CCC588CE01E7B7A3BC9A9859A9D1CDABCBB778FF4
            A5E94A5674ED294A5084A529421294A5084A5294212AB98FE9503D9C3EA79DC2
            3E0C0D755D41727911A6E64EC647A493EF5BD1F14CFCDF3FF766AAD935F1DAB5
            FD35A4A24A06B218BB81BEEE4AECAC06C4A976C52183E915DB6C3AD60F6C9009
            80AC9240CD2342A39881A49931077ED74BEC93DA0C8A7C976032BF300004B491
            A804027D3A5540DF736FAC6CAC844B265D7AB3BEB3A9CBB88D751A6F586CE19F
            20F840DD4B1CA0889CB2A333099F833A1006A4133149E5F4DCC43651E43A876E
            7CADC76AB2F95638DACBA4607885BBCB9ADB48060E85483BC10C0106083A8E62
            B66B97DBE225335CB8ED64B2A940AEC0441222203BE666041074CA220EB75E05
            D206BC45BBB6F25C299B46CC0919430D84105869AFA74AD86474A4398A31DD97
            79134BD392A5165CB2E2E3ACD67E90747EDE36DADBBACE10387214819A030CA4
            9074D67483A0D6A9D81F7370D8FBAEF6C5BC2A32E441FE6C2A6FCF2C8ED13AB1
            91DF5D1694D4B41545F058F20B865F45A78DE2966D102E5C55275009D63BE378
            F1A81E89745ECDB7B989EB171176E3B90E35540CC58A8D7CAD75275E5A0DE31E
            F6B75DCC3677CE4F9B949104F20AA001E0279D6CF04C5E5BF6DD4F66EF65B902
            32B3A31F1046E760C6B5F87A683E6F5059418B083C79714C1F24300895A91753
            7C77A46B870542B3DC8072856200263331553034631A9394E95CEECDE6005C72
            5AE5E5CC49767105154C668825951B41A08036AB3F49B8CE17AC5B89794B28F8
            521A505B01CA1276CD9CC2C6A65B78D2B181C2B3286169B50C7E108B40178D84
            16D1401AAEFAD51D3130F74430DC46114A50EF1B78FD39956259803710CD7DC4
            625D585C4255EDA869CECA216DA4B1CB3306FCC11A8041AE89C13A4898885219
            2E104E5656008060952CA246A0F2304695CEF89609CAC9B24C007E0DFAC2C54D
            96121954EA2C810A0EF565E8D718C2F586E3DE50CC22D16309D590A5E27CFCE0
            869D5405DA4CCE87997B5ED8608C26B5A9CA9BA9B4FA044CB0105C735B9C5FA3
            162DE2ED6345C5B055E6E03A2DC9565D35D1C83E33DD3AD4ED9C658C4AB22B25
            C520874D3C93A195DE0D55B8C63435EBB71CF66DCAAF72A28058FAD8124F3017
            B8578B1708B96594F6B3A052398620381DE0A663EA9E5575DA68366F50196C58
            6BC72C957649010CBC1A1375A581F73416F1ACB713ADC2BDB7CAC4C32366B655
            641CC1C41861B899E62AF3C1384AE16C259466654982D05A092D1A003498DB61
            5BD4AD84340C92F870590FE509583198E4B4B9AE305131AF33DC06E4F80EEA8A
            E3BD23EA73A5B46B970213A440241CA35224E930397A44D3B13C519995D2E9C4
            05577605C1D085398690AC6202E8082DB452A9DD290A5FB0DED3AF6D80F13B2B
            B15E852EE7DCD87592BADCE95D80C0025974975128B3AEA67B8826018E715A18
            CE92DD6722CE454048CCC0B9620C12006002C831BCEFA55571187B81186755EB
            9A08024AE7856CAD23CC05A48DE4FA332E2196D870156D80084839BABE466601
            CBAE583DD3CEB5F98D3931119487469AECF4BF1DAAE325180F6AEAD9C3FA52BE
            462211B93007AB6074064CE433A431EED4CD4FD50CDB04EA27978473156BE8EB
            1385B44EBD8104EE57653F4629BE86D26F9C059105DA05F7AAD350042A16ED52
            34A529FAA694A52842F2E808208907420EA08EEAAE5EE8A3A9F82B8B93907525
            9477660DDA03C44F793565A556989583320362B6B4591911D0CD5A573A6E1C6C
            B5F52C5882440909E487ECA498273C9D4C9F656AA92B6AF4EE101F5F54A3EF5A
            9CE27FE26FFCF5FE1DAA86C46BD68F8CF6D3DBD583F63573D9B6864CC460C83B
            CAA13A866B0DA782CD8CB208B76CEA0B411DE0239FE42B592F325C787BCD7534
            42BE682AAC2621092C350DB80348DF6DCCDD1CF2A13EB6200FB15AB0E1F14B6E
            D5B2D3DB00930482CC33124ECB249D491DD55E0B9ED20B2B8B6533AD7DBC57B7
            0073C9741E1D8D5BD6D5D4CC8D7710C34610750419106B66AB7C071F6AC5A637
            6F5A5676CF945C4620654403B24C9392749DF9EF5E3887495DFB360145FD230E
            D7ECA36DE971FB277AE88F9E8706088930434902DB6BB80490412E716B2E9D29
            3649C82DA35E60333E552D6D3BE624311A2F76FCAAA7C6AE962B6D0E5CB0CE72
            3B8020809D9523552641E51BCD6B7487A536F080A243DF3272924C13E7DC3BF7
            69B9F01A88FE86F4A6C31BA31F8A162329B710B989CFD6132AC58E89B9E7B46C
            90CACE6933F16D6E160F96B6EFC8D7C29C6CAC6BE0CB9D493571CE8B2E37196A
            DBD9B9732BA8B9DABAB71AE05215CAABAB12CA73C1113E49DB9C5F483A5CD71D
            C58BE16DA88528C01639412736FB98811B73ABAF0DE91708B5719DF1B87BD243
            217419D1A0A31CC04195CA3403C9E75238FF00740E12D6AE0189C3C946034E64
            18F36AD4BE866B70BE29A90294CC75F4D8167873CD86EF92A39FD973BE07D25B
            96DD3ADBACD6DB46CF2D9641860756DE34DB5A93C2626DBBDDBA996D837084B8
            EED6CB4AA66088B0C65B31D7E36C758A95AF247A07DD59F05896B2F9EDE50D04
            662A1984C4913A0312350773DF58E6746B1E4BE1D9C45370F2F5BDB62D4E434D
            3A17E5C7351537CCF2EBC40579E0AE466B570E69965251D0153A158651AAE9B7
            2236D85BFA2CD67C936EDADF51E50550D713E3C81A9DB30EFD76227919E90E27
            9DDCD0646654D08D88CA01FB76241D09AB6705E3E989001EC5E5D60120C8F3AD
            9DFBF4DC490646A68C3F88D1D14C778C4D3F353D721EC9F419E969E1AB61A386
            55B7BAEA95A7C5B880B1699CEE07646BDA7F35401A99350D80E9332766F82C3F
            48824FED22EBEB59F42D7CE9063AD5E446B576D31B6D98AF5880905590F94443
            0CDCE349AD8C4F323417449721C6996DAEE2146A8B5E1AFB2ABDDBEEF744BDC0
            F7273E7512428F297CD520C0859D0EDA4D66C258012E5B020066503C18061F63
            D79C4E296E5A7659EC6A090476D7510488613A4891A91DF59EDE975C77856FF7
            21FB157DB5CEE33DEEA97D6BB6B9D41DBE29DB401964B4F12C5ED5A8DCA337AF
            AA703ED6ADA6C01BAF642344903299C8742E09008D46491DDDC7960C369D48F8
            A6E27D1CEBFF000A99E19FE26C7CF6FE1DDAB12AC0F99870CE44F954AF110D18
            E70DCB6ACF45EEB18BAC88BCF2166623B812AB97D3AF841D459ED5B0A02A8000
            0000360068057AA57419693832A0B60B695EB6A4B122BA21AB8A5294AB4B1A52
            94A1094A52842A6714FF00137FE7AFF0ED5430D587EB5E27D48857FDC82A5F1C
            671178F7DC8F62DB5FE5511836936C9DB2DCB87F6D948FB19AB9ACF1ACD463FC
            88F5F64F60FF008DBC96CE1B57B8DE2147A140FF00933D6BE13AC0B993294625
            95492A554991060E8476A08D336F1A0F8B26CA2EC6EEA7C03CDCB9F6123D2456
            B71BE309686A24298541A75970410BE089A127BC81B883598C73DD81A2B5FA5B
            AF6598024803AAACDC478D8C3217B89906C3B4B2C7B8004927D554BE2DD3DBF7
            465B40595F0399E3E76C3D43D7513C4EF5FC45C372E95276024E551F15465D07
            DFCE6B57DE4FFABED3F86B7DD13A2B46C0688934439FBA8708F7E6954E40D2B1
            0E1830C86F3153E76575C274430CFC2EE624E21E338B849B13700B79EDBA05EB
            61A5EE825F34682635AA660BA198AE20CFEF4B7D60B719A591080C5B2CE66D4F
            64ED5954DF11DBF250DB1DA3A5B690C9196329CCD239924993AD58FA09D2A6E1
            A6F13696EF5A107E70A464CFFF008CCCE7FB29EBE6E0EADCDC75AD37FB2AACD1
            139AC69D5114AEEF7507F91BE2BF275FAEB5F8EBCDDF71FE28AA58D8580093F0
            B6B61A9F3EBA57E591BE483EBCFF00D358B19EEBECD6DD7DE804A91F9F3CC11F
            A1AA3AF87BD5DFC366FF0041F25CFED9D07A057AAF3687647A057AAAEB9A1CD2
            9FFDFA0F7F81A52840245C29CC074C2F5B10E3AE5F1395FE96CDEB1EBAB460F8
            AF5EA1D2DE71F3D743DC41820F8115CEEB6301C41EC3E7B660F307C961DCC3BB
            C771CA924E68985141742003BC8FB2D9347E9D8908864C1AB77ED1EFEAAFD89C
            FD967CA115816504B69B062C40D15A1A23CDDCD67BFA5CB67BF321F58CE3F87F
            6D47707E276EF2C0F21A4653BA3412D68F8112CA79891A4015B2EE7AA33AB5A6
            12799C8434FED5BD7F6AB557C3731D81C2845BC56ECC7B5EDC4D3506E9B37CDB
            FF00C44FC572A6385FF89B1F39BF8776A1B17D9377C3AAB9F458CFD96C54BE00
            C622C1FF00C91ED4B8BFCEAD489FF9508FF21F4F75E237F8DDC95D694A574A48
            9294A5084A529421294A508541C5DE8379FB9EE9FA2CFF00C96A34DB8475E612
            DD91E9223FFEA3D959F10D9AC13FA41FC53FFBEB1BDC13276379D8FCDB4AC3EF
            B6B5CC62BB1457BF7B8FAD7DD3F68A340E0B38B833BBF2401140124930CC00E6
            4928A077AC57DBDEE54D788B973105188F2020654E654317ED6A492DCC926A8F
            D37E96DEC21B16EC364BA3E1AE185686692043823CA2C76D214D417E5778B7CA
            CFD558FF00AEB68D0920D6C3D73C549CB90DBDF9AA71A69EC7FE59A10BA8FE46
            C7CA8FD50FC74FC8D8F951FAA1F8EB977E5778B7CACFD559FF00AE9F95DE2DF2
            B3F5567FEBAD83530F72F1F88CD7EE15D47F2363E547EA87E3A7E46C7CA8FD50
            FC75CBBF2BBC5BE567EAACFF00D74FCAEF16F959FAAB3FF5D1A987B91F88CD7E
            E15D47F2363E547EA87E3AC58CF7200B6DDBDF44C2B1FCD0E409F8F5CCFF002B
            BC5BE567EAACFF00D75E2EFBAC715652A714482083F076763A1FF2E8D4C3DC8F
            C466BF70ADBB47B23D02BD579B6341E815EAAB2E6A734A5294284A5294216CF0
            FC71B370381224665DB300737D207507BFC099BF2BABB2B2994BE913C8E8594F
            AD0BFD115CE2AC7D19E207AB7B4774F86B7FB2433AFF00F3E3B521D2F298DBAE
            6E62C796FEE34EEE4B6AD013C5AEF867E46E39ED1DFD66A75816449DDED3DB3F
            3801FCD5EA4F097A5ACBF7BDA3F49907DCD5A0A608EE5BFF0065C048FE2D64C3
            3E5B0A7F4607FF00A8FF00ECAD7A0BB0C686EDCE1EB5F4A2DC1C2AD2382E914A
            52BA724094A528425294A1095ADC4AFE4B371FE2A337B013FCAB66B43A41FE16
            FF00FA4FFED350E3404A90A917ADC25B5EE6B63E8907FE35A0FDA551C983CFA2
            EDD504FD1CD5278CDEDFFA8BFF0021FCEA071D74AD99133D4A446A7314C4B002
            399603ECAE5F0017529BFDC27EE56BE1DD12E1D7ED2DEC4D9B172EDC19D99E0B
            76B555DFCD5217F66B63FB87C23E4D85FDDFEB5C707086F93BFD43FE0A7F64B7
            C9DFEA1FF05742646C0D0D6B0D00A293A2184D4C76F5DEBB1FF70F847C9B0BFB
            BFD69FDC3E11F26C2FEEFF005AE39FD92DF277FA87FC14FEC96F93BFD43FE0AF
            7F127F4151F83C3FDF6F5DEBB1FF0070F847C9B0BFBBFD69FDC3E11F26C2FEEF
            F5AE39FD92DF277FA87FC14FEC96F93BFD43FE0A3E24FE828FC1E1FEFB7AEF5D
            8FFB87C23E4D85FDDFEB5831FD06E122D5C2B86C34846236DE0C73AE47FD92DF
            277FA87FC15E6EF0A6CA7E01F63FE4BF77CCA3E24FE8283A1E18FF00DDBD77AF
            96BC91E81F757BAF76F0CF03E0EE6C3CC7FE95F7DEAFFA3B9F41FF000D61D633
            785CACC08B5F94F8158E9593DEAFFA3B9F41FF000D3DEAFF00A3B9F41FF0D1AC
            66F0A35117F49F02B1D2B27BD5FF004773E83FE1A7BD5FF4773E83FE1A358CDE
            11A88BFA4F8158EB6387E2FAABA97392B027E69D1C7D12D58FDEAFFA3B9F41FF
            000D1B06E44757735D3C87FE95E1E61BDA5A48A1B2CB0591A1446BC34D410723
            B15E2CE8A47C5EA7DA970DA27D96C56ED9B79ADDC5FD6B8BF48B1FF954460AF1
            6B398EE6D16F5836EE7DF70D4E60F77FF51BFE23F956851816D79FA502EA0C35
            57AE1F7FACB56DFE322B7B403FCEB62B43807F85B1FE95BFF6AD6FD75106A2AB
            5F294A52A5094A52842569F19B65B0F7946E6DB8F6A915B95F089A0DD0B9E631
            A503720D6DBD59D49FB26A370E87E08FC438727D0AD754FDB52470A4DA6B4770
            1AD7AD66DCFB44D46E1AE165B91BB5B62078C9BA07ABAF51EAAE6503F25F439B
            5D7EE3F64F9FDB1CC2EAD5E43898E758ADDECE8AE904300C27982011AF2AFA58
            36865586A3BC788E46BA4B9F434E8F248C05933098E7BD7C479241DC7DDC8FFF
            003B8D633DAD0E8C3507F98F0EF1E3519D22C7B5A16F29CA58919A013A0CD946
            60778276F34D618B1F54C315D90EBC57A6B3110D199530E0F2F6F87F5AF19F52
            66157ED3CFD9FD7BAB4F81F1517ED06912378D8C80430F02083ED1CAB19E221E
            170EA6F479D396D4F8DC8398CCE881B5DE2BD076B1A1EC3506FEDF7DBB145309
            A15256D89D4E9DC39C78F8D6B63AE66B57236C8DAF7E876F0F1AD7176E8B8897
            59195C31EC2B290572983998E6583BE9B0D35AD9C75C06CDC8F88DCBC0D6415C
            4013EE7EDD738E2A17047E0D3E62FDC2B34D60C17E693E62FDC2B3D71677CC53
            309349A52A14A4D2694A10935F41AF95AF8FBFD5DAB8FF001519BD809FE55205
            4D02152EC5B22D09F3EDBC7A18D851F7D4BE0DFB05B91676F567623EC8AD0C59
            EAF28FD1A20FA24DC3ED1623D75BEB8622D2DBE642DBFDA68B73ED334F5E0C4C
            2D1993EAAC8ECD4EE0AEFC16D95C3D907716D07B140ADDAF8A2057DAEA005120
            4A529421294AF84C5085F6A3B8BF18161440CEEC6156636D49275851A6B0771A
            19A87E33D2B56B4C2D75803151D68002E52CA1981CD980CA4C3478CF3AAF63B0
            EB6D73A200EA465CA0066248EC729CDB6BE9E52104FE98640221C1A39C76D6C0
            F15720CA97DDD60B6CE28BDEB999426687003161A80ADA955F3964E9E7D4529E
            AB103B8B7D8F247B5C81E8B559DEFB3E5BC06554931A1765301E636802626495
            0348D7CF1BC3E640EBCB491DC7C923D7A4F20EC6B4F2F31229744CDD5AF3EBD5
            330006D06C576E8C627FFC645D49B64DA3024C21217DA994FAEA4DEEA1D1A3D7
            A7DF553E86F1619883B5E1987FAA821C7AD0291E16CD5AB138C16EDBDC6042A2
            963B490012635F0E75BF49C631E030D6F4A1B56E2C5278ADC0F2BEF553CE4723
            E703E079FAFEDA82E926256EDB8B60DD6B4C1CB2E8885655B33ED2158F6449EF
            1151984E3E6FDFB698852B66F122D05052DB30E4CDBDD0623CD074050EE2DD88
            36ADDA21F225B8CBAC2A80748EE1DD1565F01AF86E61DA28B187904154BE8BE0
            D5B10F6AE76ADA8205BD721D45D5CC261805B8CA01D0643EABA62F1B6ECA82C6
            06CA002598FC555512C7C0035CF782A5C38EB796E00E6D0233298FF38312B981
            24031CB53AED57206DD972143623104413A1700EA331D12D27381131A026A8E8
            827E1834EC247D7D4ACD3206B2A164E1970DE3EF86202952B6D641CA8482C588
            D3392AB23CDCB1A99ADAC6DD06D5C898C8DAC69B1F6FAAB0F0FC0BA1B8EC566E
            107AB4FCDA913264EA5CC89681394764192736398F557244761B9CF234CC9388
            0FA7D557D8A1305F9AB7F317EE159EB060BF349F317EE159EB8B3BE629A84A52
            95E5094A52842546F1D7F8309FA4755F503D637EE230F5D4955738EE3E1D986D
            654A8EE375F293F4542CFCE6EEAB12CC2E8829D6EF352054A8C9EB2F9EECD1EA
            489FB523D17EA58628A5EB5099F292E44E51A0859307CE60469E6D68705C3655
            2C7E689F0F28FB4059E62D035F53125735E6525180222332AACE5D18890D39B4
            D65A229BB6218714399FEB4A73EBD15822ADA1DAAFFC2B8AADF52402ACA6194C
            483B8DB4208D8FDC41037AB9B606CABAF58C0E76999D1920901041EC95D469CE
            4F3AB2705E955BEAD56EB3482CA6E1539085665525A236025B699D6B73D1FA5D
            93075713B2E1E04F0F64AE34B165DB70ACB4A529E2A89553E37C6AE5DEB6D5AC
            8A90F6B3306624EA8C4430CA0191CE626AC3C57880B168BC663A055989662140
            9E424EA75813BD5071B7EF216702DB67798964085CEBAF6F30CC6796E7968116
            999D7C06361C2700F27CBBED9AB92B083C92E165E2FF00165CA41521BC92194E
            40C47378C9975DE750769D2B3E0F87A205CA24850019274889124813E158F0F7
            59076D1E49259800C093DC10960220011B01BD7CB6B6D8FC13E47E6ABA4FA6DB
            7DF00F8D68E45010DA81E23FA4DB9AC9747544B8F20EAE3B8FE907FC87AF7067
            E5840335A3AA912BDC6D9D0AFEC931E865AF5EFA64FCE0D3E3AC95F58DD7ED1E
            35AD88B79006423203990CF6509E523FC960489F366768CB001363D7DFE9C505
            6AE119ACDD36CB412C191BB9C1EC3F8C910473F27606BA2E0316B8BB07328865
            36EE24C90D10EBE88320F30C0F3AA2E3F0A3116C32E8E2627420ECC8DDC6447A
            4774CFBE8EF1D656260961D9BC9B33AAF9C3FF0022CEDCC3479CB1B068A9FD4B
            A8FC8E7C0EC3C8E47B9529883885B3FA290E1BD13BDD6AA35E03DEAD28086725
            581C8EA090AA4C1EFED23083126CB730F62C10F758BDC3A2B3F6EE13DD6D40D0
            F85B51E8A5E1D6F577B0F71466057365CD28D074123B4ACBA4ED2D23956CE138
            7A5B69D5AE30D5DBB4E469A4F2593E4880390ADD3104AD52385705BB738B5D2C
            2E59B76ED6751994395BECFD994260664BBAEE34822AF986C3A5A0110051BC0E
            7DE7C4CEE6A3B05699B158A7D440B569748F215AEFAC4DF8F6D48DC705412343
            CF9A9FE5DD58A8D840868A6DF1375EAEECD7D73261811DC4131ED1B7AEB438E6
            3EDD8B2F9EE0964608A59733188CAA0C1624903D62B631DC445842D724890065
            8962480044813AEFB6E74AE74F72F62D8B33B29650AD9D0765D2E310B6C02040
            60649CC0C2EA4CD509C9E64A3711F9BC3C6998DD6BF9ACD0A11886832561E0FC
            495945B62AB7500564CC09D029CC36254820CC0E63954955194B9097F39C8CDD
            6B1448751D594112CDD9802742753CB6B4703E246F5B5CE0ADC0AA5C1001961B
            F64910486F441DAB9ACCCBE0EDB72DBC0F5F4578B68A4694A5515094A562C4E2
            56DA96730A3FFA0001A924E800DC98A9009340858389E37AA4D20BB1CA80EC5B
            793FAA002C7C01E71551BE0BDC5B4849CA4CB1DCBC92F70F8833EB91E70AD9E2
            DC5181CC74BAE32A2EE6DA13E132EC47299234909AFBE1F84162D967F28C481A
            9E4028EF626078981A8029BC087A9662DA72E7F6EB62CCC6ACD7ED8ECD95D163
            B5E16C691FB5E4FA337757DB5F0A439F206A83E31F8E7C3E2FD2F8B1AF87B66E
            4968CA4CB9E4F1A0407F44A3427CE33C899D9F7E17FCD0CC3E39D13D4776FD9D
            3C450E045867D79F59ACC2E98AE1CAE1E25598112ACEA26201214898D35F0AC1
            6F8ADB281544B7902D81233479008196239CC40AF77ADA0FCFB863F15A02FAAD
            8DFD798D7CC45E2CA3AB479520A9CB9564691DB2A6082469DF52DB801D523C02
            0F0562E09C7AE27556AF052216D8752643405121B704E92235234DC8B45737C1
            E2AEB947EAD1423C905C9CE50E9055745CE2660CE5DA0D5FB8663C5EB61C0226
            410775604AB0F51075E7BD6F3A1E75F30C7363381783E5DD6CFEE944D420C20B
            45942F4B31A58750806685B858C9090C7240046624A1D24680F7D55EF75AED90
            F56B195FCE6CE01DBCDCB0C04EFB8EFAB0F4B605D536C86BA540643A0C80B157
            2C272C12D1A1CDAC0D24418C0166CD71D89888525140DE3B2731F59A41A6E23B
            E2CE322800A6D239F7EFEE572500D5D97B22F0E76FE8B8FF0091AC37AE9610EB
            65C77759FC9923EDACC787591A9B69E9600FDAD5E03E1FFF0017EE4524676BE5
            04F21ECAD9B66B0A92BE48BA9ECBC9EC562C07A32D614BFA9C900F9DD5F6D4F7
            97B261D4F8AC9EF26B64A618FE867F601FB35AF57785238DDA396B9C0F40B998
            0F5457BC4D1F3023BBAAA8A1D8A2EDE3BA96CCA26D9D1954E682340508DE0699
            080C0088200CBBF89C02DDCB7ACB00F008607B2E35CB31DD260EBA1208209075
            F13C1DF910FA46B21A3BA49923C0B01E15116EEDEC23928094632D69CC0279B5
            B7880DDFA653F6D596B044BC3776BD46E3F758EB86CE16568E0BC6EE5B721465
            B9BDCB2DA23F2EB10EB07F584F730983567FEF559C8CF256E2A98B4F0AE48E4B
            C9A4C09524553B09C52C62465D9C6BD5BF66E2F88D67F69091DC6B3DEC0B152B
            9F329E571737B194A99F1327C6AF4B6978B2BF96F161B0D6DC8EEDC0F8AC5125
            9B13B414D5BE90E215B33E5B83CE455CBA7EA19DFE74CFEACC89DE15C4ED5F52
            6D30653AEC411984C156008DE751AE6AA5D877B684DE653975CC011D9F11F1BD
            113DD5A762FF00BDDADDC3A35AB6A5E2244B2C24F8837444EC6B3C86988A1F86
            39C42B9E59FD38725E234AB6956594F74F314420B4B9C8556BAC01C84059EADB
            3489CAC0981DC09D8035F3914DA74DEDDC5B4FBC9174A8339B532EF6EE49FE66
            BE74BB1E98977BB6C0C45B449F84372D750400484D2199843E997CDEDC158F5E
            F22D72E26624E4C392D1BBA3DC6981CC8559F48AC7A5E235D1C9AF645B3ADADB
            89DE772996690CE3FDAD3E1975725B373C8B16158C8919DF32CC732110803FF2
            9A93E8F5CEAEF476B2B35CB5258B02C84945824950A8B71794C73906B52EF0BE
            A55402581BB606A358465027BFB506B4ECB75777AE650A3AE60710198DCECBE5
            EAD9068AAD19012D963292012052C706C66BB09B1FEFD49DFC02CAF040A157BC
            66352D2E6B8C1478F3DCE806A7404E9DD518789DE6ED28451C95812C47EB10DD
            927B8031E3B54216EB83DCDDAE59CCBDE64B1751E8F8358F477D48E26E3B2036
            4A76B5CCC4C653AC88064FA7FF004A5E25C32C73E390EBE8A590C665487F786D
            950565DC80722C1653DCC672A47891B69350FC47883675CF0F78C9B76964AA0D
            8BF29EE2E63B86593592CE11C285CC11472412DF49F493CCE5AC788C659C2EE7
            B6DAE512F76E4738D59A3BCE83BC0AC90E1B1AEA3054F5E5CBC5488786E578C1
            F0D084DEBCC0BEA649ECA08D4CED30356D200004015A57B880BCD98E9697C904
            E4CD3A66627C8520E83CA20981AD68627177716D0C0ADB1A8B29DB631B35C659
            1E80B9803BC9D44A617855CD36B71B1DD84EFE49D27F5593D1578B033B5108C5
            E8387D915AD9B92F772EC805E23967F82B23BA14F69C8F111DD159B397DCDDB9
            E08A6D27B58827E9564B1C21575CCC4F323B04FED280E7D6C6BEBE12C0F2827E
            D9CC7F7C9AAA5ECC87A75E4B250A58465F22CAA7A58293E9C8AD3EDACB37BE2D
            B1FB6DFF005D605B3863A01609F45BACDFD9B6C6CB97E6964FF6915E1C5B5B8F
            2FBAF42BB16BD87BA8DD5E44699610E40504ECD29F18988E436D24DABA258C85
            365C00E25E419579696227510580833A15D4EB15AF7932B664724C4657ED0201
            2476BCA0753A92DBED53BD1101AE33390B7029516E64842412F3003025576DA3
            5D4C07BA0DEEF8AEC52841AEFEEAF1DDDEA9CD81ABBA8AB174B8EB1B56B9DB3E
            968207A00851E0A2BCF08BE98875CCCF6EDB18460A3E10EC3B4672AB723975D2
            184815BB8BE1172C1CA119EDF98C8A5C85E4ACAB2C081A4C1062641315EF8770
            BB971D3E0D9115958B30C9E410E142B43492A06C044EBB03E20C9CC3677F3616
            2ABAE4838695B9DDCBD14BA2B0C2ECBA96EF560C3F47B0E9A8B6AC7E33FC237D
            27923D5520057DA56F6D6868A34502504939AF2F6C1104023C75AD1BDD1FC336
            F6501EF550ADF4960FDB5214A92D0E1428068A0711D135FF002AE3A7837C22FE
            F76FF7AA1B1BC36EDB045DB79939B20EB13D62330F5881DF577A52A99D0F2B1F
            FD709DEDB7DBC95864CC466DAF35CA31DD19B37966D90BCC476927BC6BA1F107
            D551ECD89C38CAF9CAEC1D1B51DDD97946F4421AEAB8EE8FD9BA4B65C8E7CF43
            958FA7937ED0350B8BE8E5E49CB96F2F7688F1DD04E46F6AFA291C7D15370451
            B488DF3EBBCF256D9310DD9F64F92A2A63FAC7196FB759E6A365F28735575033
            78183BE5635AB8AC4B5BD6E3B00AD324E521CF3240525E3419B2B102065139A6
            B8B747AC5CEC38EA9B92DC58F60683F44C569E0B85DEB0C7ADB966E5B39407B8
            C5992D824B200E0839B6F2846FAC014BC398CB11423FD48A1EE3F4F5AACD4279
            6F5ABC2F122F3225BCAEDD735D0C525329B705F4EC9757CA201DCAEBB9AB5613
            A3B72FA8716FAC53A87BD72030F8CA81480A79765646BB6B51DD1FE8CDE2D731
            36ED32DB04ADB46191EEA13258078880A9973466ED781A9FE0182BE2EDA08310
            A89A31BACE132052A102B982672C651A44CF22CE1488319A22C37D0814A6CA93
            5C44529B2CB03A2F64E122A3AB2D1C5F476E5852E6D9B6A352D66EE60A399646
            001039F65A07855678E6285A6BAB72159D2D43AAC0601DCB3B6A0065551A16E4
            20EB02F1D224BCD79D5BAF36D800AB6C5C28CA400CADD58F28B669CDC888E755
            BE93700B886D62310BF04611D46BD4AE60433959DC169234585D79D446910D8C
            752C7E168BD76D082309CCF108645AB46222A7ABA87C3DE73AABB005A4443367
            3BC310D949E60E6264F65E646CB639AD31CD7B231DD0058CC752C561A0FEAAC9
            3BB659A62B83DF7602C2DAB36FB40DCB4F933DB620A001164103720EBDF1A56D
            70EE8E59B242F94DF11012C7C6165CFA74F1A585D0DDC49D80027BF3EB72B142
            1691C5E2711D9B46E01B176CA87C744002FA0963E15BB80E8ADBB60B5C6CC4EA
            DA900F8B31ED34779222AD382E8FDE700055B09CB34168F044303D6C3D153583
            E8D59420B037586A1AE4183DE1400AA7C409F1ABF03464DC614A086DF33DDFD2
            C2F9886DFE47C956B0181770058B5D9F8DE45AF4E68ED7A54354CD8E8993F9DB
            A7D16C051ED6CCC7D20AD58A94F25F42CAC1B96E23BDD7F2C9547CD4476469C9
            45DBE8CE186F683FFA84DCFE2135B76786DA4F26DA2FA1547DC2B6694D9AC6B0
            51A00E4AB124E6B1BE1D58415520F2201151D7FA31876F253AB3DF6C94FB17B2
            7D60D4AD2A1F0DB1051E011C6E8048B85CFF008B5E4C3391D61B880E567C8475
            676ED30191849D488CBCC6F1EAEDE36E2E2F956FB63D5E52FA19641F4F80AD9E
            25C3DEDBDC0C8CC8CCCC1821752AE4B9072831058833BC78D79C2F0D7C41CA15
            821D1DD94A8CBCC2E600B311234D04C93A41D0E2CAC6F8DA41845B475A95A52B
            63EFB38270D88DD5769D5B77ABB1A0A52B7F4997DA529421294A5084A5294212
            94A50851BD21FF000EFE8AA2F42FFC50F4D7CA579398EF52322BA6D7C5A52BD2
            8435F694A10B87F19FCFDDF9C7EFAE87EE73FE19BE75294B257FEC4556227C8D
            56DA5294CD574A529421294A5084A5294217CA57DA5085FFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object SysMemo1: TfrxSysMemoView
          Left = 113.385900000000000000
          Top = 3.008040000000051000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ESTADO DO MARANH'#195'O')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 113.385900000000000000
          Top = 35.464750000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PODER JUDICI'#193'RIO')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 113.385900000000000000
          Top = 69.921460000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TRIBUNAL DE JUSTI'#199'A')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Align = baCenter
          Left = 400.630180000000100000
          Top = 99.055350000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LIVRO DI'#193'RIO AUXILIAR')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 8.692913385826770000
          Top = 126.291590000000000000
          Width = 68.031496062992100000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Serventia:')
          ParentFont = False
        end
        object dbEmpresaCODFERF: TfrxMemoView
          Left = 75.590600000000000000
          Top = 126.291590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FBoletim.dbEmpresa
          DataSetName = 'dbEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<dbEmpresa."CODNACIONAL">)]')
          ParentFont = False
        end
        object dbEmpresaNOME: TfrxMemoView
          Left = 149.401670000000000000
          Top = 126.291590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FBoletim.dbEmpresa
          DataSetName = 'dbEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<dbEmpresa."NOME">)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 8.692913390000000000
          Top = 148.968770000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data........:')
          ParentFont = False
        end
        object dbBoletimDATAINI: TfrxMemoView
          Left = 75.622140000000000000
          Top = 148.968770000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FBoletim.dbBoletim
          DataSetName = 'dbBoletim'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DATA]')
          ParentFont = False
        end
        object SysMemo13: TfrxSysMemoView
          Top = 174.102660000000000000
          Width = 1046.929810000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          ParentFont = False
        end
      end
    end
  end
  inherited dbRelatorio: TfrxDBDataset
    UserName = 'dbIndividual'
    FieldAliases.Strings = (
      'CODCLIENTE=CODCLIENTE'
      'CLIENTE=CLIENTE'
      'DATAATO=DATAATO'
      'CODLEI=CODLEI'
      'NUMATO=NUMATO'
      'NUMLIVRO=NUMLIVRO'
      'NUMFOLHA=NUMFOLHA'
      'SELO=SELO'
      'VLREMOLUMENTOS=VLREMOLUMENTOS'
      'VLRFERJ=VLRFERJ'
      'RECEITASFERJ=RECEITASFERJ'
      'VLRFERC=VLRFERC'
      'TIPOATO=TIPOATO')
    DataSet = cdsRelCaixaIndividual
    Left = 80
    Top = 16
  end
  inherited PDFExport: TfrxPDFExport
    Left = 184
    Top = 56
  end
  object dspConection: TDSProviderConnection
    ServerClassName = 'TsmBoletim'
    Connected = True
    SQLConnection = DM.SQLConnection
    Left = 40
    Top = 24
  end
  object cdsRelCaixaIndividual: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    ProviderName = 'dspRelCaixaIndivDiario'
    RemoteServer = dspConection
    Left = 136
    Top = 24
    object cdsRelCaixaIndividualCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsRelCaixaIndividualCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsRelCaixaIndividualDATAATO: TDateField
      FieldName = 'DATAATO'
    end
    object cdsRelCaixaIndividualCODLEI: TStringField
      FieldName = 'CODLEI'
    end
    object cdsRelCaixaIndividualNUMATO: TStringField
      FieldName = 'NUMATO'
    end
    object cdsRelCaixaIndividualNUMLIVRO: TStringField
      FieldName = 'NUMLIVRO'
    end
    object cdsRelCaixaIndividualNUMFOLHA: TStringField
      FieldName = 'NUMFOLHA'
    end
    object cdsRelCaixaIndividualSELO: TLargeintField
      FieldName = 'SELO'
    end
    object cdsRelCaixaIndividualVLREMOLUMENTOS: TFMTBCDField
      FieldName = 'VLREMOLUMENTOS'
      Precision = 18
      Size = 2
    end
    object cdsRelCaixaIndividualVLRFERJ: TFMTBCDField
      FieldName = 'VLRFERJ'
      Precision = 18
      Size = 2
    end
    object cdsRelCaixaIndividualRECEITASFERJ: TFMTBCDField
      FieldName = 'RECEITASFERJ'
      Precision = 18
      Size = 2
    end
    object cdsRelCaixaIndividualVLRFERC: TFMTBCDField
      FieldName = 'VLRFERC'
      Precision = 18
      Size = 2
    end
    object cdsRelCaixaIndividualTIPOATO: TStringField
      FieldName = 'TIPOATO'
      Size = 1000
    end
  end
  object dbEmpresa: TfrxDBDataset
    UserName = 'dbEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'RESPONSAVEL=RESPONSAVEL'
      'REGISTRO=REGISTRO'
      'CODFERF=CODFERF'
      'CODNACIONAL=CODNACIONAL')
    DataSet = cdsEmpresa
    BCDToCurrency = False
    Left = 72
    Top = 72
  end
  object dspEmpresa: TDSProviderConnection
    ServerClassName = 'TsmEmpresa'
    Connected = True
    SQLConnection = DM.SQLConnection
    Left = 32
    Top = 80
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    RemoteServer = dspEmpresa
    Left = 112
    Top = 80
    object cdsEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsEmpresaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 100
    end
    object cdsEmpresaREGISTRO: TStringField
      FieldName = 'REGISTRO'
      Size = 50
    end
    object cdsEmpresaCODFERF: TIntegerField
      FieldName = 'CODFERF'
    end
    object cdsEmpresaCODNACIONAL: TIntegerField
      FieldName = 'CODNACIONAL'
    end
  end
  object cdsRelCaixaTotalDiario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    ProviderName = 'dspRelCaixaTotalDiario'
    RemoteServer = dspConection
    Left = 224
    Top = 16
    object cdsRelCaixaTotalDiarioDATAATO: TDateField
      FieldName = 'DATAATO'
    end
    object cdsRelCaixaTotalDiarioCODLEI: TStringField
      FieldName = 'CODLEI'
    end
    object cdsRelCaixaTotalDiarioSELOINI: TLargeintField
      FieldName = 'SELOINI'
    end
    object cdsRelCaixaTotalDiarioSELOFIM: TLargeintField
      FieldName = 'SELOFIM'
    end
    object cdsRelCaixaTotalDiarioEMOLUNIDADE: TFMTBCDField
      FieldName = 'EMOLUNIDADE'
      Precision = 18
      Size = 2
    end
    object cdsRelCaixaTotalDiarioVLRFERJ: TFMTBCDField
      FieldName = 'VLRFERJ'
      Precision = 18
      Size = 2
    end
    object cdsRelCaixaTotalDiarioRECEITASFERJ: TFMTBCDField
      FieldName = 'RECEITASFERJ'
      Precision = 18
      Size = 2
    end
    object cdsRelCaixaTotalDiarioVLRFERC: TFMTBCDField
      FieldName = 'VLRFERC'
      Precision = 18
      Size = 2
    end
    object cdsRelCaixaTotalDiarioTIPOATO: TStringField
      FieldName = 'TIPOATO'
      Size = 1000
    end
  end
  object dbRelCaixaTotalDiario: TfrxDBDataset
    UserName = 'dbRelCaixaTotalDiario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATAATO=DATAATO'
      'CODLEI=CODLEI'
      'SELOINI=SELOINI'
      'SELOFIM=SELOFIM'
      'EMOLUNIDADE=EMOLUNIDADE'
      'VLRFERJ=VLRFERJ'
      'RECEITASFERJ=RECEITASFERJ'
      'VLRFERC=VLRFERC'
      'TIPOATO=TIPOATO')
    DataSet = cdsRelCaixaTotalDiario
    BCDToCurrency = False
    Left = 224
    Top = 64
  end
  object dspDespesas: TDSProviderConnection
    ServerClassName = 'TsmLancDespesas'
    Connected = True
    SQLConnection = DM.SQLConnection
    Left = 304
  end
  object cdsDespesas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    ProviderName = 'dspRelCaixaFerjInd'
    RemoteServer = dspDespesas
    Left = 344
    Top = 8
    object cdsDespesasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsDespesasDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsDespesasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object cdsDespesasCODSUBGRUPODESPSA: TIntegerField
      FieldName = 'CODSUBGRUPODESPSA'
    end
    object cdsDespesasSUBGRUPODESPSA: TStringField
      FieldName = 'SUBGRUPODESPSA'
      Size = 100
    end
    object cdsDespesasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsDespesasCODGRUPODESPESA: TIntegerField
      FieldName = 'CODGRUPODESPESA'
    end
    object cdsDespesasGRUPODESPESA: TStringField
      FieldName = 'GRUPODESPESA'
      Size = 100
    end
    object cdsDespesasCARNELEAO: TIntegerField
      FieldName = 'CARNELEAO'
    end
  end
  object dbDespesas: TfrxDBDataset
    UserName = 'dbDespesas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'DESCRICAO=DESCRICAO'
      'CODSUBGRUPODESPSA=CODSUBGRUPODESPSA'
      'SUBGRUPODESPSA=SUBGRUPODESPSA'
      'VALOR=VALOR'
      'CODGRUPODESPESA=CODGRUPODESPESA'
      'GRUPODESPESA=GRUPODESPESA'
      'CARNELEAO=CARNELEAO')
    DataSet = cdsDespesas
    BCDToCurrency = False
    Left = 320
    Top = 56
  end
  object RelSemana: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'FLYER'
    ReportOptions.CreateDate = 40943.747284479200000000
    ReportOptions.LastChange = 40943.747284479200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = RelSemanaGetValue
    Left = 216
    Top = 112
    Datasets = <
      item
        DataSet = dbDespSemana
        DataSetName = 'dbDespSemana'
      end
      item
        DataSet = dbEmpresa
        DataSetName = 'dbEmpresa'
      end
      item
        DataSet = dbIndSemana
        DataSetName = 'dbIndSemana'
      end
      item
        DataSet = dbTotalSemana
        DataSetName = 'dbTotalSemana'
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
      object Header1: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 45.354330710000000000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lan'#231'amentos Individuais')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 74.000000000000000000
          Top = 22.677180000000020000
          Width = 76.346456690000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo Lei')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 150.047310000000000000
          Top = 22.677180000000020000
          Width = 235.842519690000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 385.677165350000000000
          Top = 22.677180000000020000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' do ato')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 453.708661420000000000
          Top = 22.677180000000020000
          Width = 57.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Livro')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 568.606299210000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Selo Inicial')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 644.409448820000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Receitas')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 720.000000000000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FERJ')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 511.157480310000000000
          Top = 22.677180000000020000
          Width = 57.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Folha')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 794.834645670000000000
          Top = 22.677180000000020000
          Width = 105.826774090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Receitas - FERJ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 899.701300000000000000
          Top = 22.677180000000020000
          Width = 72.566929133858300000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 971.716535430000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FERC')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 22.677180000000020000
          Width = 76.346456690000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 325.039580000000000000
        Width = 1046.929810000000000000
        DataSet = dbIndSemana
        DataSetName = 'dbIndSemana'
        RowCount = 0
        Stretched = True
        object dbIndividualCODLEI: TfrxMemoView
          Left = 74.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'CODLEI'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndSemana."CODLEI"]')
          ParentFont = False
        end
        object dbIndividualTIPOATO: TfrxMemoView
          Left = 149.590600000000000000
          Width = 235.842519690000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TIPOATO'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbIndSemana."TIPOATO"]')
          ParentFont = False
        end
        object dbIndividualNUMATO: TfrxMemoView
          Left = 385.677165350000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUMATO'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndSemana."NUMATO"]')
          ParentFont = False
        end
        object dbIndividualNUMLIVRO: TfrxMemoView
          Left = 453.708661420000000000
          Width = 57.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUMLIVRO'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndSemana."NUMLIVRO"]')
          ParentFont = False
        end
        object dbIndividualNUMFOLHA: TfrxMemoView
          Left = 511.157480310000000000
          Width = 57.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUMFOLHA'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndSemana."NUMFOLHA"]')
          ParentFont = False
        end
        object dbIndividualSELO: TfrxMemoView
          Left = 568.606299210000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SELO'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndSemana."SELO"]')
          ParentFont = False
        end
        object dbIndividualVLREMOLUMENTOS: TfrxMemoView
          Left = 644.409448820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLREMOLUMENTOS'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbIndSemana."VLREMOLUMENTOS"]')
          ParentFont = False
        end
        object dbIndividualVLRFERJ: TfrxMemoView
          Left = 720.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLRFERJ'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbIndSemana."VLRFERJ"]')
          ParentFont = False
        end
        object dbIndividualRECEITASFERJ: TfrxMemoView
          Left = 794.834645670000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RECEITASFERJ'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbIndSemana."RECEITASFERJ"]')
          ParentFont = False
        end
        object dbIndividualVLRFERC: TfrxMemoView
          Left = 971.716535430000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLRFERC'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbIndSemana."VLRFERC"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'DATAATO'
          DataSet = dbIndSemana
          DataSetName = 'dbIndSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbIndSemana."DATAATO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 366.614410000000000000
        Width = 1046.929810000000000000
        object SysMemo7: TfrxSysMemoView
          Left = 442.205010000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo8: TfrxSysMemoView
          Left = 644.409448820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbIndSemana."RECEITASFERJ">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo9: TfrxSysMemoView
          Left = 720.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbIndSemana."VLRFERJ">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo10: TfrxSysMemoView
          Left = 794.834645670000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbIndSemana."RECEITASFERJ">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo11: TfrxSysMemoView
          Left = 971.716535430000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbIndSemana."VLRFERC">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo20: TfrxSysMemoView
          Left = 498.897960000000000000
          Width = 144.377952755906000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo22: TfrxSysMemoView
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo25: TfrxSysMemoView
          Left = 901.417322834646000000
          Width = 71.811033390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 854.173780000000000000
        Width = 1046.929810000000000000
        object SysMemo14: TfrxSysMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'Perfil TI - www.perfilti.com')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 757.748300000000000000
          Top = 3.779527560000020000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'Data: [Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 995.181510000000000000
          Top = 3.779530000000022000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object SysMemo15: TfrxSysMemoView
          Width = 1046.929810000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 878.031850000000000000
          Top = 3.779527560000020000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hora: [Time]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 45.354330710000000000
        ParentFont = False
        Top = 411.968770000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lan'#231'amentos Totais')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 76.000000000000000000
          Top = 22.677180000000020000
          Width = 76.346456690000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo Lei')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 152.047310000000000000
          Top = 22.677180000000020000
          Width = 342.425196850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 493.606299210000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Selo Inicial')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 568.818897637795000000
          Top = 22.677180000000020000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Selo Final')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 644.409448820000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Receitas')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 720.000000000000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FERJ')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 794.834645670000000000
          Top = 22.677180000000020000
          Width = 105.826774090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Receitas - FERJ')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 899.701300000000000000
          Top = 22.677180000000020000
          Width = 72.566929133858300000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 971.716535430000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FERC')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 22.677180000000020000
          Width = 76.346456690000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897637800000000000
        Top = 480.000310000000000000
        Width = 1046.929810000000000000
        DataSet = dbTotalSemana
        DataSetName = 'dbTotalSemana'
        RowCount = 0
        Stretched = True
        object Memo27: TfrxMemoView
          Left = 76.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'CODLEI'
          DataSet = dbTotalSemana
          DataSetName = 'dbTotalSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbTotalSemana."CODLEI"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 151.590600000000000000
          Width = 342.425196850000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TIPOATO'
          DataSet = dbTotalSemana
          DataSetName = 'dbTotalSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbTotalSemana."TIPOATO"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 493.606299210000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SELOINI'
          DataSet = dbTotalSemana
          DataSetName = 'dbTotalSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbTotalSemana."SELOINI"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 644.409448820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'EMOLUNIDADE'
          DataSet = dbTotalSemana
          DataSetName = 'dbTotalSemana'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotalSemana."EMOLUNIDADE"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 720.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLRFERJ'
          DataSet = dbTotalSemana
          DataSetName = 'dbTotalSemana'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotalSemana."VLRFERJ"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 794.834645670000000000
          Width = 105.826774090000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RECEITASFERJ'
          DataSet = dbTotalSemana
          DataSetName = 'dbTotalSemana'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotalSemana."RECEITASFERJ"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 971.716535430000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VLRFERC'
          DataSet = dbTotalSemana
          DataSetName = 'dbTotalSemana'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbTotalSemana."VLRFERC"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 568.818897640000100000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SELOFIM'
          DataSet = dbTotalSemana
          DataSetName = 'dbTotalSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbTotalSemana."SELOFIM"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'DATAATO'
          DataSet = dbTotalSemana
          DataSetName = 'dbTotalSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbTotalSemana."DATAATO"]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        Height = 22.677180000000000000
        Top = 521.575140000000100000
        Width = 1046.929810000000000000
        object SysMemo12: TfrxSysMemoView
          Left = 442.205010000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo16: TfrxSysMemoView
          Left = 644.409448820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbTotalSemana."EMOLUNIDADE">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo17: TfrxSysMemoView
          Left = 720.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbTotalSemana."VLRFERJ">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo18: TfrxSysMemoView
          Left = 794.834645670000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbTotalSemana."RECEITASFERJ">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo19: TfrxSysMemoView
          Left = 971.716535430000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbTotalSemana."VLRFERC">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo21: TfrxSysMemoView
          Left = 498.897960000000000000
          Width = 144.377952760000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo23: TfrxSysMemoView
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo24: TfrxSysMemoView
          Left = 901.417322834646000000
          Width = 71.811033390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header3: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 45.354330710000000000
        ParentFont = False
        Top = 566.929499999999900000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Memo30: TfrxMemoView
          Left = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 77.000000000000000000
          Top = 22.677180000000020000
          Width = 76.346456690000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 153.047310000000000000
          Top = 22.677180000000020000
          Width = 342.425196850000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 493.606299210000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 568.818897640000100000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 644.409448820000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 720.000000000000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 794.834645670000000000
          Top = 22.677180000000020000
          Width = 105.826774090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 899.527559055118000000
          Top = 22.677180000000020000
          Width = 72.566929133858300000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 971.716535430000000000
          Top = 22.677180000000020000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Top = 22.677180000000020000
          Width = 80.125986689999990000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 42107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897637800000000000
        Top = 634.961040000000000000
        Width = 1046.929810000000000000
        DataSet = dbDespSemana
        DataSetName = 'dbDespSemana'
        RowCount = 0
        Stretched = True
        object Memo48: TfrxMemoView
          Left = 77.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = dbDespSemana
          DataSetName = 'dbDespSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbDespSemana."CODIGO"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 152.590600000000000000
          Width = 342.425196850000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = dbDespesas
          DataSetName = 'dbDespesas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[(<dbDespSemana."SUBGRUPODESPSA">)] - [(<dbDespSemana."DESCRICAO' +
              '">)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 869.291319060000000000
          Width = 102.803169130000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VALOR'
          DataSet = dbDespSemana
          DataSetName = 'dbDespSemana'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbDespSemana."VALOR"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Width = 79.370081180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = dbDespSemana
          DataSetName = 'dbDespSemana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbDespSemana."DATA"]')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        Height = 22.677180000000000000
        Top = 676.535870000000000000
        Width = 1046.929810000000000000
        object SysMemo26: TfrxSysMemoView
          Left = 442.205010000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo27: TfrxSysMemoView
          Left = 644.409448820000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo28: TfrxSysMemoView
          Left = 720.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo29: TfrxSysMemoView
          Left = 794.834645670000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo30: TfrxSysMemoView
          Left = 971.716535430000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo31: TfrxSysMemoView
          Left = 498.897960000000000000
          Width = 144.377952760000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo32: TfrxSysMemoView
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo33: TfrxSysMemoView
          Left = 867.401574800000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbDespSemana."VALOR">)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 71.811070000000000000
        Top = 759.685530000000000000
        Width = 1046.929810000000000000
        object SysMemo34: TfrxSysMemoView
          Left = 644.409304800000000000
          Top = 7.559055120000040000
          Width = 351.496221650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'APURA'#199#195'O [DTINI] A [DTFIM]')
          ParentFont = False
        end
        object SysMemo35: TfrxSysMemoView
          Left = 644.409448818897700000
          Top = 26.456710000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'RECEITAS - FERJ')
          ParentFont = False
        end
        object SysMemo36: TfrxSysMemoView
          Left = 761.574803150000000000
          Top = 26.456710000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESPESAS')
          ParentFont = False
        end
        object SysMemo37: TfrxSysMemoView
          Left = 878.740157480000000000
          Top = 26.456710000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'RESULTADO')
          ParentFont = False
        end
        object SysMemo38: TfrxSysMemoView
          Left = 644.409448820000000000
          Top = 45.354360000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TRECEITAS]')
          ParentFont = False
        end
        object SysMemo39: TfrxSysMemoView
          Left = 761.464984330000000000
          Top = 45.354360000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[TDESPESAS]')
          ParentFont = False
        end
        object SysMemo40: TfrxSysMemoView
          Left = 878.630338660000000000
          Top = 45.354360000000040000
          Width = 117.165361650000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[TTOTAL]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 178.771653540000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Picture1: TfrxPictureView
          Left = 6.559060000000000000
          Top = 3.787569999999999000
          Width = 95.495980000000000000
          Height = 85.157390000000000000
          ShowHint = False
          Center = True
          Picture.Data = {
            0A544A504547496D616765AA2E0000FFD8FFE000104A46494600010100000100
            010000FFDB0084000906061311111514121416141516191C1718181818191716
            18171A1F161518181D1C171B271F1C1923191718202F20232929382C2C171F31
            35302A36262B2D2901090A0A0E0C0E1A0F0F1A2A241E25292A2F34302C2A2F2D
            2A2A2C2C2C292F2F2C2A2C2C352C342C2C2C2C2C2C30292A362D352D2C2F2C2C
            2C2F2C2D302C2C2D2FFFC000110800E100E003012200021101031101FFC4001C
            0001000203010101000000000000000000000506030407020108FFC4004C1000
            020102040205050B090801040300000102110003041221310541061322516132
            427181910714235254729293A1B1D21733536282A2B3C1D11516344373B2C2D3
            63E1E2F0F124A3C3FFC4001B0100020203010000000000000000000000000501
            0403060702FFC400381100010204020706040602030000000000010002030411
            211231051341516171F0228191A1B1D11432C1E11523525362F13342243443FF
            DA000C03010002110311003F00EE34A528425294A1094A528425294A1094A528
            42551BA77D3FF7A93630F1D76999CC116E750003A1720830741226662B5F8DFB
            A8A8B5792D02988171AD24F68650597AE062361E49D9986E35AE63C40DF245EB
            F6EE06BB2EA5D4A2B16D4B02D008D748E5E9AC4F7DAC96CDCD10C22167BF767E
            CBA27B9AF14407117F15884CEE5501BB75431CB998C663B76C0D34D0D749B574
            300CA4303A820C823C08AE15D0CE88DDC6DC1BAD907E12E0F690A762E7B8793B
            9E40F72C2E152D22DBB6A151005551B003402A6193459249EF743ED0EFAE7C53
            11894B6A59D95146E588503D674AE5DD3EE3193196B1184C42CB5BC84DAB8ADA
            A3130C0120822E0D181F24D74AE2FC2ADE26CBD9BA255C47883B861DCC0C107B
            C5709E93F472FE0AEE4B80113D87D95C77827498DD771E3A131109A2F33EF7B5
            9468EFAE45756E8374DC6394A5C016F28931E4BAED9D7BA09123948EFAB657E7
            5E177F1364FBE70E9714298370266442DD8696829B373E71DF5D5B827BA4DBBE
            D86B597E16ECADD8D16DB00D113E5662A081C830933A1963EA2EA6566B134089
            677AABA5294AC8AFA5294A1094A528425294A1094A528425294A1094A5284252
            94A1094A528425295E55C1D419F47B2842FCEBC7ED14BF794E856E5D13DCCACD
            F789AE8381F748B4985BBD65B0F91B258B3A49B6A8905C99035DCC6E600315A1
            EE91C0ECBA1E2187B88F6F381742EA338EC86046C672820F3D7999ABF443841C
            5E252D812A5835C3B76160BCF708841E2C2ABDDA681221AD978A58C1F31F536F
            0BAEFB86F21740BA0D06C34DAB2D6BE1F885B77B96D1C17B44075E6A5806123B
            883BFA7B8D6C5584F52A3FA418BEAB0D7AE14173AB467C8DB36519A363DDDC6A
            42B471B7ECDC63867619EE5B6253CE36F4463E03B51AEFAF71A1415CEFA59D3E
            B7770EB6ED01D5DCB5756E247C25AB8B90DA300C650DDDE50263511558E81592
            D8FC381CAE4FD156763EB20D44F19C1BE1AF35BB821ED92B3DF107E8B290C0F8
            8AE8FEE6FC06CE16DDAC4DEB8A1EFF0066C29D3B2C6444EACCC32EDB0F49AAE2
            AE75D2366B666334BC5309F4FB8F32BA452BE170224C4E83C4EFFCABED584F52
            94A5084A529421294A5084A529421294A5084A529421294A5084A52942169F12
            E31670E14DFBA96831852C6013BC49F0AE31C238AB35DBB83EB3E071170ACAB6
            60B74DC84BAB076CF973007B4AC7981563F746E95E637709730F190864B9D6C4
            18957CBD5F92412A44ED984CD73AB3886575B8BA3210C088CCA4195607661227
            D5CF6AC0F75D279B9A022003219FD4516EE256F610DEC3368581B5717CA478D5
            77E710CADB8F5906C9D09BEFEF0E22D6652E2AA5C0EBA3C29725646BE4DB3A7E
            B1EFADAE21C15F8BE157196003885F83BC820076482B71274CD94A98276204F6
            75B27B9670A16F057338EDBDDB82EA11AA15253AB23D12DFB7435A6BC1102038
            45B1386868781EBC9739C0F4B2FD9C67BE9DB3B123AC3006750150AB01A6A144
            1F8C01F4F7AB57032861A82011E83A8AE01D29E04D83C43DA69283559D9AD1F2
            5BD20687C55BC2BB2741F1C6F602C31DC2E43E26D936E7D7967D7530C9A9057B
            D1EF7873E1C4CC747E8A4B8B711187B172F30916D0BC77C098F59D3D75C217A4
            B89EBEE6216E15B970302C06A41CA6167C9501401CE3BB7AEA5EEA98EEAF00CB
            CAEBADB3F375B8DED16C8F5D73FE80747DB178A52C3E0ED9172E7708D513D248
            D7C03785112A480144EB9EF8AC84C37EBD05566F74F0CB770C9704B8C322331F
            29D8F580C9E7DA4E7B49A8BC0E1EFF0011C4220619B419B64B76ADC4E551B22C
            00146E4EA7526AF3EEB3C11AF1C29B20B5E2CD6C208CCCB9598B6A76483AFEBD
            455EC23705C2669031788EC023B42CDA582C0690CE4951DD2577CBAC3876B82F
            31A0BB5C5CEAE0B13DD90E7D6E51BC33A49D6F10C2E7B9D5D8B040B7D638016D
            AA36AC4E85D940CCDCCB40D22BB170EE276B1099ECBADC59233299123715F9C0
            1CBB0034DBBB902CDFCABADFB9E74ABAD2984B587C96EDA162FD6663BEEC3AB0
            3333313BF7F754C375E854C8CD62716BB69EB901457EA529599374A529421294
            A5084A529421294A5084A529421294A5084A529421733F760C428EA945963739
            5E860A0127E0E468C4E524827B2351BD72D71BF7FAC0131A003BCF7CCF75777E
            9FE030ED8637B101985904A287640CED0AA0E5EF30279026B865D58D06BFD4EE
            4F89D7D026ABC4CD219F6E18A0EF1D5559B82F18C5D9E1EAB874BB6EDB3DC6B9
            794162EF98AC0600F56022A8D60933040DE270BD22C4E1EE1B96AF30B84E66ED
            33673A0EDE6621B603B43969B5756E88DFB7C3B84DBB989390769F5D18E76664
            503E3B2C69E3E15CAF88E2AEE3B14CC016B975E028D609EC8404EF0BD91DDA93
            43AD45EE6439981C1C6A696DDD78ABC5FE15C478C616D5D738445619D2038B8B
            3A11255F431A8920C0EE11F2DF48B17C1C5AC2DCB762F2C7656D339B9A9264E8
            4CB313E66A6636D3A1F03E1DEF7C359B3A1EAD15091B120004FACC9AA5624D8E
            1F7182B9BF8CBA65EF341B88AC6D8845CA41608E0E51C86BA055A98AF6C26E37
            1A26625DCE702CF98E6546DDC66338EDA6B6AB86B488C1A19DBAD56130640323
            CA125403A8F47BC5FF0069706C192BEF564CC17B21CDC2EFD9CE490A09DB7EE0
            2234A91E062CE2F136EE86387C5DB20BE481D7AEA195D6005739092BB811BC0C
            B65E9AF056C5E0AEDA512E40651B4B210E0781311EBA21B8446E369AA8740736
            A5DF36FDEB880E3788B9745D37DCDC1B36770E036E010DA031B01063C2A43A59
            C57157B0D87F7D5BB92B708B77997ABCCACA7329040CC65548603699D609C5D1
            3E3CD81C52DC33964ADC5DB329F2E3C4119B29D8A91CEAFDEEA36971780B57EC
            1172DAB86CCA646560527D19B283DD27BAA1B91354B2002E86F797139D42E496
            E674DF713241F1D4E863633E1A5763F726BE870CC16CB5B60416B84345EDC020
            91BA904151207ACD723C291981619A0862B25736BAEA0C8CDA831B19F5F7FE8A
            F0FB1670C9EF62C6D5CF855CCC588CE01E7B7A3BC9A9859A9D1CDABCBB778FF4
            A5E94A5674ED294A5084A529421294A5084A5294212AB98FE9503D9C3EA79DC2
            3E0C0D755D41727911A6E64EC647A493EF5BD1F14CFCDF3FF766AAD935F1DAB5
            FD35A4A24A06B218BB81BEEE4AECAC06C4A976C52183E915DB6C3AD60F6C9009
            80AC9240CD2342A39881A49931077ED74BEC93DA0C8A7C976032BF300004B491
            A804027D3A5540DF736FAC6CAC844B265D7AB3BEB3A9CBB88D751A6F586CE19F
            20F840DD4B1CA0889CB2A333099F833A1006A4133149E5F4DCC43651E43A876E
            7CADC76AB2F95638DACBA4607885BBCB9ADB48060E85483BC10C0106083A8E62
            B66B97DBE225335CB8ED64B2A940AEC0441222203BE666041074CA220EB75E05
            D206BC45BBB6F25C299B46CC0919430D84105869AFA74AD86474A4398A31DD97
            79134BD392A5165CB2E2E3ACD67E90747EDE36DADBBACE10387214819A030CA4
            9074D67483A0D6A9D81F7370D8FBAEF6C5BC2A32E441FE6C2A6FCF2C8ED13AB1
            91DF5D1694D4B41545F058F20B865F45A78DE2966D102E5C55275009D63BE378
            F1A81E89745ECDB7B989EB171176E3B90E35540CC58A8D7CAD75275E5A0DE31E
            F6B75DCC3677CE4F9B949104F20AA001E0279D6CF04C5E5BF6DD4F66EF65B902
            32B3A31F1046E760C6B5F87A683E6F5059418B083C79714C1F24300895A91753
            7C77A46B870542B3DC8072856200263331553034631A9394E95CEECDE6005C72
            5AE5E5CC49767105154C668825951B41A08036AB3F49B8CE17AC5B89794B28F8
            521A505B01CA1276CD9CC2C6A65B78D2B181C2B3286169B50C7E108B40178D84
            16D1401AAEFAD51D3130F74430DC46114A50EF1B78FD39956259803710CD7DC4
            625D585C4255EDA869CECA216DA4B1CB3306FCC11A8041AE89C13A4898885219
            2E104E5656008060952CA246A0F2304695CEF89609CAC9B24C007E0DFAC2C54D
            96121954EA2C810A0EF565E8D718C2F586E3DE50CC22D16309D590A5E27CFCE0
            869D5405DA4CCE87997B5ED8608C26B5A9CA9BA9B4FA044CB0105C735B9C5FA3
            162DE2ED6345C5B055E6E03A2DC9565D35D1C83E33DD3AD4ED9C658C4AB22B25
            C520874D3C93A195DE0D55B8C63435EBB71CF66DCAAF72A28058FAD8124F3017
            B8578B1708B96594F6B3A052398620381DE0A663EA9E5575DA68366F50196C58
            6BC72C957649010CBC1A1375A581F73416F1ACB713ADC2BDB7CAC4C32366B655
            641CC1C41861B899E62AF3C1384AE16C259466654982D05A092D1A003498DB61
            5BD4AD84340C92F870590FE509583198E4B4B9AE305131AF33DC06E4F80EEA8A
            E3BD23EA73A5B46B970213A440241CA35224E930397A44D3B13C519995D2E9C4
            05577605C1D085398690AC6202E8082DB452A9DD290A5FB0DED3AF6D80F13B2B
            B15E852EE7DCD87592BADCE95D80C0025974975128B3AEA67B8826018E715A18
            CE92DD6722CE454048CCC0B9620C12006002C831BCEFA55571187B81186755EB
            9A08024AE7856CAD23CC05A48DE4FA332E2196D870156D80084839BABE466601
            CBAE583DD3CEB5F98D3931119487469AECF4BF1DAAE325180F6AEAD9C3FA52BE
            462211B93007AB6074064CE433A431EED4CD4FD50CDB04EA27978473156BE8EB
            1385B44EBD8104EE57653F4629BE86D26F9C059105DA05F7AAD350042A16ED52
            34A529FAA694A52842F2E808208907420EA08EEAAE5EE8A3A9F82B8B93907525
            9477660DDA03C44F793565A556989583320362B6B4591911D0CD5A573A6E1C6C
            B5F52C5882440909E487ECA498273C9D4C9F656AA92B6AF4EE101F5F54A3EF5A
            9CE27FE26FFCF5FE1DAA86C46BD68F8CF6D3DBD583F63573D9B6864CC460C83B
            CAA13A866B0DA782CD8CB208B76CEA0B411DE0239FE42B592F325C787BCD7534
            42BE682AAC2621092C350DB80348DF6DCCDD1CF2A13EB6200FB15AB0E1F14B6E
            D5B2D3DB00930482CC33124ECB249D491DD55E0B9ED20B2B8B6533AD7DBC57B7
            0073C9741E1D8D5BD6D5D4CC8D7710C34610750419106B66AB7C071F6AC5A637
            6F5A5676CF945C4620654403B24C9392749DF9EF5E3887495DFB360145FD230E
            D7ECA36DE971FB277AE88F9E8706088930434902DB6BB80490412E716B2E9D29
            3649C82DA35E60333E552D6D3BE624311A2F76FCAAA7C6AE962B6D0E5CB0CE72
            3B8020809D9523552641E51BCD6B7487A536F080A243DF3272924C13E7DC3BF7
            69B9F01A88FE86F4A6C31BA31F8A162329B710B989CFD6132AC58E89B9E7B46C
            90CACE6933F16D6E160F96B6EFC8D7C29C6CAC6BE0CB9D493571CE8B2E37196A
            DBD9B9732BA8B9DABAB71AE05215CAABAB12CA73C1113E49DB9C5F483A5CD71D
            C58BE16DA88528C01639412736FB98811B73ABAF0DE91708B5719DF1B87BD243
            217419D1A0A31CC04195CA3403C9E75238FF00740E12D6AE0189C3C946034E64
            18F36AD4BE866B70BE29A90294CC75F4D8167873CD86EF92A39FD973BE07D25B
            96DD3ADBACD6DB46CF2D9641860756DE34DB5A93C2626DBBDDBA996D837084B8
            EED6CB4AA66088B0C65B31D7E36C758A95AF247A07DD59F05896B2F9EDE50D04
            662A1984C4913A0312350773DF58E6746B1E4BE1D9C45370F2F5BDB62D4E434D
            3A17E5C7351537CCF2EBC40579E0AE466B570E69965251D0153A158651AAE9B7
            2236D85BFA2CD67C936EDADF51E50550D713E3C81A9DB30EFD76227919E90E27
            9DDCD0646654D08D88CA01FB76241D09AB6705E3E989001EC5E5D60120C8F3AD
            9DFBF4DC490646A68C3F88D1D14C778C4D3F353D721EC9F419E969E1AB61A386
            55B7BAEA95A7C5B880B1699CEE07646BDA7F35401A99350D80E9332766F82C3F
            48824FED22EBEB59F42D7CE9063AD5E446B576D31B6D98AF5880905590F94443
            0CDCE349AD8C4F323417449721C6996DAEE2146A8B5E1AFB2ABDDBEEF744BDC0
            F7273E7512428F297CD520C0859D0EDA4D66C258012E5B020066503C18061F63
            D79C4E296E5A7659EC6A090476D7510488613A4891A91DF59EDE975C77856FF7
            21FB157DB5CEE33DEEA97D6BB6B9D41DBE29DB401964B4F12C5ED5A8DCA337AF
            AA703ED6ADA6C01BAF642344903299C8742E09008D46491DDDC7960C369D48F8
            A6E27D1CEBFF000A99E19FE26C7CF6FE1DDAB12AC0F99870CE44F954AF110D18
            E70DCB6ACF45EEB18BAC88BCF2166623B812AB97D3AF841D459ED5B0A02A8000
            0000360068057AA57419693832A0B60B695EB6A4B122BA21AB8A5294AB4B1A52
            94A1094A52842A6714FF00137FE7AFF0ED5430D587EB5E27D48857FDC82A5F1C
            671178F7DC8F62DB5FE5511836936C9DB2DCB87F6D948FB19AB9ACF1ACD463FC
            88F5F64F60FF008DBC96CE1B57B8DE2147A140FF00933D6BE13AC0B993294625
            95492A554991060E8476A08D336F1A0F8B26CA2EC6EEA7C03CDCB9F6123D2456
            B71BE309686A24298541A75970410BE089A127BC81B883598C73DD81A2B5FA5B
            AF6598024803AAACDC478D8C3217B89906C3B4B2C7B8004927D554BE2DD3DBF7
            465B40595F0399E3E76C3D43D7513C4EF5FC45C372E95276024E551F15465D07
            DFCE6B57DE4FFABED3F86B7DD13A2B46C0688934439FBA8708F7E6954E40D2B1
            0E1830C86F3153E76575C274430CFC2EE624E21E338B849B13700B79EDBA05EB
            61A5EE825F34682635AA660BA198AE20CFEF4B7D60B719A591080C5B2CE66D4F
            64ED5954DF11DBF250DB1DA3A5B690C9196329CCD239924993AD58FA09D2A6E1
            A6F13696EF5A107E70A464CFFF008CCCE7FB29EBE6E0EADCDC75AD37FB2AACD1
            139AC69D5114AEEF7507F91BE2BF275FAEB5F8EBCDDF71FE28AA58D8580093F0
            B6B61A9F3EBA57E591BE483EBCFF00D358B19EEBECD6DD7DE804A91F9F3CC11F
            A1AA3AF87BD5DFC366FF0041F25CFED9D07A057AAF3687647A057AAAEB9A1CD2
            9FFDFA0F7F81A52840245C29CC074C2F5B10E3AE5F1395FE96CDEB1EBAB460F8
            AF5EA1D2DE71F3D743DC41820F8115CEEB6301C41EC3E7B660F307C961DCC3BB
            C771CA924E68985141742003BC8FB2D9347E9D8908864C1AB77ED1EFEAAFD89C
            FD967CA115816504B69B062C40D15A1A23CDDCD67BFA5CB67BF321F58CE3F87F
            6D47707E276EF2C0F21A4653BA3412D68F8112CA79891A4015B2EE7AA33AB5A6
            12799C8434FED5BD7F6AB557C3731D81C2845BC56ECC7B5EDC4D3506E9B37CDB
            FF00C44FC572A6385FF89B1F39BF8776A1B17D9377C3AAB9F458CFD96C54BE00
            C622C1FF00C91ED4B8BFCEAD489FF9508FF21F4F75E237F8DDC95D694A574A48
            9294A5084A529421294A508541C5DE8379FB9EE9FA2CFF00C96A34DB8475E612
            DD91E9223FFEA3D959F10D9AC13FA41FC53FFBEB1BDC13276379D8FCDB4AC3EF
            B6B5CC62BB1457BF7B8FAD7DD3F68A340E0B38B833BBF2401140124930CC00E6
            4928A077AC57DBDEE54D788B973105188F2020654E654317ED6A492DCC926A8F
            D37E96DEC21B16EC364BA3E1AE185686692043823CA2C76D214D417E5778B7CA
            CFD558FF00AEB68D0920D6C3D73C549CB90DBDF9AA71A69EC7FE59A10BA8FE46
            C7CA8FD50FC74FC8D8F951FAA1F8EB977E5778B7CACFD559FF00AE9F95DE2DF2
            B3F5567FEBAD83530F72F1F88CD7EE15D47F2363E547EA87E3A7E46C7CA8FD50
            FC75CBBF2BBC5BE567EAACFF00D74FCAEF16F959FAAB3FF5D1A987B91F88CD7E
            E15D47F2363E547EA87E3AC58CF7200B6DDBDF44C2B1FCD0E409F8F5CCFF002B
            BC5BE567EAACFF00D75E2EFBAC715652A714482083F076763A1FF2E8D4C3DC8F
            C466BF70ADBB47B23D02BD579B6341E815EAAB2E6A734A5294284A5294216CF0
            FC71B370381224665DB300737D207507BFC099BF2BABB2B2994BE913C8E8594F
            AD0BFD115CE2AC7D19E207AB7B4774F86B7FB2433AFF00F3E3B521D2F298DBAE
            6E62C796FEE34EEE4B6AD013C5AEF867E46E39ED1DFD66A75816449DDED3DB3F
            3801FCD5EA4F097A5ACBF7BDA3F49907DCD5A0A608EE5BFF0065C048FE2D64C3
            3E5B0A7F4607FF00A8FF00ECAD7A0BB0C686EDCE1EB5F4A2DC1C2AD2382E914A
            52BA724094A528425294A1095ADC4AFE4B371FE2A337B013FCAB66B43A41FE16
            FF00FA4FFED350E3404A90A917ADC25B5EE6B63E8907FE35A0FDA551C983CFA2
            EDD504FD1CD5278CDEDFFA8BFF0021FCEA071D74AD99133D4A446A7314C4B002
            399603ECAE5F0017529BFDC27EE56BE1DD12E1D7ED2DEC4D9B172EDC19D99E0B
            76B555DFCD5217F66B63FB87C23E4D85FDDFEB5C707086F93BFD43FE0A7F64B7
            C9DFEA1FF05742646C0D0D6B0D00A293A2184D4C76F5DEBB1FF70F847C9B0BFB
            BFD69FDC3E11F26C2FEEFF005AE39FD92DF277FA87FC14FEC96F93BFD43FE0AF
            7F127F4151F83C3FDF6F5DEBB1FF0070F847C9B0BFBBFD69FDC3E11F26C2FEEF
            F5AE39FD92DF277FA87FC14FEC96F93BFD43FE0A3E24FE828FC1E1FEFB7AEF5D
            8FFB87C23E4D85FDDFEB5831FD06E122D5C2B86C34846236DE0C73AE47FD92DF
            277FA87FC15E6EF0A6CA7E01F63FE4BF77CCA3E24FE8283A1E18FF00DDBD77AF
            96BC91E81F757BAF76F0CF03E0EE6C3CC7FE95F7DEAFFA3B9F41FF000D61D633
            785CACC08B5F94F8158E9593DEAFFA3B9F41FF000D3DEAFF00A3B9F41FF0D1AC
            66F0A35117F49F02B1D2B27BD5FF004773E83FE1A7BD5FF4773E83FE1A358CDE
            11A88BFA4F8158EB6387E2FAABA97392B027E69D1C7D12D58FDEAFFA3B9F41FF
            000D1B06E44757735D3C87FE95E1E61BDA5A48A1B2CB0591A1446BC34D410723
            B15E2CE8A47C5EA7DA970DA27D96C56ED9B79ADDC5FD6B8BF48B1FF954460AF1
            6B398EE6D16F5836EE7DF70D4E60F77FF51BFE23F956851816D79FA502EA0C35
            57AE1F7FACB56DFE322B7B403FCEB62B43807F85B1FE95BFF6AD6FD75106A2AB
            5F294A52A5094A52842569F19B65B0F7946E6DB8F6A915B95F089A0DD0B9E631
            A503720D6DBD59D49FB26A370E87E08FC438727D0AD754FDB52470A4DA6B4770
            1AD7AD66DCFB44D46E1AE165B91BB5B62078C9BA07ABAF51EAAE6503F25F439B
            5D7EE3F64F9FDB1CC2EAD5E43898E758ADDECE8AE904300C27982011AF2AFA58
            36865586A3BC788E46BA4B9F434E8F248C05933098E7BD7C479241DC7DDC8FFF
            003B8D633DAD0E8C3507F98F0EF1E3519D22C7B5A16F29CA58919A013A0CD946
            60778276F34D618B1F54C315D90EBC57A6B3110D199530E0F2F6F87F5AF19F52
            66157ED3CFD9FD7BAB4F81F1517ED06912378D8C80430F02083ED1CAB19E221E
            170EA6F479D396D4F8DC8398CCE881B5DE2BD076B1A1EC3506FEDF7DBB145309
            A15256D89D4E9DC39C78F8D6B63AE66B57236C8DAF7E876F0F1AD7176E8B8897
            59195C31EC2B290572983998E6583BE9B0D35AD9C75C06CDC8F88DCBC0D6415C
            4013EE7EDD738E2A17047E0D3E62FDC2B34D60C17E693E62FDC2B3D71677CC53
            309349A52A14A4D2694A10935F41AF95AF8FBFD5DAB8FF001519BD809FE55205
            4D02152EC5B22D09F3EDBC7A18D851F7D4BE0DFB05B91676F567623EC8AD0C59
            EAF28FD1A20FA24DC3ED1623D75BEB8622D2DBE642DBFDA68B73ED334F5E0C4C
            2D1993EAAC8ECD4EE0AEFC16D95C3D907716D07B140ADDAF8A2057DAEA005120
            4A529421294AF84C5085F6A3B8BF18161440CEEC6156636D49275851A6B0771A
            19A87E33D2B56B4C2D75803151D68002E52CA1981CD980CA4C3478CF3AAF63B0
            EB6D73A200EA465CA0066248EC729CDB6BE9E52104FE98640221C1A39C76D6C0
            F15720CA97DDD60B6CE28BDEB999426687003161A80ADA955F3964E9E7D4529E
            AB103B8B7D8F247B5C81E8B559DEFB3E5BC06554931A1765301E636802626495
            0348D7CF1BC3E640EBCB491DC7C923D7A4F20EC6B4F2F31229744CDD5AF3EBD5
            330006D06C576E8C627FFC645D49B64DA3024C21217DA994FAEA4DEEA1D1A3D7
            A7DF553E86F1619883B5E1987FAA821C7AD0291E16CD5AB138C16EDBDC6042A2
            963B490012635F0E75BF49C631E030D6F4A1B56E2C5278ADC0F2BEF553CE4723
            E703E079FAFEDA82E926256EDB8B60DD6B4C1CB2E8885655B33ED2158F6449EF
            1151984E3E6FDFB698852B66F122D05052DB30E4CDBDD0623CD074050EE2DD88
            36ADDA21F225B8CBAC2A80748EE1DD1565F01AF86E61DA28B187904154BE8BE0
            D5B10F6AE76ADA8205BD721D45D5CC261805B8CA01D0643EABA62F1B6ECA82C6
            06CA002598FC555512C7C0035CF782A5C38EB796E00E6D0233298FF38312B981
            24031CB53AED57206DD972143623104413A1700EA331D12D27381131A026A8E8
            827E1834EC247D7D4ACD3206B2A164E1970DE3EF86202952B6D641CA8482C588
            D3392AB23CDCB1A99ADAC6DD06D5C898C8DAC69B1F6FAAB0F0FC0BA1B8EC566E
            107AB4FCDA913264EA5CC89681394764192736398F557244761B9CF234CC9388
            0FA7D557D8A1305F9AB7F317EE159EB060BF349F317EE159EB8B3BE629A84A52
            95E5094A52842546F1D7F8309FA4755F503D637EE230F5D4955738EE3E1D986D
            654A8EE375F293F4542CFCE6EEAB12CC2E8829D6EF352054A8C9EB2F9EECD1EA
            489FB523D17EA58628A5EB5099F292E44E51A0859307CE60469E6D68705C3655
            2C7E689F0F28FB4059E62D035F53125735E6525180222332AACE5D18890D39B4
            D65A229BB6218714399FEB4A73EBD15822ADA1DAAFFC2B8AADF52402ACA6194C
            483B8DB4208D8FDC41037AB9B606CABAF58C0E76999D1920901041EC95D469CE
            4F3AB2705E955BEAD56EB3482CA6E1539085665525A236025B699D6B73D1FA5D
            93075713B2E1E04F0F64AE34B165DB70ACB4A529E2A89553E37C6AE5DEB6D5AC
            8A90F6B3306624EA8C4430CA0191CE626AC3C57880B168BC663A055989662140
            9E424EA75813BD5071B7EF216702DB67798964085CEBAF6F30CC6796E7968116
            999D7C06361C2700F27CBBED9AB92B083C92E165E2FF00165CA41521BC92194E
            40C47378C9975DE750769D2B3E0F87A205CA24850019274889124813E158F0F7
            59076D1E49259800C093DC10960220011B01BD7CB6B6D8FC13E47E6ABA4FA6DB
            7DF00F8D68E45010DA81E23FA4DB9AC9747544B8F20EAE3B8FE907FC87AF7067
            E5840335A3AA912BDC6D9D0AFEC931E865AF5EFA64FCE0D3E3AC95F58DD7ED1E
            35AD88B79006423203990CF6509E523FC960489F366768CB001363D7DFE9C505
            6AE119ACDD36CB412C191BB9C1EC3F8C910473F27606BA2E0316B8BB07328865
            36EE24C90D10EBE88320F30C0F3AA2E3F0A3116C32E8E2627420ECC8DDC6447A
            4774CFBE8EF1D656260961D9BC9B33AAF9C3FF0022CEDCC3479CB1B068A9FD4B
            A8FC8E7C0EC3C8E47B9529883885B3FA290E1BD13BDD6AA35E03DEAD28086725
            581C8EA090AA4C1EFED23083126CB730F62C10F758BDC3A2B3F6EE13DD6D40D0
            F85B51E8A5E1D6F577B0F71466057365CD28D074123B4ACBA4ED2D23956CE138
            7A5B69D5AE30D5DBB4E469A4F2593E4880390ADD3104AD52385705BB738B5D2C
            2E59B76ED6751994395BECFD994260664BBAEE34822AF986C3A5A0110051BC0E
            7DE7C4CEE6A3B05699B158A7D440B569748F215AEFAC4DF8F6D48DC705412343
            CF9A9FE5DD58A8D840868A6DF1375EAEECD7D73261811DC4131ED1B7AEB438E6
            3EDD8B2F9EE0964608A59733188CAA0C1624903D62B631DC445842D724890065
            8962480044813AEFB6E74AE74F72F62D8B33B29650AD9D0765D2E310B6C02040
            60649CC0C2EA4CD509C9E64A3711F9BC3C6998DD6BF9ACD0A11886832561E0FC
            495945B62AB7500564CC09D029CC36254820CC0E63954955194B9097F39C8CDD
            6B1448751D594112CDD9802742753CB6B4703E246F5B5CE0ADC0AA5C1001961B
            F64910486F441DAB9ACCCBE0EDB72DBC0F5F4578B68A4694A5515094A562C4E2
            56DA96730A3FFA0001A924E800DC98A9009340858389E37AA4D20BB1CA80EC5B
            793FAA002C7C01E71551BE0BDC5B4849CA4CB1DCBC92F70F8833EB91E70AD9E2
            DC5181CC74BAE32A2EE6DA13E132EC47299234909AFBE1F84162D967F28C481A
            9E4028EF626078981A8029BC087A9662DA72E7F6EB62CCC6ACD7ED8ECD95D163
            B5E16C691FB5E4FA337757DB5F0A439F206A83E31F8E7C3E2FD2F8B1AF87B66E
            4968CA4CB9E4F1A0407F44A3427CE33C899D9F7E17FCD0CC3E39D13D4776FD9D
            3C450E045867D79F59ACC2E98AE1CAE1E25598112ACEA26201214898D35F0AC1
            6F8ADB281544B7902D81233479008196239CC40AF77ADA0FCFB863F15A02FAAD
            8DFD798D7CC45E2CA3AB479520A9CB9564691DB2A6082469DF52DB801D523C02
            0F0562E09C7AE27556AF052216D8752643405121B704E92235234DC8B45737C1
            E2AEB947EAD1423C905C9CE50E9055745CE2660CE5DA0D5FB8663C5EB61C0226
            410775604AB0F51075E7BD6F3A1E75F30C7363381783E5DD6CFEE944D420C20B
            45942F4B31A58750806685B858C9090C7240046624A1D24680F7D55EF75AED90
            F56B195FCE6CE01DBCDCB0C04EFB8EFAB0F4B605D536C86BA540643A0C80B157
            2C272C12D1A1CDAC0D24418C0166CD71D89888525140DE3B2731F59A41A6E23B
            E2CE322800A6D239F7EFEE572500D5D97B22F0E76FE8B8FF0091AC37AE9610EB
            65C77759FC9923EDACC787591A9B69E9600FDAD5E03E1FFF0017EE4524676BE5
            04F21ECAD9B66B0A92BE48BA9ECBC9EC562C07A32D614BFA9C900F9DD5F6D4F7
            97B261D4F8AC9EF26B64A618FE867F601FB35AF57785238DDA396B9C0F40B998
            0F5457BC4D1F3023BBAAA8A1D8A2EDE3BA96CCA26D9D1954E682340508DE0699
            080C0088200CBBF89C02DDCB7ACB00F008607B2E35CB31DD260EBA1208209075
            F13C1DF910FA46B21A3BA49923C0B01E15116EEDEC23928094632D69CC0279B5
            B7880DDFA653F6D596B044BC3776BD46E3F758EB86CE16568E0BC6EE5B721465
            B9BDCB2DA23F2EB10EB07F584F730983567FEF559C8CF256E2A98B4F0AE48E4B
            C9A4C09524553B09C52C62465D9C6BD5BF66E2F88D67F69091DC6B3DEC0B152B
            9F329E571737B194A99F1327C6AF4B6978B2BF96F161B0D6DC8EEDC0F8AC5125
            9B13B414D5BE90E215B33E5B83CE455CBA7EA19DFE74CFEACC89DE15C4ED5F52
            6D30653AEC411984C156008DE751AE6AA5D877B684DE653975CC011D9F11F1BD
            113DD5A762FF00BDDADDC3A35AB6A5E2244B2C24F8837444EC6B3C86988A1F86
            39C42B9E59FD38725E234AB6956594F74F314420B4B9C8556BAC01C84059EADB
            3489CAC0981DC09D8035F3914DA74DEDDC5B4FBC9174A8339B532EF6EE49FE66
            BE74BB1E98977BB6C0C45B449F84372D750400484D2199843E997CDEDC158F5E
            F22D72E26624E4C392D1BBA3DC6981CC8559F48AC7A5E235D1C9AF645B3ADADB
            89DE772996690CE3FDAD3E1975725B373C8B16158C8919DF32CC732110803FF2
            9A93E8F5CEAEF476B2B35CB5258B02C84945824950A8B71794C73906B52EF0BE
            A55402581BB606A358465027BFB506B4ECB75777AE650A3AE60710198DCECBE5
            EAD9068AAD19012D963292012052C706C66BB09B1FEFD49DFC02CAF040A157BC
            66352D2E6B8C1478F3DCE806A7404E9DD518789DE6ED28451C95812C47EB10DD
            927B8031E3B54216EB83DCDDAE59CCBDE64B1751E8F8358F477D48E26E3B2036
            4A76B5CCC4C653AC88064FA7FF004A5E25C32C73E390EBE8A590C665487F786D
            950565DC80722C1653DCC672A47891B69350FC47883675CF0F78C9B76964AA0D
            8BF29EE2E63B86593592CE11C285CC11472412DF49F493CCE5AC788C659C2EE7
            B6DAE512F76E4738D59A3BCE83BC0AC90E1B1AEA3054F5E5CBC5488786E578C1
            F0D084DEBCC0BEA649ECA08D4CED30356D200004015A57B880BCD98E9697C904
            E4CD3A66627C8520E83CA20981AD68627177716D0C0ADB1A8B29DB631B35C659
            1E80B9803BC9D44A617855CD36B71B1DD84EFE49D27F5593D1578B033B5108C5
            E8387D915AD9B92F772EC805E23967F82B23BA14F69C8F111DD159B397DCDDB9
            E08A6D27B58827E9564B1C21575CCC4F323B04FED280E7D6C6BEBE12C0F2827E
            D9CC7F7C9AAA5ECC87A75E4B250A58465F22CAA7A58293E9C8AD3EDACB37BE2D
            B1FB6DFF005D605B3863A01609F45BACDFD9B6C6CB97E6964FF6915E1C5B5B8F
            2FBAF42BB16BD87BA8DD5E44699610E40504ECD29F18988E436D24DABA258C85
            365C00E25E419579696227510580833A15D4EB15AF7932B664724C4657ED0201
            2476BCA0753A92DBED53BD1101AE33390B7029516E64842412F3003025576DA3
            5D4C07BA0DEEF8AEC52841AEFEEAF1DDDEA9CD81ABBA8AB174B8EB1B56B9DB3E
            968207A00851E0A2BCF08BE98875CCCF6EDB18460A3E10EC3B4672AB723975D2
            184815BB8BE1172C1CA119EDF98C8A5C85E4ACAB2C081A4C1062641315EF8770
            BB971D3E0D9115958B30C9E410E142B43492A06C044EBB03E20C9CC3677F3616
            2ABAE4838695B9DDCBD14BA2B0C2ECBA96EF560C3F47B0E9A8B6AC7E33FC237D
            27923D5520057DA56F6D6868A34502504939AF2F6C1104023C75AD1BDD1FC336
            F6501EF550ADF4960FDB5214A92D0E1428068A0711D135FF002AE3A7837C22FE
            F76FF7AA1B1BC36EDB045DB79939B20EB13D62330F5881DF577A52A99D0F2B1F
            FD709DEDB7DBC95864CC466DAF35CA31DD19B37966D90BCC476927BC6BA1F107
            D551ECD89C38CAF9CAEC1D1B51DDD97946F4421AEAB8EE8FD9BA4B65C8E7CF43
            958FA7937ED0350B8BE8E5E49CB96F2F7688F1DD04E46F6AFA291C7D15370451
            B488DF3EBBCF256D9310DD9F64F92A2A63FAC7196FB759E6A365F28735575033
            78183BE5635AB8AC4B5BD6E3B00AD324E521CF3240525E3419B2B102065139A6
            B8B747AC5CEC38EA9B92DC58F60683F44C569E0B85DEB0C7ADB966E5B39407B8
            C5992D824B200E0839B6F2846FAC014BC398CB11423FD48A1EE3F4F5AACD4279
            6F5ABC2F122F3225BCAEDD735D0C525329B705F4EC9757CA201DCAEBB9AB5613
            A3B72FA8716FAC53A87BD72030F8CA81480A79765646BB6B51DD1FE8CDE2D731
            36ED32DB04ADB46191EEA13258078880A9973466ED781A9FE0182BE2EDA08310
            A89A31BACE132052A102B982672C651A44CF22CE1488319A22C37D0814A6CA93
            5C44529B2CB03A2F64E122A3AB2D1C5F476E5852E6D9B6A352D66EE60A399646
            001039F65A07855678E6285A6BAB72159D2D43AAC0601DCB3B6A0065551A16E4
            20EB02F1D224BCD79D5BAF36D800AB6C5C28CA400CADD58F28B669CDC888E755
            BE93700B886D62310BF04611D46BD4AE60433959DC169234585D79D446910D8C
            752C7E168BD76D082309CCF108645AB46222A7ABA87C3DE73AABB005A4443367
            3BC310D949E60E6264F65E646CB639AD31CD7B231DD0058CC752C561A0FEAAC9
            3BB659A62B83DF7602C2DAB36FB40DCB4F933DB620A001164103720EBDF1A56D
            70EE8E59B242F94DF11012C7C6165CFA74F1A585D0DDC49D80027BF3EB72B142
            1691C5E2711D9B46E01B176CA87C744002FA0963E15BB80E8ADBB60B5C6CC4EA
            DA900F8B31ED34779222AD382E8FDE700055B09CB34168F044303D6C3D153583
            E8D59420B037586A1AE4183DE1400AA7C409F1ABF03464DC614A086DF33DDFD2
            C2F9886DFE47C956B0181770058B5D9F8DE45AF4E68ED7A54354CD8E8993F9DB
            A7D16C051ED6CCC7D20AD58A94F25F42CAC1B96E23BDD7F2C9547CD4476469C9
            45DBE8CE186F683FFA84DCFE2135B76786DA4F26DA2FA1547DC2B6694D9AC6B0
            51A00E4AB124E6B1BE1D58415520F2201151D7FA31876F253AB3DF6C94FB17B2
            7D60D4AD2A1F0DB1051E011C6E8048B85CFF008B5E4C3391D61B880E567C8475
            676ED30191849D488CBCC6F1EAEDE36E2E2F956FB63D5E52FA19641F4F80AD9E
            25C3DEDBDC0C8CC8CCCC1821752AE4B9072831058833BC78D79C2F0D7C41CA15
            821D1DD94A8CBCC2E600B311234D04C93A41D0E2CAC6F8DA41845B475A95A52B
            63EFB38270D88DD5769D5B77ABB1A0A52B7F4997DA529421294A5084A5294212
            94A50851BD21FF000EFE8AA2F42FFC50F4D7CA579398EF52322BA6D7C5A52BD2
            8435F694A10B87F19FCFDDF9C7EFAE87EE73FE19BE75294B257FEC4556227C8D
            56DA5294CD574A529421294A5084A5294217CA57DA5085FFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object SysMemo1: TfrxSysMemoView
          Left = 113.385900000000000000
          Top = 3.008040000000051000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ESTADO DO MARANH'#195'O')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 113.385900000000000000
          Top = 35.464750000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PODER JUDICI'#193'RIO')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 113.385900000000000000
          Top = 69.921460000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TRIBUNAL DE JUSTI'#199'A')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Align = baCenter
          Left = 400.630180000000100000
          Top = 99.055350000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LIVRO SEMANAL AUXILIAR')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 8.692913385826770000
          Top = 126.291590000000000000
          Width = 68.031496062992100000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Serventia:')
          ParentFont = False
        end
        object dbEmpresaCODFERF: TfrxMemoView
          Left = 75.590600000000000000
          Top = 126.291590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbEmpresa
          DataSetName = 'dbEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<dbEmpresa."CODNACIONAL">)]')
          ParentFont = False
        end
        object dbEmpresaNOME: TfrxMemoView
          Left = 149.401670000000000000
          Top = 126.291590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dbEmpresa
          DataSetName = 'dbEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<dbEmpresa."NOME">)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 8.692913390000000000
          Top = 148.968770000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Per'#237'odo..:')
          ParentFont = False
        end
        object dbBoletimDATAINI: TfrxMemoView
          Left = 75.622140000000000000
          Top = 148.968770000000000000
          Width = 226.771738980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FBoletim.dbBoletim
          DataSetName = 'dbBoletim'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DTINI] A [DTFIM]')
          ParentFont = False
        end
        object SysMemo13: TfrxSysMemoView
          Top = 174.102660000000000000
          Width = 1046.929810000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          ParentFont = False
        end
      end
    end
  end
  object cdsRelIndSemana: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspRelCaixaIndSemana'
    RemoteServer = dspConection
    Left = 32
    Top = 128
    object cdsRelIndSemanaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsRelIndSemanaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsRelIndSemanaDATAATO: TDateField
      FieldName = 'DATAATO'
    end
    object cdsRelIndSemanaCODLEI: TStringField
      FieldName = 'CODLEI'
    end
    object cdsRelIndSemanaNUMATO: TStringField
      FieldName = 'NUMATO'
    end
    object cdsRelIndSemanaNUMLIVRO: TStringField
      FieldName = 'NUMLIVRO'
    end
    object cdsRelIndSemanaNUMFOLHA: TStringField
      FieldName = 'NUMFOLHA'
    end
    object cdsRelIndSemanaSELO: TLargeintField
      FieldName = 'SELO'
    end
    object cdsRelIndSemanaVLREMOLUMENTOS: TFMTBCDField
      FieldName = 'VLREMOLUMENTOS'
      Precision = 18
      Size = 2
    end
    object cdsRelIndSemanaVLRFERJ: TFMTBCDField
      FieldName = 'VLRFERJ'
      Precision = 18
      Size = 2
    end
    object cdsRelIndSemanaRECEITASFERJ: TFMTBCDField
      FieldName = 'RECEITASFERJ'
      Precision = 18
      Size = 2
    end
    object cdsRelIndSemanaVLRFERC: TFMTBCDField
      FieldName = 'VLRFERC'
      Precision = 18
      Size = 2
    end
    object cdsRelIndSemanaTIPOATO: TStringField
      FieldName = 'TIPOATO'
      Size = 1000
    end
  end
  object dbIndSemana: TfrxDBDataset
    UserName = 'dbIndSemana'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODCLIENTE=CODCLIENTE'
      'CLIENTE=CLIENTE'
      'DATAATO=DATAATO'
      'CODLEI=CODLEI'
      'NUMATO=NUMATO'
      'NUMLIVRO=NUMLIVRO'
      'NUMFOLHA=NUMFOLHA'
      'SELO=SELO'
      'VLREMOLUMENTOS=VLREMOLUMENTOS'
      'VLRFERJ=VLRFERJ'
      'RECEITASFERJ=RECEITASFERJ'
      'VLRFERC=VLRFERC'
      'TIPOATO=TIPOATO')
    DataSet = cdsRelIndSemana
    BCDToCurrency = False
    Left = 72
    Top = 128
  end
  object cdsTotalSemana: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspRelCaixaTotalSemana'
    RemoteServer = dspConection
    Left = 280
    Top = 120
    object cdsTotalSemanaDATAATO: TDateField
      FieldName = 'DATAATO'
    end
    object cdsTotalSemanaCODLEI: TStringField
      FieldName = 'CODLEI'
    end
    object cdsTotalSemanaSELOINI: TLargeintField
      FieldName = 'SELOINI'
    end
    object cdsTotalSemanaSELOFIM: TLargeintField
      FieldName = 'SELOFIM'
    end
    object cdsTotalSemanaEMOLUNIDADE: TFMTBCDField
      FieldName = 'EMOLUNIDADE'
      Precision = 18
      Size = 2
    end
    object cdsTotalSemanaVLRFERJ: TFMTBCDField
      FieldName = 'VLRFERJ'
      Precision = 18
      Size = 2
    end
    object cdsTotalSemanaRECEITASFERJ: TFMTBCDField
      FieldName = 'RECEITASFERJ'
      Precision = 18
      Size = 2
    end
    object cdsTotalSemanaVLRFERC: TFMTBCDField
      FieldName = 'VLRFERC'
      Precision = 18
      Size = 2
    end
    object cdsTotalSemanaTIPOATO: TStringField
      FieldName = 'TIPOATO'
      Size = 1000
    end
  end
  object dbTotalSemana: TfrxDBDataset
    UserName = 'dbTotalSemana'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATAATO=DATAATO'
      'CODLEI=CODLEI'
      'SELOINI=SELOINI'
      'SELOFIM=SELOFIM'
      'EMOLUNIDADE=EMOLUNIDADE'
      'VLRFERJ=VLRFERJ'
      'RECEITASFERJ=RECEITASFERJ'
      'VLRFERC=VLRFERC'
      'TIPOATO=TIPOATO')
    DataSet = cdsTotalSemana
    BCDToCurrency = False
    Left = 312
    Top = 120
  end
  object cdsDespSemana: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end>
    ProviderName = 'dspRelCaixaFerjSemana'
    RemoteServer = dspDespesas
    Left = 272
    Top = 64
    object cdsDespSemanaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsDespSemanaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsDespSemanaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object cdsDespSemanaCODSUBGRUPODESPSA: TIntegerField
      FieldName = 'CODSUBGRUPODESPSA'
    end
    object cdsDespSemanaSUBGRUPODESPSA: TStringField
      FieldName = 'SUBGRUPODESPSA'
      Size = 100
    end
    object cdsDespSemanaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsDespSemanaCODGRUPODESPESA: TIntegerField
      FieldName = 'CODGRUPODESPESA'
    end
    object cdsDespSemanaGRUPODESPESA: TStringField
      FieldName = 'GRUPODESPESA'
      Size = 100
    end
    object cdsDespSemanaCARNELEAO: TIntegerField
      FieldName = 'CARNELEAO'
    end
  end
  object dbDespSemana: TfrxDBDataset
    UserName = 'dbDespSemana'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DATA=DATA'
      'DESCRICAO=DESCRICAO'
      'CODSUBGRUPODESPSA=CODSUBGRUPODESPSA'
      'SUBGRUPODESPSA=SUBGRUPODESPSA'
      'VALOR=VALOR'
      'CODGRUPODESPESA=CODGRUPODESPESA'
      'GRUPODESPESA=GRUPODESPESA'
      'CARNELEAO=CARNELEAO')
    DataSet = cdsDespSemana
    BCDToCurrency = False
    Left = 264
    Top = 40
  end
end
