inherited FCadUsuarios: TFCadUsuarios
  Caption = 'Usu'#225'rios'
  ClientHeight = 144
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 173
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Height = 105
    ExplicitHeight = 105
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 55
      Height = 13
      Caption = 'Funcion'#225'rio'
      FocusControl = dbFuncionario
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
      FocusControl = dbUsuario
    end
    object Label3: TLabel
      Left = 220
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Senha'
      FocusControl = dbSenha
    end
    object dbFuncionario: TDBEdit
      Left = 8
      Top = 30
      Width = 40
      Height = 21
      Color = clSilver
      DataField = 'FUNCIONARIO'
      DataSource = dsCadastro
      ReadOnly = True
      TabOrder = 0
      OnClick = dbFuncionarioClick
    end
    object Edit1: TEdit
      Left = 47
      Top = 30
      Width = 378
      Height = 21
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 1
      OnClick = dbFuncionarioClick
    end
    object dbUsuario: TDBEdit
      Left = 8
      Top = 72
      Width = 205
      Height = 21
      CharCase = ecUpperCase
      DataField = 'USUARIO'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object dbSenha: TDBEdit
      Left = 220
      Top = 72
      Width = 205
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SENHA'
      DataSource = dsCadastro
      PasswordChar = '*'
      TabOrder = 3
    end
  end
  inherited btSalvar: TBitBtn
    Left = 113
    Top = 108
    ExplicitLeft = 113
    ExplicitTop = 108
  end
  inherited btCancelar: TBitBtn
    Left = 220
    Top = 108
    ExplicitLeft = 220
    ExplicitTop = 108
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
    Left = 160
    Top = 0
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroFUNCIONARIO: TIntegerField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'FUNCIONARIO'
      Required = True
    end
    object cdsCadastroUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Required = True
      Size = 10
    end
    object cdsCadastroSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Required = True
      Size = 10
    end
    object cdsCadastroSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
  end
  inherited dsCadastro: TDataSource
    Left = 208
    Top = 0
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmUsuario'
    Left = 120
    Top = 0
  end
end
