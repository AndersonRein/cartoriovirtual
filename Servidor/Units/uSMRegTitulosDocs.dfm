object smRegTitulosDocs: TsmRegTitulosDocs
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 484
  Width = 815
  object sqsCadastro: TSQLDataSet
    CommandText = 'select * from REGTITULOSDOCS where codigo =:codigo'
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
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 56
    Top = 16
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from REGTITULOSDOCS where nome like :nome'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 112
    Top = 16
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 152
    Top = 16
  end
end
