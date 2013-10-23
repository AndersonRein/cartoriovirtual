inherited FLancCaixaTabNotas: TFLancCaixaTabNotas
  Caption = 'Lan'#231'amentos no caixa do tabelionato de notas'
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 250
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    ExplicitLeft = 8
    ExplicitTop = -8
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 13
      Height = 13
      Caption = 'Lei'
      FocusControl = dbLei
    end
    object Label2: TLabel
      Left = 113
      Top = 12
      Width = 17
      Height = 13
      Caption = 'Ato'
      FocusControl = dbAto
    end
    object Label4: TLabel
      Left = 280
      Top = 12
      Width = 20
      Height = 13
      Caption = 'Selo'
      FocusControl = dbSelo
    end
    object Label5: TLabel
      Left = 365
      Top = 12
      Width = 42
      Height = 13
      Caption = 'Tipo selo'
      FocusControl = dbTipoSelo
    end
    object Label3: TLabel
      Left = 8
      Top = 52
      Width = 23
      Height = 13
      Caption = 'Livro'
      FocusControl = dbLivro
    end
    object Label6: TLabel
      Left = 113
      Top = 52
      Width = 26
      Height = 13
      Caption = 'Folha'
      FocusControl = dbFolha
    end
    object Label7: TLabel
      Left = 218
      Top = 52
      Width = 91
      Height = 13
      Caption = 'Valor trasnferencia'
      FocusControl = dbValorTransferencia
    end
    object Label8: TLabel
      Left = 322
      Top = 52
      Width = 100
      Height = 13
      Caption = 'Emolumento Cart'#243'rio'
      FocusControl = dbValor
    end
    object Label9: TLabel
      Left = 8
      Top = 93
      Width = 24
      Height = 13
      Caption = 'FERJ'
      FocusControl = dbFERJ
    end
    object Label10: TLabel
      Left = 113
      Top = 93
      Width = 26
      Height = 13
      Caption = 'FERC'
      FocusControl = dbFerc
    end
    object Label11: TLabel
      Left = 218
      Top = 93
      Width = 24
      Height = 13
      Caption = 'Total'
      FocusControl = dbTotal
    end
    object Label12: TLabel
      Left = 322
      Top = 93
      Width = 70
      Height = 13
      Caption = 'Forma de pag.'
      FocusControl = dbForma
    end
    object Label13: TLabel
      Left = 8
      Top = 133
      Width = 33
      Height = 13
      Caption = 'Cliente'
      FocusControl = dbCliente
    end
    object Label14: TLabel
      Left = 218
      Top = 133
      Width = 84
      Height = 13
      Caption = 'Valor Cobrado R$'
      FocusControl = dbValorCobrado
    end
    object dbLei: TDBEdit
      Left = 8
      Top = 28
      Width = 100
      Height = 21
      DataField = 'LEI'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbAto: TDBEdit
      Left = 113
      Top = 28
      Width = 40
      Height = 21
      Color = clSilver
      DataField = 'ATO'
      DataSource = dsCadastro
      ReadOnly = True
      TabOrder = 1
    end
    object edAto: TEdit
      Left = 153
      Top = 28
      Width = 121
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 2
    end
    object dbSelo: TDBEdit
      Left = 280
      Top = 28
      Width = 80
      Height = 21
      DataField = 'SELO'
      DataSource = dsCadastro
      TabOrder = 3
    end
    object dbTipoSelo: TDBEdit
      Left = 365
      Top = 28
      Width = 57
      Height = 21
      DataField = 'TIPOSELO'
      DataSource = dsCadastro
      TabOrder = 4
    end
    object dbLivro: TDBEdit
      Left = 8
      Top = 68
      Width = 100
      Height = 21
      DataField = 'LIVRO'
      DataSource = dsCadastro
      TabOrder = 5
    end
    object dbFolha: TDBEdit
      Left = 113
      Top = 68
      Width = 100
      Height = 21
      DataField = 'FOLHA'
      DataSource = dsCadastro
      TabOrder = 6
    end
    object dbValorTransferencia: TDBEdit
      Left = 218
      Top = 68
      Width = 100
      Height = 21
      DataField = 'VLRTRANSACAO'
      DataSource = dsCadastro
      TabOrder = 7
    end
    object dbValor: TDBEdit
      Left = 322
      Top = 68
      Width = 100
      Height = 21
      DataField = 'VALOR'
      DataSource = dsCadastro
      TabOrder = 8
    end
    object dbFERJ: TDBEdit
      Left = 8
      Top = 109
      Width = 100
      Height = 21
      DataField = 'FERJ'
      DataSource = dsCadastro
      TabOrder = 9
    end
    object dbFerc: TDBEdit
      Left = 113
      Top = 109
      Width = 100
      Height = 21
      DataField = 'FERC'
      DataSource = dsCadastro
      TabOrder = 10
    end
    object dbTotal: TDBEdit
      Left = 218
      Top = 109
      Width = 100
      Height = 21
      DataField = 'TOTAL'
      DataSource = dsCadastro
      TabOrder = 11
    end
    object dbForma: TDBEdit
      Left = 322
      Top = 109
      Width = 100
      Height = 21
      DataField = 'FORMAPAG'
      DataSource = dsCadastro
      TabOrder = 12
    end
    object dbCliente: TDBEdit
      Left = 8
      Top = 149
      Width = 40
      Height = 21
      Color = clSilver
      DataField = 'CLIENTE'
      DataSource = dsCadastro
      ReadOnly = True
      TabOrder = 13
      OnClick = dbClienteClick
    end
    object edCliente: TEdit
      Left = 48
      Top = 149
      Width = 165
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 14
      OnClick = dbClienteClick
    end
    object dbValorCobrado: TDBEdit
      Left = 218
      Top = 149
      Width = 100
      Height = 21
      DataField = 'VLRCOBRADO'
      DataSource = dsCadastro
      TabOrder = 15
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
    Left = 160
    Top = 16
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsCadastroLEI: TStringField
      DisplayLabel = 'Lei'
      FieldName = 'LEI'
      Size = 100
    end
    object cdsCadastroSELO: TStringField
      DisplayLabel = 'Selo'
      FieldName = 'SELO'
    end
    object cdsCadastroTIPOSELO: TIntegerField
      DisplayLabel = 'Tipo selo'
      FieldName = 'TIPOSELO'
    end
    object cdsCadastroATO: TIntegerField
      DisplayLabel = 'N'#186' do Ato'
      FieldName = 'ATO'
    end
    object cdsCadastroLIVRO: TIntegerField
      DisplayLabel = 'Livro'
      FieldName = 'LIVRO'
    end
    object cdsCadastroFOLHA: TIntegerField
      DisplayLabel = 'Folha'
      FieldName = 'FOLHA'
    end
    object cdsCadastroVLRTRANSACAO: TFMTBCDField
      DisplayLabel = 'Valor trasnferencia'
      FieldName = 'VLRTRANSACAO'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsCadastroVALOR: TFMTBCDField
      DisplayLabel = 'Emolumento Cart'#243'rio'
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsCadastroFERJ: TIntegerField
      FieldName = 'FERJ'
    end
    object cdsCadastroFERC: TIntegerField
      FieldName = 'FERC'
    end
    object cdsCadastroTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsCadastroFORMAPAG: TStringField
      DisplayLabel = 'Forma de pag.'
      FieldName = 'FORMAPAG'
    end
    object cdsCadastroCLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
    end
    object cdsCadastroVLRCOBRADO: TFMTBCDField
      DisplayLabel = 'Valor Cobrado R$'
      FieldName = 'VLRCOBRADO'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsCadastroOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
  end
  inherited dsCadastro: TDataSource
    Left = 224
    Top = 16
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmCaixaTabNotas'
    Left = 192
    Top = 16
  end
end
