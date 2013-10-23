object smTipoSelo: TsmTipoSelo
  OldCreateOrder = False
  Height = 528
  Width = 859
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from TIPOSELO where codigo =:codigo'
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
    Top = 24
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 62
    Top = 24
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from TIPOSELO where nome like :nome'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 136
    Top = 32
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 176
    Top = 32
  end
  object sqsConsLanc: TSQLDataSet
    CommandText = 'select * from TIPOSELO where TIPO <= :TIPO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 88
  end
  object dspConsLanc: TDataSetProvider
    DataSet = sqsConsLanc
    Left = 64
    Top = 88
  end
end
