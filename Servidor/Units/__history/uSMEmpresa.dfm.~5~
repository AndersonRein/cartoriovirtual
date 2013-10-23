object smEmpresa: TsmEmpresa
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 402
  Width = 517
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CARTORIO where codigo =:codigo'
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
    Top = 32
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 80
    Top = 32
  end
end
