inherited FCadKitSelos: TFCadKitSelos
  Caption = 'Cadastro de Kit de Selos'
  ClientHeight = 99
  ClientWidth = 438
  ExplicitWidth = 444
  ExplicitHeight = 127
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Width = 438
    Height = 59
    ExplicitHeight = 59
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbNOME
    end
    object Label2: TLabel
      Left = 332
      Top = 14
      Width = 101
      Height = 13
      Caption = 'Quant. de selos p/Kit'
      FocusControl = dbQuantidade
    end
    object dbNOME: TDBEdit
      Left = 8
      Top = 30
      Width = 320
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbQuantidade: TDBEdit
      Left = 332
      Top = 30
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'QUANTIDADE'
      DataSource = dsCadastro
      TabOrder = 1
    end
  end
  inherited btSalvar: TBitBtn
    Top = 63
    ExplicitTop = 63
  end
  inherited btCancelar: TBitBtn
    Top = 63
    ExplicitTop = 63
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    Left = 96
    Top = 0
    object cdsCadastroCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCadastroQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
    end
  end
  inherited dsCadastro: TDataSource
    Left = 128
    Top = 0
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmKitSelo'
    Left = 64
    Top = 0
  end
end
