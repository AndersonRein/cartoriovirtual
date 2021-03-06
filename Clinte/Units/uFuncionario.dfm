inherited FFuncionario: TFFuncionario
  Caption = 'Funcion'#225'rios'
  ExplicitWidth = 742
  ExplicitHeight = 504
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
        FieldName = 'ADMISSAO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = False
      end
      item
        Expanded = False
        Visible = False
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
    object cdsConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsConsultaNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
    end
    object cdsConsultaADMISSAO: TDateField
      FieldName = 'ADMISSAO'
    end
    object cdsConsultaTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object cdsConsultaSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object cdsConsultaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object cdsConsultaRG: TStringField
      FieldName = 'RG'
    end
    object cdsConsultaCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsConsultaCEP: TStringField
      FieldName = 'CEP'
    end
    object cdsConsultaCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsConsultaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsConsultaPORTARIA: TStringField
      FieldName = 'PORTARIA'
      Size = 100
    end
    object cdsConsultaFUNCAO: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'FUNCAO'
      Size = 100
    end
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmFuncionario'
    Left = 560
    Top = 24
  end
end
