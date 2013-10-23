object smRegPessoaJuridica: TsmRegPessoaJuridica
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 528
  Width = 806
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from REGPESSOAJURIDICA WHERE CODIGO =:CODIGO'
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
    Top = 16
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqsCadastro
    Left = 64
    Top = 16
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from REGPESSOAJURIDICA WHERE NOME LIKE :NOME AND FICHA ' +
      'LIKE :NOME'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 64
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 64
    Top = 64
  end
  object sqsICadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from IREGPESSOAJURIDICA WHERE REGPESSOAJURIDICA =:PESSO' +
      'A'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PESSOA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 112
    Top = 16
  end
  object dspICadastro: TDataSetProvider
    DataSet = sqsICadastro
    Left = 144
    Top = 16
  end
  object sqsProtocolo: TSQLDataSet
    CommandText = 'SELECT * FROM VPROTOCOLOPJ ORDER BY ORDEM'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection
    Left = 128
    Top = 72
  end
  object dspProtocolo: TDataSetProvider
    DataSet = sqsProtocolo
    Left = 160
    Top = 72
  end
end
