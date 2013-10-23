inherited FCadEmolumentos: TFCadEmolumentos
  Caption = 'Cadastro de Emolumentos'
  ClientHeight = 270
  ClientWidth = 441
  OnCreate = FormCreate
  ExplicitWidth = 447
  ExplicitHeight = 298
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Width = 441
    Height = 228
    ExplicitWidth = 438
    ExplicitHeight = 228
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 60
      Height = 13
      Caption = 'Grupo da Lei'
      FocusControl = dbGrupoLei
    end
    object Label2: TLabel
      Left = 72
      Top = 13
      Width = 13
      Height = 13
      Caption = 'Lei'
      FocusControl = dbLei
    end
    object Label3: TLabel
      Left = 343
      Top = 13
      Width = 57
      Height = 13
      Caption = 'Tipo de selo'
    end
    object Label4: TLabel
      Left = 239
      Top = 53
      Width = 40
      Height = 13
      Caption = 'Valor R$'
      FocusControl = dbValor
    end
    object Label5: TLabel
      Left = 343
      Top = 53
      Width = 90
      Height = 13
      Caption = 'Valor da transa'#231#227'o'
      FocusControl = dbVlrTransacao
    end
    object dbGrupoLei: TDBEdit
      Left = 8
      Top = 29
      Width = 60
      Height = 21
      CharCase = ecUpperCase
      DataField = 'GRUPOLEI'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbLei: TDBEdit
      Left = 72
      Top = 29
      Width = 60
      Height = 21
      CharCase = ecLowerCase
      DataField = 'LEI'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbAtoGeral: TDBRadioGroup
      Left = 136
      Top = 13
      Width = 100
      Height = 37
      Caption = 'Ato geral'
      Columns = 2
      DataField = 'ATOGERAL'
      DataSource = dsCadastro
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentBackground = True
      TabOrder = 2
      Values.Strings = (
        'S'
        'N')
    end
    object dbAtoFixo: TDBRadioGroup
      Left = 239
      Top = 13
      Width = 100
      Height = 37
      Caption = 'Ato fixo'
      Columns = 2
      DataField = 'ATOFIXO'
      DataSource = dsCadastro
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentBackground = True
      TabOrder = 3
      Values.Strings = (
        'S'
        'N')
    end
    object dbValor: TDBEdit
      Left = 239
      Top = 69
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VALOR'
      DataSource = dsCadastro
      TabOrder = 4
    end
    object dbEditavel: TDBRadioGroup
      Left = 8
      Top = 53
      Width = 124
      Height = 37
      Caption = 'Ato edit'#225'vel'
      Columns = 2
      DataField = 'EDITAVEL'
      DataSource = dsCadastro
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentBackground = True
      TabOrder = 5
      Values.Strings = (
        'S'
        'N')
    end
    object dbAtivo: TDBRadioGroup
      Left = 136
      Top = 53
      Width = 100
      Height = 37
      Caption = 'Ativo'
      Columns = 2
      DataField = 'ATIVO'
      DataSource = dsCadastro
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentBackground = True
      TabOrder = 6
      Values.Strings = (
        'S'
        'N')
    end
    object dbVlrTransacao: TDBEdit
      Left = 343
      Top = 69
      Width = 90
      Height = 21
      DataField = 'VLRTRANSACAO'
      DataSource = dsCadastro
      TabOrder = 7
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 92
      Width = 425
      Height = 131
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Tipo de Ato'
      TabOrder = 8
      object dbTipoAto: TDBMemo
        Left = 2
        Top = 15
        Width = 421
        Height = 114
        Align = alClient
        DataField = 'TIPOATO'
        DataSource = dsCadastro
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyPress = dbTipoAtoKeyPress
      end
    end
    object dbTipoSelo: TDBLookupComboBox
      Left = 343
      Top = 29
      Width = 90
      Height = 21
      DataField = 'TIPOSELO'
      DataSource = dsCadastro
      KeyField = 'TIPO'
      ListField = 'NOME'
      ListSource = dsTipoSelo
      TabOrder = 9
    end
  end
  inherited btSalvar: TBitBtn
    Top = 234
    ExplicitTop = 234
  end
  inherited btCancelar: TBitBtn
    Top = 234
    ExplicitTop = 234
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    Left = 192
    Top = 8
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroGRUPOLEI: TSmallintField
      DisplayLabel = 'Grupo da Lei'
      FieldName = 'GRUPOLEI'
    end
    object cdsCadastroTIPOATO: TStringField
      FieldName = 'TIPOATO'
      Size = 1000
    end
    object cdsCadastroLEI: TStringField
      DisplayLabel = 'Lei'
      FieldName = 'LEI'
      Size = 100
    end
    object cdsCadastroATOGERAL: TStringField
      FieldName = 'ATOGERAL'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroATOFIXO: TStringField
      FieldName = 'ATOFIXO'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroTIPOSELO: TIntegerField
      DisplayLabel = 'Tipo de selo'
      FieldName = 'TIPOSELO'
    end
    object cdsCadastroVALOR: TFMTBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsCadastroEDITAVEL: TStringField
      FieldName = 'EDITAVEL'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroVLRTRANSACAO: TFMTBCDField
      DisplayLabel = 'Valor da transa'#231#227'o'
      FieldName = 'VLRTRANSACAO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  inherited dsCadastro: TDataSource
    Left = 160
    Top = 32
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmEmolumentos'
    Left = 200
    Top = 32
  end
  object dspTipoSelo: TDSProviderConnection
    ServerClassName = 'TsmTipoSelo'
    SQLConnection = DM.SQLConnection
    Left = 192
    Top = 120
  end
  object cdsTipoSelo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TIPO'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsLanc'
    RemoteServer = dspTipoSelo
    Left = 152
    Top = 128
    object cdsTipoSeloCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsTipoSeloNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsTipoSeloTIPO: TIntegerField
      FieldName = 'TIPO'
    end
  end
  object dsTipoSelo: TDataSource
    DataSet = cdsTipoSelo
    Left = 120
    Top = 128
  end
end
