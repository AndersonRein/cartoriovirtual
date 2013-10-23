inherited FCadRegBoleto: TFCadRegBoleto
  Caption = 'Cadastro de Registro de Boletos'
  ClientHeight = 181
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 209
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Height = 142
    ExplicitHeight = 142
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 52
      Height = 13
      Caption = 'S'#233'rie inicial'
      FocusControl = dbSERIEINI
    end
    object Label2: TLabel
      Left = 217
      Top = 14
      Width = 47
      Height = 13
      Caption = 'S'#233'rie final'
      FocusControl = dbSerieFim
    end
    object lbl1: TLabel
      Left = 8
      Top = 55
      Width = 38
      Height = 13
      Caption = 'Entrega'
      FocusControl = dbEntrega
    end
    object lbl2: TLabel
      Left = 217
      Top = 55
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = dbQuantidade
    end
    object dbSERIEINI: TDBEdit
      Left = 8
      Top = 30
      Width = 200
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SERIEINI'
      DataSource = dsCadastro
      TabOrder = 0
      OnKeyUp = dbSERIEINIKeyUp
    end
    object dbSerieFim: TDBEdit
      Left = 217
      Top = 30
      Width = 200
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SERIEFIM'
      DataSource = dsCadastro
      TabOrder = 1
      OnKeyUp = dbSERIEINIKeyUp
    end
    object dbEntrega: TDBEdit
      Left = 8
      Top = 71
      Width = 200
      Height = 21
      DataField = 'ENTREGA'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object dbQuantidade: TDBEdit
      Left = 217
      Top = 71
      Width = 200
      Height = 21
      TabStop = False
      DataField = 'QUANTIDADE'
      DataSource = dsCadastro
      ReadOnly = True
      TabOrder = 3
    end
    object dbTipoBoleto: TDBRadioGroup
      Left = 8
      Top = 97
      Width = 409
      Height = 39
      Caption = 'Tipo de Boleto'
      Columns = 2
      DataField = 'TIPOBOLETO'
      DataSource = dsCadastro
      Items.Strings = (
        'FERJ'
        'FERC')
      ParentBackground = True
      TabOrder = 4
      Values.Strings = (
        '0'
        '1')
    end
  end
  inherited btSalvar: TBitBtn
    Top = 145
    ExplicitTop = 145
  end
  inherited btCancelar: TBitBtn
    Top = 145
    ExplicitTop = 145
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    Left = 128
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroSERIEINI: TLargeintField
      DisplayLabel = 'S'#233'rie inicial'
      FieldName = 'SERIEINI'
    end
    object cdsCadastroSERIEFIM: TLargeintField
      DisplayLabel = 'S'#233'rie final'
      FieldName = 'SERIEFIM'
    end
    object cdsCadastroENTREGA: TDateField
      DisplayLabel = 'Entrega'
      FieldName = 'ENTREGA'
      EditMask = '99/99/0000;1;_'
    end
    object cdsCadastroQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
    end
    object cdsCadastroTIPOBOLETO: TSmallintField
      FieldName = 'TIPOBOLETO'
    end
  end
  inherited dsCadastro: TDataSource
    Left = 112
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmRegBoletos'
    Left = 88
  end
end
