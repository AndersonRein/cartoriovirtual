inherited FUsuarios: TFUsuarios
  Caption = 'Usu'#225'rios'
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
        FieldName = 'USUARIO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUNCIONARIO'
        Width = 400
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
      Caption = '&Desativar'
      OnClick = btbExcluirClick
    end
  end
  inherited cdsConsulta: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'usuairo'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    RemoteServer = dspConection
    object cdsConsultaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object cdsConsultaUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 10
    end
    object cdsConsultaCODFUNCIONARIO: TIntegerField
      FieldName = 'CODFUNCIONARIO'
    end
    object cdsConsultaFUNCIONARIO: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'FUNCIONARIO'
      Size = 100
    end
    object cdsConsultaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsConsultaCODSTATUS: TSmallintField
      FieldName = 'CODSTATUS'
    end
    object cdsConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 7
    end
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmUsuario'
  end
end
