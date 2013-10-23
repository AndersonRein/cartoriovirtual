object smCaixaTabNotas: TsmCaixaTabNotas
  OldCreateOrder = False
  Height = 517
  Width = 812
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CAIXATABNOTAS where codigo =:codigo'
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
    Top = 16
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 72
    Top = 16
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from VCAIXATABNOTAS WHERE (CLIENTE LIKE :NOME) OR (LEI ' +
      'LIKE :NOME)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
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
    Left = 32
    Top = 72
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 72
    Top = 72
  end
  object sqsExportar: TSQLDataSet
    CommandText = 'select * from VCAIXATABNOTAS WHERE DATA BETWEEN :INI AND :FIM'
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
    Top = 16
  end
  object dspExportar: TDataSetProvider
    DataSet = sqsExportar
    Left = 184
    Top = 16
  end
end
