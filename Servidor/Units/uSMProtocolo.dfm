object smProtocolo: TsmProtocolo
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 513
  Width = 791
  object sqsConsulta: TSQLDataSet
    CommandText = 'SELECT * FROM VPROTOCOLO ORDER BY DATA, SEQ, CODIGO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection
    Left = 104
    Top = 72
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 136
    Top = 72
  end
end
