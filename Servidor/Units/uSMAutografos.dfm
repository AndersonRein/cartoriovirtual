object smAutografos: TsmAutografos
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 408
  Width = 627
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from AUTOGRAFOS where codigo =:codigo'
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
    CommandText = 'select CODIGO, NOME, SEQ from VAUTOGRAFOS where nome like :nome'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 40
    Top = 72
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 96
    Top = 16
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 96
    Top = 72
  end
  object sqsImpressao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from VAUTOGRAFOS where codigo =:codigo'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 176
    Top = 16
  end
  object dspImpressao: TDataSetProvider
    DataSet = sqsImpressao
    Left = 208
    Top = 16
  end
end
