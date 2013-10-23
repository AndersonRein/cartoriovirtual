object smBusca: TsmBusca
  OldCreateOrder = False
  Height = 367
  Width = 481
  object dspBusca: TDataSetProvider
    DataSet = sqsBusca
    Left = 88
    Top = 24
  end
  object sqsBusca: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection
    Left = 32
    Top = 16
  end
end
