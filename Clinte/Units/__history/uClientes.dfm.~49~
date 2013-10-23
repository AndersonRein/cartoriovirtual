inherited FClientes: TFClientes
  Caption = 'Clientes'
  OnShow = FormShow
  ExplicitWidth = 742
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgCadastros: TDBGrid
    DataSource = dsCadastro
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 250
        Visible = True
      end>
  end
  inherited gpbCadastro: TGroupBox
    inherited btbInserir: TBitBtn
      Left = 157
      ExplicitLeft = 157
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = cdsCadastro
  end
  inherited cdsCadastro: TClientDataSet
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadastro'
    object cdsCadastroCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object cdsCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCadastroTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      FixedChar = True
      Size = 15
    end
    object cdsCadastroCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsCadastroSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
  end
  inherited dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
  end
  inherited sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select CODIGO, NOME, TELEFONE, CIDADE, STATUS from VCLIENTES WHE' +
      'RE NOME LIKE :NOME'
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
  end
end
