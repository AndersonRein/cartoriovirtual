inherited FMotivosProtesto: TFMotivosProtesto
  Caption = 'Motivos para protesto'
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
        FieldName = 'SIGLA'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 440
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROTESTAVEL'
        Width = 80
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
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    RemoteServer = dspConection
    Left = 552
    Top = 88
    object cdsConsultaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object cdsConsultaSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Size = 50
    end
    object cdsConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsConsultaSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object cdsConsultaCODPROTESTAVEL: TSmallintField
      FieldName = 'CODPROTESTAVEL'
    end
    object cdsConsultaPROTESTAVEL: TStringField
      DisplayLabel = 'Protest'#225'vel'
      FieldName = 'PROTESTAVEL'
      FixedChar = True
      Size = 3
    end
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmMotivoProtesto'
  end
end
