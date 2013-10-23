inherited FGrupoDespesas: TFGrupoDespesas
  Caption = 'Grupo de despesas'
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
        FieldName = 'NOME'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARNELEAO'
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
        Name = 'nome'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    RemoteServer = dspConection
    object cdsConsultaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsConsultaSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object cdsConsultaCARNELEAO: TIntegerField
      DisplayLabel = 'Carne Le'#227'o'
      FieldName = 'CARNELEAO'
    end
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmGrupoDespesas'
  end
end
