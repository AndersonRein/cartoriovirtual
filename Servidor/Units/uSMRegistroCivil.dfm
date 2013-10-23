object smRegistroCivil: TsmRegistroCivil
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 425
  Width = 639
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from REGISTROCIVIL WHERE CODIGO =:CODIGO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 16
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from VREGISTROCIVIL where nome like :nome'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 16
    Top = 88
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 64
    Top = 16
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 56
    Top = 88
  end
  object sqsExportar: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from AUTOGRAFOS WHERE CODIGO =:CODIGO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 136
    Top = 16
  end
  object dspExportar: TDataSetProvider
    DataSet = sqsExportar
    Left = 192
    Top = 16
  end
end
