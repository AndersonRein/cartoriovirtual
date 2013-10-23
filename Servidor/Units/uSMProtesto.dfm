object smProtesto: TsmProtesto
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 443
  Width = 650
  object sqsCadastro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CADPROTESTO where codigo =:codigo'
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
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 16
  end
  object sqsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from VCADPROTESTO where CADASTRO BETWEEN :INI AND :FIM ' +
      'AND ( (APRESENTANTE LIKE :APRESENTANTE) OR (DEVEDOR LIKE :DEVEDO' +
      'R) OR (NUMTITULO LIKE :TITULO)) ORDER BY CADASTRO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'APRESENTANTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DEVEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 72
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqsConsulta
    Left = 72
    Top = 72
  end
  object sqsGetProtesto: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT'#13#10'  CADPROTESTO.CODIGO,'#13#10'  CADPROTESTO.APRESENTANTE AS COD' +
      'APRESENTATE,'#13#10'  VREGISTROCIVIL.NOME AS APRESENTANTE,'#13#10'  VREGISTR' +
      'OCIVIL.ENDERECO,'#13#10'  VREGISTROCIVIL.NUMERO,'#13#10'  VREGISTROCIVIL.BAI' +
      'RRO,'#13#10'  VREGISTROCIVIL.CIDADE,'#13#10'  VREGISTROCIVIL.UF,'#13#10'  VREGISTR' +
      'OCIVIL.CPF_CNPJ,'#13#10'  VREGISTROCIVIL.TELEFONE,'#13#10'  VREGISTROCIVIL.C' +
      'ELULAR,'#13#10'  CADPROTESTO.DEVEDOR AS CODDEVEDOR,'#13#10'  (SELECT VREGIST' +
      'ROCIVIL.NOME FROM VREGISTROCIVIL WHERE VREGISTROCIVIL.CODIGO = C' +
      'ADPROTESTO.DEVEDOR) AS DEVEDOR,'#13#10'  (SELECT VREGISTROCIVIL.ENDERE' +
      'CO FROM VREGISTROCIVIL WHERE VREGISTROCIVIL.CODIGO = CADPROTESTO' +
      '.DEVEDOR) AS ENDERECODEV,'#13#10'  (SELECT VREGISTROCIVIL.NUMERO FROM ' +
      'VREGISTROCIVIL WHERE VREGISTROCIVIL.CODIGO = CADPROTESTO.DEVEDOR' +
      ') AS NUMERODEV,'#13#10'  (SELECT VREGISTROCIVIL.BAIRRO FROM VREGISTROC' +
      'IVIL WHERE VREGISTROCIVIL.CODIGO = CADPROTESTO.DEVEDOR) AS BAIRR' +
      'ODEV,'#13#10'  (SELECT VREGISTROCIVIL.CIDADE FROM VREGISTROCIVIL WHERE' +
      ' VREGISTROCIVIL.CODIGO = CADPROTESTO.DEVEDOR) AS CIDADEDEV,'#13#10'  (' +
      'SELECT VREGISTROCIVIL.UF FROM VREGISTROCIVIL WHERE VREGISTROCIVI' +
      'L.CODIGO = CADPROTESTO.DEVEDOR) AS UFDEV,'#13#10'  (SELECT VREGISTROCI' +
      'VIL.CPF_CNPJ FROM VREGISTROCIVIL WHERE VREGISTROCIVIL.CODIGO = C' +
      'ADPROTESTO.DEVEDOR) AS CPF_CNPJDEV,'#13#10'  (SELECT VREGISTROCIVIL.TE' +
      'LEFONE FROM VREGISTROCIVIL WHERE VREGISTROCIVIL.CODIGO = CADPROT' +
      'ESTO.DEVEDOR) AS TELEFONEDEV,'#13#10'  (SELECT VREGISTROCIVIL.CELULAR ' +
      'FROM VREGISTROCIVIL WHERE VREGISTROCIVIL.CODIGO = CADPROTESTO.DE' +
      'VEDOR) AS CELULARDEV,'#13#10'  CADPROTESTO.PROTOCOLO,'#13#10'  PROTESTO.SELO' +
      ','#13#10'  CADPROTESTO.VALORPROTESTO,'#13#10'  CADPROTESTO.VENCIMENTO,'#13#10'  CA' +
      'DPROTESTO.MOTIVOPROTESTO AS CODMOVITOPROTESTO,'#13#10'  MOTIVOPROTESTO' +
      '.NOME AS MOTIVOPROTESTO,'#13#10'  CADPROTESTO.NUMTITULO,'#13#10'  CADPROTEST' +
      'O.CADASTRO,'#13#10'  CADPROTESTO.EDITAL,'#13#10'  PROTESTO.CODIGO as PROTEST' +
      'O,'#13#10'  TITULOS.NOME AS TITULO,'#13#10'  CASE PROTESTO.ACEITE WHEN 0 THE' +
      'N '#39'SIM'#39#13#10'                       WHEN 1 THEN '#39'NAO'#39' END AS ACEITE'#13 +
      #10'  FROM CADPROTESTO'#13#10'  INNER JOIN VREGISTROCIVIL ON (VREGISTROCI' +
      'VIL.CODIGO = CADPROTESTO.APRESENTANTE)'#13#10'  INNER JOIN PROTESTO ON' +
      ' (PROTESTO.CADPROTESTO = CADPROTESTO.CODIGO)'#13#10'  INNER JOIN TITUL' +
      'OS ON (TITULOS.CODIGO = CADPROTESTO.TITULO)'#13#10'  LEFT OUTER JOIN M' +
      'OTIVOPROTESTO ON (MOTIVOPROTESTO.CODIGO = CADPROTESTO.MOTIVOPROT' +
      'ESTO)'#13#10'  WHERE CADPROTESTO.CODIGO =:PROTESTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PROTESTO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 120
  end
  object dspGetProtesto: TDataSetProvider
    DataSet = sqsGetProtesto
    Left = 72
    Top = 120
  end
  object sqsIntimacaoSemConclusao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM VINTIMACAO WHERE CONCLUSAO IS NULL ORDER BY DATA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection
    Left = 176
    Top = 16
  end
  object dspIntimacaoSemConclusao: TDataSetProvider
    DataSet = sqsIntimacaoSemConclusao
    Left = 216
    Top = 16
  end
  object sqsConsCND: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM VCNDPROTESTO WHERE AUTOGRAFO =:AUTOGRAFO AND DATA ' +
      'BETWEEN :INI AND :FIM'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'AUTOGRAFO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 168
    Top = 72
  end
  object dspConsCND: TDataSetProvider
    DataSet = sqsConsCND
    Left = 208
    Top = 72
  end
  object dspCadCND: TDataSetProvider
    DataSet = sqsCadCND
    Left = 208
    Top = 128
  end
  object sqsCadCND: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CNDPROTESTO where codigo =:codigo'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 168
    Top = 128
  end
  object sqsProtestosCadastrados: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM VCADPROTESTO WHERE CODSTATUS = 0 ORDER BY CADASTRO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection
    Left = 24
    Top = 176
  end
  object dspProtestosCadastrados: TDataSetProvider
    DataSet = sqsProtestosCadastrados
    Left = 72
    Top = 176
  end
  object sqsExportSerasa: TSQLDataSet
    CommandText = 
      'SELECT * FROM VPROTESTO WHERE DATA BETWEEN :INI AND :FIM ORDER B' +
      'Y DATA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 168
    Top = 176
  end
  object dspExporSerasa: TDataSetProvider
    DataSet = sqsExportSerasa
    Left = 208
    Top = 176
  end
  object sqsIndeceProtesto: TSQLDataSet
    CommandText = 'SELECT * FROM VINDECEPROTESTO ORDER BY FOLHA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection
    Left = 312
    Top = 8
  end
  object dspIndeceProtesto: TDataSetProvider
    DataSet = sqsIndeceProtesto
    Left = 352
    Top = 8
  end
end
