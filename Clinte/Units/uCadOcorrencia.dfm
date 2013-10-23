inherited FCadOcorrencia: TFCadOcorrencia
  Caption = 'Cadastro de ocorr'#234'ncia'
  ClientHeight = 97
  ExplicitWidth = 434
  ExplicitHeight = 126
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Height = 57
    ExplicitHeight = 57
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbNome
    end
    object dbNome: TDBEdit
      Left = 8
      Top = 30
      Width = 415
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsCadastro
      TabOrder = 0
    end
  end
  inherited btSalvar: TBitBtn
    Top = 61
  end
  inherited btCancelar: TBitBtn
    Top = 61
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    Left = 296
    Top = 0
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
  end
  inherited dsCadastro: TDataSource
    Left = 216
    Top = 0
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmOcorrencias'
    Left = 256
    Top = 0
  end
end
