object smRegBoletos: TsmRegBoletos
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 442
  Width = 796
  object sqsCadastro: TSQLDataSet
    CommandText = 'select * from REGBOLETO WHERE CODIGO =:CODIGO'
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
    Top = 24
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 64
    Top = 24
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from VREGBOLETO WHERE TIPOBOLETO LIKE :NOME'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 136
    Top = 24
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 168
    Top = 24
  end
end
