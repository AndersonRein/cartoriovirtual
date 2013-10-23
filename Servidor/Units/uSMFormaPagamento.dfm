object smFormaPagamento: TsmFormaPagamento
  OldCreateOrder = False
  Height = 381
  Width = 722
  object sqsCadastro: TSQLDataSet
    CommandText = 'select * from FORMAPAGAMENTO where codigo =:codigo'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 40
    Top = 16
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from VFORMAPAGAMENTO WHERE NOME LIKE :NOME'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 184
    Top = 24
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 72
    Top = 16
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 224
    Top = 24
  end
end
