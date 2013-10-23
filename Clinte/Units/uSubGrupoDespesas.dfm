inherited FSubGrupoDespesas: TFSubGrupoDespesas
  Caption = 'Subgrupo de despesas'
  ExplicitWidth = 742
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgCadastros: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPO'
        Width = 230
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
    Left = 608
    Top = 40
    object cdsConsultaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object cdsConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsConsultaCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object cdsConsultaGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Size = 100
    end
    object cdsConsultaCARNELEAO: TIntegerField
      DisplayLabel = 'Carne Le'#227'o'
      FieldName = 'CARNELEAO'
    end
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmSubGrupoDespesas'
  end
end
