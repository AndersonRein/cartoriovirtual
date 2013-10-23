inherited FCaixaTabNotas: TFCaixaTabNotas
  Caption = 'Caixa do tabelionato de notas'
  ExplicitWidth = 742
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgCadastros: TDBGrid
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
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Width = 330
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
        FieldName = 'TOTAL'
        Width = 100
        Visible = True
      end>
  end
  inherited gpbCadastro: TGroupBox
    inherited btbInserir: TBitBtn
      OnClick = btbInserirClick
    end
    inherited btbAlterar: TBitBtn
      OnClick = btbAlterarClick
    end
  end
  inherited cdsConsulta: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    RemoteServer = dspConection
    object cdsConsultaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object cdsConsultaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object cdsConsultaLEI: TStringField
      FieldName = 'LEI'
      Size = 100
    end
    object cdsConsultaSELO: TStringField
      DisplayLabel = 'Selo'
      FieldName = 'SELO'
    end
    object cdsConsultaTIPOSELO: TIntegerField
      FieldName = 'TIPOSELO'
    end
    object cdsConsultaATO: TIntegerField
      FieldName = 'ATO'
    end
    object cdsConsultaLIVRO: TIntegerField
      FieldName = 'LIVRO'
    end
    object cdsConsultaFOLHA: TIntegerField
      FieldName = 'FOLHA'
    end
    object cdsConsultaVLRTRANSACAO: TFMTBCDField
      FieldName = 'VLRTRANSACAO'
      Precision = 18
      Size = 2
    end
    object cdsConsultaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsConsultaFERJ: TIntegerField
      FieldName = 'FERJ'
    end
    object cdsConsultaFERC: TIntegerField
      FieldName = 'FERC'
    end
    object cdsConsultaTOTAL: TFMTBCDField
      DisplayLabel = 'Total R$'
      FieldName = 'TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsConsultaFORMAPAG: TStringField
      FieldName = 'FORMAPAG'
    end
    object cdsConsultaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsConsultaCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsConsultaVLRCOBRADO: TFMTBCDField
      FieldName = 'VLRCOBRADO'
      Precision = 18
      Size = 2
    end
    object cdsConsultaOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmCaixaTabNotas'
  end
end
