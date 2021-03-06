object smKitSelo: TsmKitSelo
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 482
  Width = 819
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 43
    Top = 16
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 160
    Top = 16
  end
  object sqsCadastro: TSQLDataSet
    CommandText = 'select * from KITSELO WHERE CODIGO =:CODIGO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 12
    Top = 16
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from KITSELO WHERE NOME LIKE :NOME'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 128
    Top = 17
  end
end
