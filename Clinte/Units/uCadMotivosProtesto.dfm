inherited FCadMotivosProtesto: TFCadMotivosProtesto
  Caption = 'Cadastro de motivos para protesto'
  ClientHeight = 216
  ClientWidth = 451
  ExplicitWidth = 457
  ExplicitHeight = 245
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Width = 451
    ExplicitWidth = 451
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 22
      Height = 13
      Caption = 'Sigla'
      FocusControl = dbSigla
    end
    object Label2: TLabel
      Left = 69
      Top = 14
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbNome
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object dbSigla: TDBEdit
      Left = 8
      Top = 30
      Width = 60
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'SIGLA'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbNome: TDBEdit
      Left = 69
      Top = 30
      Width = 291
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbDescricao: TDBMemo
      Left = 8
      Top = 70
      Width = 440
      Height = 103
      DataField = 'DESCRICAO'
      DataSource = dsCadastro
      ScrollBars = ssVertical
      TabOrder = 3
      OnKeyPress = dbDescricaoKeyPress
    end
    object dbProtestavel: TDBRadioGroup
      Left = 363
      Top = 14
      Width = 85
      Height = 37
      Caption = 'Protest'#225'vel'
      Columns = 2
      DataField = 'PROTESTAVEL'
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
    Top = 180
    ExplicitTop = 180
  end
  inherited btCancelar: TBitBtn
    Top = 180
    ExplicitTop = 180
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    Left = 256
    Top = 8
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Size = 50
    end
    object cdsCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCadastroSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object cdsCadastroPROTESTAVEL: TSmallintField
      FieldName = 'PROTESTAVEL'
    end
    object cdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
  end
  inherited dsCadastro: TDataSource
    Left = 224
    Top = 8
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmMotivoProtesto'
    Left = 176
    Top = 16
  end
end
