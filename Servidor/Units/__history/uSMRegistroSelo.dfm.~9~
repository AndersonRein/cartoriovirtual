object smRegistroSelo: TsmRegistroSelo
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 487
  Width = 834
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from REGISTROSELO where codigo =:codigo'
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
    Top = 24
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 80
    Top = 24
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 200
    Top = 24
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from VREGISTROSELO where kitselo like :nome'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 168
    Top = 24
  end
  object sqsKitSelo: TSQLDataSet
    CommandText = 'select * from KITSELO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection
    Left = 32
    Top = 80
  end
  object dspKitSelo: TDataSetProvider
    DataSet = sqsKitSelo
    Left = 80
    Top = 80
  end
end
