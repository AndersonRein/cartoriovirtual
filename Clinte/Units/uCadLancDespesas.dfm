inherited FCadLancDespesas: TFCadLancDespesas
  Caption = 'Lan'#231'amento de despesas'
  ClientHeight = 174
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 434
  ExplicitHeight = 202
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Height = 135
    ExplicitHeight = 135
    object lbl1: TLabel
      Left = 8
      Top = 13
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = dbNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 316
      Top = 13
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = dbData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 8
      Top = 53
      Width = 40
      Height = 13
      Caption = 'Valor R$'
      FocusControl = dbValor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 116
      Top = 53
      Width = 109
      Height = 13
      Caption = 'Subgrupo de despesas'
      FocusControl = dbSubGrupo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 93
      Width = 102
      Height = 13
      Caption = 'Forma de pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbNome: TDBEdit
      Left = 8
      Top = 29
      Width = 300
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbData: TDBEdit
      Left = 316
      Top = 29
      Width = 100
      Height = 21
      DataField = 'DATA'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbValor: TDBEdit
      Left = 8
      Top = 69
      Width = 100
      Height = 21
      DataField = 'VALOR'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object dbSubGrupo: TDBEdit
      Left = 116
      Top = 69
      Width = 40
      Height = 21
      Color = clSilver
      DataField = 'SUBGRUPODESPSA'
      DataSource = dsCadastro
      ReadOnly = True
      TabOrder = 3
      OnClick = dbSubGrupoClick
      OnEnter = dbSubGrupoClick
    end
    object edSubGrupo: TEdit
      Left = 155
      Top = 69
      Width = 261
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 4
    end
    object dbFormPag: TDBLookupComboBox
      Left = 8
      Top = 108
      Width = 408
      Height = 21
      DataField = 'FORMAPAGAMENTO'
      DataSource = dsCadastro
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = dsFormPag
      TabOrder = 5
    end
  end
  inherited btSalvar: TBitBtn
    Left = 108
    Top = 138
    ExplicitLeft = 108
    ExplicitTop = 105
  end
  inherited btCancelar: TBitBtn
    Top = 138
    ExplicitTop = 105
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    AfterEdit = cdsCadastroAfterEdit
    Left = 144
    Top = 16
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroSUBGRUPODESPSA: TIntegerField
      DisplayLabel = 'Subgrupo de despesas'
      FieldName = 'SUBGRUPODESPSA'
      Required = True
    end
    object cdsCadastroVALOR: TFMTBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsCadastroDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object cdsCadastroDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      EditMask = '99/99/0000;1;_'
    end
    object cdsCadastroFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
    end
  end
  inherited dsCadastro: TDataSource
    Left = 200
    Top = 16
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmLancDespesas'
    Left = 168
    Top = 16
  end
  object cdsFormPag: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    RemoteServer = dspFormPag
    Left = 296
    Top = 56
  end
  object dsFormPag: TDataSource
    DataSet = cdsFormPag
    Left = 328
    Top = 56
  end
  object dspFormPag: TDSProviderConnection
    ServerClassName = 'TsmFormaPagamento'
    Connected = True
    SQLConnection = DM.SQLConnection
    Left = 360
    Top = 56
  end
end
