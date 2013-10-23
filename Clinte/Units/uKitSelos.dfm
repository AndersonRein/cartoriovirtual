inherited FKitSelo: TFKitSelo
  Caption = 'Kit de Selos'
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
        FieldName = 'QUANTIDADE'
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
    Left = 640
    Top = 24
    object cdsConsultaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsConsultaQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
    end
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmKitSelo'
    Left = 584
    Top = 48
  end
end
