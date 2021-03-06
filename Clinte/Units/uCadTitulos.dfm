inherited FCadTitulos: TFCadTitulos
  Caption = 'Cadastro de t'#237'tulos'
  ClientWidth = 500
  ExplicitWidth = 506
  ExplicitHeight = 251
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Width = 500
    Height = 57
    ExplicitWidth = 418
    ExplicitHeight = 57
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbNome
    end
    object Label2: TLabel
      Left = 312
      Top = 12
      Width = 22
      Height = 13
      Caption = 'Sigla'
      FocusControl = dbSigla
    end
    object dbNome: TDBEdit
      Left = 8
      Top = 28
      Width = 300
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbSigla: TDBEdit
      Left = 312
      Top = 28
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SIGLA'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbCheque: TDBRadioGroup
      Left = 416
      Top = 16
      Width = 80
      Height = 33
      Caption = 'Cheque'
      Columns = 2
      DataField = 'CHEQUE'
      DataSource = dsCadastro
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentBackground = True
      TabOrder = 2
      Values.Strings = (
        '0'
        '1')
    end
  end
  inherited btSalvar: TBitBtn
    TabOrder = 2
  end
  inherited btCancelar: TBitBtn
    TabOrder = 3
  end
  object GroupBox1: TGroupBox [3]
    Left = 0
    Top = 57
    Width = 500
    Height = 128
    Align = alTop
    Caption = 'Descri'#231#227'o'
    TabOrder = 1
    ExplicitWidth = 418
    object dbDescricao: TDBMemo
      Left = 2
      Top = 15
      Width = 496
      Height = 111
      Align = alClient
      DataField = 'DESCRICAO'
      DataSource = dsCadastro
      ScrollBars = ssVertical
      TabOrder = 0
      OnKeyPress = dbDescricaoKeyPress
      ExplicitWidth = 414
    end
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    Left = 288
    Top = 128
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsCadastroSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Required = True
    end
    object cdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object cdsCadastroCHEQUE: TSmallintField
      FieldName = 'CHEQUE'
    end
  end
  inherited dsCadastro: TDataSource
    Left = 320
    Top = 128
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmTitulos'
    Left = 256
    Top = 128
  end
end
