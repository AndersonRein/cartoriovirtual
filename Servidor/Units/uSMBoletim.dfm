object smBoletim: TsmBoletim
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 380
  Width = 618
  object sqsCadastro: TSQLDataSet
    CommandText = 'select * from BOLETIM where codigo =:codigo'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 16
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from VBOLETIM where codigo like :nome'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 128
    Top = 16
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 56
    Top = 16
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 160
    Top = 16
  end
  object sqsLancBoletim: TSQLDataSet
    CommandText = 'select * from LANCBOLEINDIVIDUAL WHERE CODIGO =:CODIGO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 72
  end
  object dspLancBoletim: TDataSetProvider
    DataSet = sqsLancBoletim
    Left = 56
    Top = 72
  end
  object dspItensBoletim: TDataSetProvider
    DataSet = sqsItenBoletim
    Left = 166
    Top = 70
  end
  object sqsItenBoletim: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from VLANCBOLEINDIVIDUAL WHERE BOLETIM =:BOLETIM ORDER ' +
      'BY SELO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'BOLETIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 126
    Top = 70
  end
  object sqsLancItemTotal: TSQLDataSet
    CommandText = 'select * from LANCBOLETIMTOTAL where codigo =:codigo'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 248
    Top = 16
  end
  object dspLancItemTotal: TDataSetProvider
    DataSet = sqsLancItemTotal
    Left = 288
    Top = 16
  end
  object dspConsItemTotal: TDataSetProvider
    DataSet = sqsConsItemTotal
    Left = 288
    Top = 72
  end
  object sqsConsItemTotal: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from VLANCBOLETIMTOTAL where boletim =:boletim ORDER BY' +
      ' SELOINI'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'boletim'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 248
    Top = 72
  end
  object sqsRelCaixaIndivDiario: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from VCAIXABOLINDIVIDUAL WHERE DATAATO =:DATA ORDER BY ' +
      'DATAATO, SELO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 128
  end
  object dspRelCaixaIndivDiario: TDataSetProvider
    DataSet = sqsRelCaixaIndivDiario
    Left = 56
    Top = 128
  end
  object sqsRelCaixaTotalDiario: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from VCAIXABOLETIMTOTAL WHERE DATAATO =:DATA ORDER BY D' +
      'ATAATO, SELOINI'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 128
    Top = 128
  end
  object dspRelCaixaTotalDiario: TDataSetProvider
    DataSet = sqsRelCaixaTotalDiario
    Left = 168
    Top = 128
  end
  object sqsRelCaixaIndSemana: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from VCAIXABOLINDIVIDUAL WHERE DATAATO BETWEEN :INI AND' +
      ' :FIM ORDER BY DATAATO, SELO'
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
    Left = 256
    Top = 136
  end
  object dspRelCaixaIndSemana: TDataSetProvider
    DataSet = sqsRelCaixaIndSemana
    Left = 296
    Top = 136
  end
  object sqsRelCaixaTotalSemana: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from VCAIXABOLETIMTOTAL WHERE DATAATO BETWEEN :INI AND ' +
      ':FIM ORDER BY DATAATO, SELOINI'
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
    Left = 368
    Top = 16
  end
  object dspRelCaixaTotalSemana: TDataSetProvider
    DataSet = sqsRelCaixaTotalSemana
    Left = 416
    Top = 16
  end
end
