inherited FCadRegTitulosDocs: TFCadRegTitulosDocs
  Caption = 'Cadastro de t'#237'tulos e documentos'
  ClientHeight = 184
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 212
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Height = 144
    ExplicitHeight = 144
    object lbl1: TLabel
      Left = 8
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbNome
    end
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = dbDESCRICAO
    end
    object dbNome: TDBEdit
      Left = 8
      Top = 32
      Width = 413
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbDESCRICAO: TDBEdit
      Left = 8
      Top = 72
      Width = 413
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbTipo: TDBRadioGroup
      Left = 8
      Top = 97
      Width = 195
      Height = 40
      Caption = 'Tipo'
      Columns = 2
      DataField = 'TIPO'
      DataSource = dsCadastro
      Items.Strings = (
        'Notifica'#231#227'o'
        'Auxiliar')
      ParentBackground = True
      TabOrder = 2
      Values.Strings = (
        '0'
        '1')
    end
  end
  inherited btSalvar: TBitBtn
    Left = 111
    Top = 148
    ExplicitLeft = 111
    ExplicitTop = 148
  end
  inherited btCancelar: TBitBtn
    Left = 217
    Top = 148
    ExplicitLeft = 217
    ExplicitTop = 148
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    BeforePost = cdsCadastroBeforePost
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsCadastroDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCadastroDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsCadastroUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Required = True
    end
    object cdsCadastroTIPO: TSmallintField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
    end
    object cdsCadastroLIVRO: TSmallintField
      DisplayLabel = 'Livro'
      FieldName = 'LIVRO'
    end
    object cdsCadastroPROTOCOLO: TIntegerField
      FieldName = 'PROTOCOLO'
    end
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmRegTitulosDocs'
  end
end
