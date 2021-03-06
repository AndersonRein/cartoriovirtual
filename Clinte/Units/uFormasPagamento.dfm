inherited FFormasPagamento: TFFormasPagamento
  Caption = 'Formas de pagamento'
  ExplicitWidth = 742
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgCadastros: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
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
    inherited btbExcluir: TBitBtn
      OnClick = btbExcluirClick
    end
  end
  inherited cdsConsulta: TClientDataSet
    Params = <
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
    object cdsConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsConsultaCODTIPO: TSmallintField
      FieldName = 'CODTIPO'
    end
    object cdsConsultaTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      FixedChar = True
      Size = 7
    end
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmFormaPagamento'
  end
end
