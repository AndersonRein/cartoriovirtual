object smLancDespesas: TsmLancDespesas
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 359
  Width = 494
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from LANCDESPESAS where codigo =:codigo'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 32
    Top = 8
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 72
    Top = 8
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 168
    Top = 8
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM VLANCDESPESAS WHERE DATA BETWEEN :INI AND :FIM AND' +
      ' (SUBGRUPODESPSA LIKE :NOME OR GRUPODESPESA LIKE :NOME) ORDER BY' +
      ' DATA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 136
    Top = 8
  end
  object sqsRelCaixaFerjInd: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM VLANCDESPESAS WHERE DATA =:DATA AND CARNELEAO = 40' +
      '00 ORDER BY DATA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 32
    Top = 64
  end
  object dspRelCaixaFerjInd: TDataSetProvider
    DataSet = sqsRelCaixaFerjInd
    Left = 80
    Top = 64
  end
  object sqsRelCaixaFerjSemana: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM VLANCDESPESAS WHERE DATA BETWEEN :INI AND :FIM AND' +
      ' CARNELEAO = 4000 ORDER BY DATA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 144
    Top = 96
  end
  object dspRelCaixaFerjSemana: TDataSetProvider
    DataSet = sqsRelCaixaFerjSemana
    Left = 192
    Top = 104
  end
  object sqsRelCaixaGeral: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM VLANCDESPESAS WHERE DATA BETWEEN :INI AND :FIM  OR' +
      'DER BY DATA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 232
    Top = 32
  end
  object dspRelCaixaGeral: TDataSetProvider
    DataSet = sqsRelCaixaGeral
    Left = 280
    Top = 40
  end
end
