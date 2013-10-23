inherited FCNDProtesto: TFCNDProtesto
  Caption = 'CND Protesto'
  ClientHeight = 571
  ClientWidth = 894
  OnShow = FormShow
  ExplicitTop = -33
  ExplicitWidth = 900
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 894
    Height = 67
    Align = alTop
    Caption = 'Pesquisa'
    TabOrder = 0
    object GroupBox4: TGroupBox
      Left = 8
      Top = 16
      Width = 513
      Height = 43
      Caption = 'Aut'#243'grafo'
      TabOrder = 0
      DesignSize = (
        513
        43)
      object edAutografo: TEdit
        Left = 8
        Top = 16
        Width = 499
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnKeyPress = edAutografoKeyPress
      end
    end
    object GroupBox5: TGroupBox
      Left = 527
      Top = 16
      Width = 196
      Height = 43
      Caption = 'Per'#237'odo'
      TabOrder = 1
      object dtInicio: TDateTimePicker
        Left = 3
        Top = 16
        Width = 93
        Height = 21
        Date = 41460.335733645840000000
        Time = 41460.335733645840000000
        TabOrder = 0
      end
      object dtFim: TDateTimePicker
        Left = 99
        Top = 16
        Width = 93
        Height = 21
        Date = 41460.335733645840000000
        Time = 41460.335733645840000000
        TabOrder = 1
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 67
    Width = 894
    Height = 444
    Align = alClient
    Caption = 'Protestos'
    TabOrder = 1
    ExplicitHeight = 399
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 890
      Height = 427
      Align = alClient
      DataSource = dsConsCND
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SELO'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUTOGRAFO'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF_CNPJ'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Width = 200
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 511
    Width = 894
    Height = 60
    Align = alBottom
    Caption = 'Op'#231#245'es'
    TabOrder = 2
    ExplicitTop = 466
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 17
      Width = 100
      Height = 35
      Caption = 'Novo'
    end
  end
  object dspConnection: TDSProviderConnection
    ServerClassName = 'TsmProtesto'
    Connected = True
    SQLConnection = DM.SQLConnection
    Left = 72
    Top = 128
  end
  object cdsConsCND: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'AUTOGRAFO'
        ParamType = ptInput
      end
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
    ProviderName = 'dspConsCND'
    RemoteServer = dspConnection
    Left = 120
    Top = 104
    object cdsConsCNDCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object cdsConsCNDSELO: TStringField
      DisplayLabel = 'Selo'
      FieldName = 'SELO'
      Size = 50
    end
    object cdsConsCNDCODAUTOGRAFO: TIntegerField
      FieldName = 'CODAUTOGRAFO'
    end
    object cdsConsCNDAUTOGRAFO: TStringField
      DisplayLabel = 'Autografo'
      FieldName = 'AUTOGRAFO'
      Size = 100
    end
    object cdsConsCNDNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 100
    end
    object cdsConsCNDCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsConsCNDCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsConsCNDUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsConsCNDCODESTADOCIVIL: TSmallintField
      FieldName = 'CODESTADOCIVIL'
    end
    object cdsConsCNDESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      FixedChar = True
      Size = 13
    end
    object cdsConsCNDPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 100
    end
    object cdsConsCNDRG_IE: TStringField
      FieldName = 'RG_IE'
    end
    object cdsConsCNDCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
    end
    object cdsConsCNDENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsConsCNDNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsConsCNDBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsConsCNDUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
    object cdsConsCNDFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 100
    end
    object cdsConsCNDFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 100
    end
    object cdsConsCNDFERC: TFMTBCDField
      FieldName = 'FERC'
      Precision = 15
      Size = 2
    end
    object cdsConsCNDDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
  end
  object dsConsCND: TDataSource
    DataSet = cdsConsCND
    Left = 152
    Top = 104
  end
end
