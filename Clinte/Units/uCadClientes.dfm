inherited FCadClientes: TFCadClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 228
  ClientWidth = 656
  OnCreate = FormCreate
  ExplicitWidth = 662
  ExplicitHeight = 257
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Width = 656
    Height = 185
    ExplicitWidth = 656
    ExplicitHeight = 185
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Nome'
      Color = 15517606
      FocusControl = dbNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblCPF_CNPJ: TLabel
      Left = 8
      Top = 59
      Width = 48
      Height = 13
      Caption = 'CPF/CNPJ'
      Color = 15517606
      FocusControl = dbCPF_CNPJ
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblID_IE: TLabel
      Left = 161
      Top = 59
      Width = 68
      Height = 13
      Caption = 'Insc. Estadual'
      FocusControl = dbID_IE
    end
    object Label4: TLabel
      Left = 313
      Top = 59
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      Color = 15517606
      FocusControl = dbEndereco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 99
      Width = 37
      Height = 13
      Caption = 'Numero'
      FocusControl = dbNumero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 84
      Top = 99
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = dbBairro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 313
      Top = 99
      Width = 33
      Height = 13
      Caption = 'Cidade'
      Color = 15517606
      FocusControl = dbCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 313
      Top = 139
      Width = 28
      Height = 13
      Caption = 'E-Mail'
      FocusControl = dbEmail
    end
    object Label2: TLabel
      Left = 8
      Top = 139
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = dbTelefone
    end
    object Label3: TLabel
      Left = 110
      Top = 139
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = dbCEP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 212
      Top = 139
      Width = 65
      Height = 13
      Caption = 'Complemento'
      FocusControl = dbComplemento
    end
    object Label10: TLabel
      Left = 421
      Top = 16
      Width = 55
      Height = 13
      Caption = 'Nascimento'
      FocusControl = dbNascimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbNome: TDBEdit
      Left = 8
      Top = 32
      Width = 409
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbPessoa: TDBRadioGroup
      Left = 516
      Top = 23
      Width = 135
      Height = 34
      Caption = 'Tipo de Pessoa'
      Columns = 2
      DataField = 'TIPOPESSOA'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Fis'#237'ca'
        'Jur'#237'dica')
      ParentBackground = True
      ParentFont = False
      TabOrder = 2
      Values.Strings = (
        '0'
        '1')
      OnClick = dbPessoaClick
    end
    object dbCPF_CNPJ: TDBEdit
      Left = 8
      Top = 75
      Width = 150
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF_CNPJ'
      DataSource = dsCadastro
      TabOrder = 3
      OnEnter = dbCPF_CNPJEnter
    end
    object dbID_IE: TDBEdit
      Left = 161
      Top = 75
      Width = 150
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IDENT_IEST'
      DataSource = dsCadastro
      TabOrder = 4
      OnExit = dbID_IEExit
    end
    object dbEndereco: TDBEdit
      Left = 313
      Top = 75
      Width = 338
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = dsCadastro
      TabOrder = 5
    end
    object dbNumero: TDBEdit
      Left = 8
      Top = 115
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = dsCadastro
      TabOrder = 6
      OnExit = dbNumeroExit
    end
    object dbBairro: TDBEdit
      Left = 84
      Top = 115
      Width = 227
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = dsCadastro
      TabOrder = 7
    end
    object dbCidade: TDBEdit
      Left = 313
      Top = 115
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      DataField = 'CIDADE'
      DataSource = dsCadastro
      ReadOnly = True
      TabOrder = 8
      OnClick = dbCidadeClick
      OnEnter = dbCidadeClick
    end
    object edCidade: TEdit
      Left = 364
      Top = 115
      Width = 287
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 9
      OnClick = dbCidadeClick
    end
    object dbEmail: TDBEdit
      Left = 313
      Top = 155
      Width = 338
      Height = 21
      CharCase = ecLowerCase
      DataField = 'EMAIL'
      DataSource = dsCadastro
      TabOrder = 13
    end
    object dbTelefone: TDBEdit
      Left = 8
      Top = 155
      Width = 99
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = dsCadastro
      TabOrder = 10
    end
    object dbCEP: TDBEdit
      Left = 110
      Top = 155
      Width = 99
      Height = 21
      DataField = 'CEP'
      DataSource = dsCadastro
      TabOrder = 11
    end
    object dbComplemento: TDBEdit
      Left = 212
      Top = 155
      Width = 99
      Height = 21
      DataField = 'COMPLEMENTO'
      DataSource = dsCadastro
      TabOrder = 12
    end
    object dbNascimento: TDBEdit
      Left = 421
      Top = 32
      Width = 90
      Height = 21
      DataField = 'NASCIMENTO'
      DataSource = dsCadastro
      TabOrder = 1
    end
  end
  inherited btSalvar: TBitBtn
    Left = 223
    Top = 191
    ExplicitLeft = 223
    ExplicitTop = 191
  end
  inherited btCancelar: TBitBtn
    Left = 325
    Top = 191
    ExplicitLeft = 325
    ExplicitTop = 191
  end
  inherited sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CLIENTES WHERE CODIGO =:CODIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 592
    Top = 56
  end
  inherited dspCadastro: TDataSetProvider
    Left = 592
    Top = 104
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    AfterEdit = cdsCadastroAfterEdit
    Left = 560
    Top = 56
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCadastroCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 15
    end
    object cdsCadastroIDENT_IEST: TStringField
      FieldName = 'IDENT_IEST'
      FixedChar = True
      Size = 15
    end
    object cdsCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsCadastroNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 10
    end
    object cdsCadastroCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object cdsCadastroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '(99)0000-0000;1;_'
      FixedChar = True
      Size = 15
    end
    object cdsCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsCadastroTIPOPESSOA: TSmallintField
      FieldName = 'TIPOPESSOA'
    end
    object cdsCadastroSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object cdsCadastroCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000-999;1;_'
      Size = 15
    end
    object cdsCadastroCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsCadastroNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      EditMask = '99/99/0000;1;_'
    end
    object cdsCadastroDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
  end
  inherited dsCadastro: TDataSource
    Left = 560
    Top = 104
  end
end
