object smMotivoProtesto: TsmMotivoProtesto
  OldCreateOrder = False
  Height = 454
  Width = 600
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from MOTIVOPROTESTO WHERE CODIGO =:CODIGO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 32
    Top = 24
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM VMOTIVOPROTESTO WHERE (NOME LIKE :NOME) OR (SIGLA ' +
      'LIKE :NOME)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 32
    Top = 80
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 72
    Top = 24
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 72
    Top = 80
  end
end
