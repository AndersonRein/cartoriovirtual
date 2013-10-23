object smFuncionario: TsmFuncionario
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 532
  Width = 634
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from FUNCIONARIOS where codigo =:codigo'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 48
    Top = 32
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 96
    Top = 32
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 96
    Top = 88
  end
  object sqsConsulta: TSQLDataSet
    CommandText = 'select * from VFUNCIONARIOS WHERE NOME LIKE :NOME'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 48
    Top = 88
  end
end
