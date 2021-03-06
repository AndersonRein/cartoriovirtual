inherited FCadFuncionarios: TFCadFuncionarios
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 266
  ClientWidth = 520
  OnClick = FormClick
  ExplicitWidth = 526
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Width = 520
    Height = 225
    Caption = 'Funcion'#225'rio'
    ExplicitWidth = 520
    ExplicitHeight = 225
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 416
      Top = 13
      Width = 45
      Height = 13
      Caption = 'Admiss'#227'o'
      FocusControl = dbAdmissao
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = dbEndereco
    end
    object Label3: TLabel
      Left = 312
      Top = 13
      Width = 55
      Height = 13
      Caption = 'Nascimento'
      FocusControl = dbNascimento
    end
    object Label7: TLabel
      Left = 257
      Top = 56
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = dbNumero
    end
    object Label8: TLabel
      Left = 312
      Top = 56
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = dbBairro
    end
    object Label5: TLabel
      Left = 8
      Top = 99
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = dbCEP
    end
    object Label6: TLabel
      Left = 131
      Top = 99
      Width = 14
      Height = 13
      Caption = 'RG'
      FocusControl = dbRG
    end
    object Label9: TLabel
      Left = 257
      Top = 99
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = dbCPF
    end
    object Label10: TLabel
      Left = 391
      Top = 99
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = dbTelefone
    end
    object Label11: TLabel
      Left = 8
      Top = 141
      Width = 33
      Height = 13
      Caption = 'Celular'
      FocusControl = dbCelular
    end
    object Label12: TLabel
      Left = 131
      Top = 141
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = dbCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 8
      Top = 183
      Width = 38
      Height = 13
      Caption = 'Portaria'
      FocusControl = dbPortaria
    end
    object Label14: TLabel
      Left = 266
      Top = 183
      Width = 35
      Height = 13
      Caption = 'Fun'#231#227'o'
      FocusControl = dbFuncao
    end
    object dbNome: TDBEdit
      Left = 8
      Top = 29
      Width = 299
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbAdmissao: TDBEdit
      Left = 416
      Top = 29
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ADMISSAO'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object dbEndereco: TDBEdit
      Left = 8
      Top = 72
      Width = 243
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = dsCadastro
      TabOrder = 3
    end
    object dbNascimento: TDBEdit
      Left = 312
      Top = 29
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NASCIMENTO'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbNumero: TDBEdit
      Left = 257
      Top = 72
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = dsCadastro
      TabOrder = 4
    end
    object dbBairro: TDBEdit
      Left = 312
      Top = 72
      Width = 204
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = dsCadastro
      TabOrder = 5
    end
    object dbCEP: TDBEdit
      Left = 8
      Top = 115
      Width = 120
      Height = 21
      DataField = 'CEP'
      DataSource = dsCadastro
      TabOrder = 6
    end
    object dbRG: TDBEdit
      Left = 131
      Top = 115
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RG'
      DataSource = dsCadastro
      TabOrder = 7
    end
    object dbCPF: TDBEdit
      Left = 257
      Top = 115
      Width = 128
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF'
      DataSource = dsCadastro
      TabOrder = 8
    end
    object dbTelefone: TDBEdit
      Left = 391
      Top = 115
      Width = 125
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = dsCadastro
      TabOrder = 9
    end
    object dbCelular: TDBEdit
      Left = 8
      Top = 157
      Width = 120
      Height = 21
      DataField = 'CELULAR'
      DataSource = dsCadastro
      TabOrder = 10
    end
    object dbCidade: TDBEdit
      Left = 131
      Top = 157
      Width = 41
      Height = 21
      Color = clSilver
      DataField = 'CIDADE'
      DataSource = dsCadastro
      ReadOnly = True
      TabOrder = 11
      OnClick = dbCidadeClick
      OnEnter = dbCidadeClick
    end
    object edCidade: TEdit
      Left = 170
      Top = 157
      Width = 346
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 12
      OnClick = dbCidadeClick
    end
    object dbPortaria: TDBEdit
      Left = 8
      Top = 199
      Width = 250
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PORTARIA'
      DataSource = dsCadastro
      TabOrder = 13
    end
    object dbFuncao: TDBEdit
      Left = 266
      Top = 199
      Width = 250
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FUNCAO'
      DataSource = dsCadastro
      TabOrder = 14
    end
  end
  inherited btSalvar: TBitBtn
    Left = 152
    Top = 230
    ExplicitLeft = 152
    ExplicitTop = 230
  end
  inherited btCancelar: TBitBtn
    Left = 259
    Top = 230
    ExplicitLeft = 259
    ExplicitTop = 230
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    BeforeEdit = cdsCadastroBeforeEdit
    Left = 192
    Top = 16
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsCadastroNASCIMENTO: TDateField
      DisplayLabel = 'Nascimento'
      FieldName = 'NASCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCadastroADMISSAO: TDateField
      FieldName = 'ADMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsCadastroNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsCadastroCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
    end
    object cdsCadastroRG: TStringField
      FieldName = 'RG'
    end
    object cdsCadastroCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000.000.000.00;1;_'
    end
    object cdsCadastroTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object cdsCadastroCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object cdsCadastroCIDADE: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Required = True
    end
    object cdsCadastroPORTARIA: TStringField
      DisplayLabel = 'Portaria'
      FieldName = 'PORTARIA'
      Size = 100
    end
    object cdsCadastroFUNCAO: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'FUNCAO'
      Size = 100
    end
    object cdsCadastroSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
  end
  inherited dsCadastro: TDataSource
    Left = 136
    Top = 16
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmFuncionario'
    Left = 168
  end
end
