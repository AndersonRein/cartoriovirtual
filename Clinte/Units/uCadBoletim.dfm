inherited FCadBoletim: TFCadBoletim
  Caption = 'Cadastro do Boletim'
  ClientHeight = 396
  ClientWidth = 402
  OnCreate = FormCreate
  ExplicitWidth = 408
  ExplicitHeight = 424
  PixelsPerInch = 96
  TextHeight = 13
  inherited gpbCadastro: TGroupBox
    Width = 402
    Height = 353
    ExplicitWidth = 402
    ExplicitHeight = 353
    object GroupBox1: TGroupBox
      Left = 12
      Top = 13
      Width = 377
      Height = 101
      Align = alCustom
      Caption = 'Per'#237'odo de apura'#231#227'o'
      TabOrder = 0
      object lbl1: TLabel
        Left = 8
        Top = 16
        Width = 27
        Height = 13
        Caption = 'Inicial'
        FocusControl = dbInicial
      end
      object lbl2: TLabel
        Left = 8
        Top = 57
        Width = 22
        Height = 13
        Caption = 'Final'
        FocusControl = dbFinal
      end
      object lbl3: TLabel
        Left = 175
        Top = 57
        Width = 126
        Height = 13
        Caption = 'N'#186' da Remessa (aaaa+ss)'
        FocusControl = dbNumRemessa
      end
      object dbInicial: TDBEdit
        Left = 8
        Top = 32
        Width = 158
        Height = 21
        DataField = 'DATAINI'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object dbFinal: TDBEdit
        Left = 8
        Top = 73
        Width = 158
        Height = 21
        DataField = 'DATAFIM'
        DataSource = dsCadastro
        TabOrder = 1
        OnExit = dbFinalExit
      end
      object dbNumRemessa: TDBEdit
        Left = 175
        Top = 73
        Width = 192
        Height = 21
        DataField = 'NUMREMESSA'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 12
      Top = 120
      Width = 377
      Height = 110
      Caption = 'Boleto Banc'#225'rio - FERJ'
      TabOrder = 1
      object lbl4: TLabel
        Left = 8
        Top = 35
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = dbNumBoletoFerj
      end
      object lbl5: TLabel
        Left = 233
        Top = 35
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = dbDataPagFerj
      end
      object Label1: TLabel
        Left = 8
        Top = 86
        Width = 220
        Height = 13
        Caption = 'Total calculado a recolher junto ao FERJ     R$'
        FocusControl = dbVlrFerj
      end
      object dbPagoFerj: TDBCheckBox
        Left = 8
        Top = 18
        Width = 121
        Height = 17
        Caption = 'Pagamento efetuado'
        DataField = 'PAGOFERJ'
        DataSource = dsCadastro
        TabOrder = 0
        ValueChecked = '0'
        ValueUnchecked = '1'
        OnClick = dbPagoFerjClick
      end
      object dbNumBoletoFerj: TDBEdit
        Left = 8
        Top = 51
        Width = 194
        Height = 21
        Color = clWhite
        DataField = 'NUMBOLETOFERJ'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object dbDigVerifFerj: TDBEdit
        Left = 203
        Top = 51
        Width = 20
        Height = 21
        DataField = 'DIGVERIFICFERJ'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object dbDataPagFerj: TDBEdit
        Left = 233
        Top = 51
        Width = 134
        Height = 21
        DataField = 'DATAPAGFERJ'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object dbVlrFerj: TDBEdit
        Left = 233
        Top = 82
        Width = 134
        Height = 21
        DataField = 'VLRFERJ'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 4
      end
    end
    object grp1: TGroupBox
      Left = 12
      Top = 235
      Width = 377
      Height = 110
      Caption = 'Boleto Banc'#225'rio - FERC'
      TabOrder = 2
      object lbl6: TLabel
        Left = 8
        Top = 35
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = dbNumBoletoFerc
      end
      object lbl7: TLabel
        Left = 233
        Top = 35
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = dbDataPagFerc
      end
      object lbl8: TLabel
        Left = 8
        Top = 86
        Width = 222
        Height = 13
        Caption = 'Total calculado a recolher junto ao FERC     R$'
        FocusControl = dbVlrFerc
      end
      object dbPagoFerc: TDBCheckBox
        Left = 8
        Top = 18
        Width = 121
        Height = 17
        Caption = 'Pagamento efetuado'
        DataField = 'PAGOFERC'
        DataSource = dsCadastro
        TabOrder = 0
        ValueChecked = '0'
        ValueUnchecked = '1'
        OnClick = dbPagoFercClick
      end
      object dbNumBoletoFerc: TDBEdit
        Left = 8
        Top = 51
        Width = 194
        Height = 21
        DataField = 'NUMBOLETOFERC'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object dbDigVerFerc: TDBEdit
        Left = 203
        Top = 51
        Width = 20
        Height = 21
        DataField = 'DIGVERIFICFERC'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object dbDataPagFerc: TDBEdit
        Left = 233
        Top = 51
        Width = 134
        Height = 21
        DataField = 'DATAPAGFERC'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object dbVlrFerc: TDBEdit
        Left = 233
        Top = 82
        Width = 134
        Height = 21
        DataField = 'VLRFERC'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 4
      end
    end
  end
  inherited btSalvar: TBitBtn
    Left = 101
    Top = 360
    ExplicitLeft = 101
    ExplicitTop = 360
  end
  inherited btCancelar: TBitBtn
    Left = 203
    Top = 360
    ExplicitLeft = 203
    ExplicitTop = 360
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
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroDATAINI: TDateField
      DisplayLabel = 'Inicial'
      FieldName = 'DATAINI'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCadastroDATAFIM: TDateField
      DisplayLabel = 'Final'
      FieldName = 'DATAFIM'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCadastroNUMREMESSA: TStringField
      DisplayLabel = 'N'#186' da Remessa (aaaa+ss)'
      FieldName = 'NUMREMESSA'
    end
    object cdsCadastroNUMBOLETOFERJ: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMBOLETOFERJ'
    end
    object cdsCadastroDIGVERIFICFERJ: TStringField
      FieldName = 'DIGVERIFICFERJ'
    end
    object cdsCadastroDATAPAGFERJ: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATAPAGFERJ'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCadastroNUMBOLETOFERC: TStringField
      FieldName = 'NUMBOLETOFERC'
    end
    object cdsCadastroDIGVERIFICFERC: TStringField
      FieldName = 'DIGVERIFICFERC'
    end
    object cdsCadastroDATAPAGFERC: TDateField
      FieldName = 'DATAPAGFERC'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCadastroVLRFERJ: TFMTBCDField
      DisplayLabel = 'Total calculado a recolher junto ao FERJ'
      FieldName = 'VLRFERJ'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsCadastroVLRFERC: TFMTBCDField
      FieldName = 'VLRFERC'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsCadastroPAGOFERJ: TSmallintField
      FieldName = 'PAGOFERJ'
    end
    object cdsCadastroPAGOFERC: TSmallintField
      FieldName = 'PAGOFERC'
    end
  end
  inherited dspConection: TDSProviderConnection
    ServerClassName = 'TsmBoletim'
  end
end
