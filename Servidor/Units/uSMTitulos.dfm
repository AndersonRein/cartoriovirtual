object smTitulos: TsmTitulos
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 450
  Width = 685
  object sqsCadastro: TSQLDataSet
    CommandText = 'select * from TITULOS where codigo =:codigo'
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
    Top = 40
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 80
    Top = 40
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 80
    Top = 88
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from TITULOS where (nome like :nome) or (sigla like :no' +
      'me)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 40
    Top = 88
  end
end
