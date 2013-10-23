object ServerContainer: TServerContainer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 560
  Width = 844
  object scServerMethods: TDSServerClass
    OnGetClass = scServerMethodsGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 112
    Top = 11
  end
  object scFuncionarios: TDSServerClass
    OnGetClass = scFuncionariosGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 40
    Top = 120
  end
  object scUsuarios: TDSServerClass
    OnGetClass = scUsuariosGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 40
    Top = 168
  end
  object scBusca: TDSServerClass
    OnGetClass = scBuscaGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 40
    Top = 216
  end
  object scAutografos: TDSServerClass
    OnGetClass = scAutografosGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 120
    Top = 80
  end
  object scEmpresa: TDSServerClass
    OnGetClass = scEmpresaGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 120
    Top = 144
  end
  object scProtesto: TDSServerClass
    OnGetClass = scProtestoGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 120
    Top = 208
  end
  object scTitulos: TDSServerClass
    OnGetClass = scTitulosGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 40
    Top = 272
  end
  object scTransacao: TDSServerClass
    OnGetClass = scTransacaoGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 120
    Top = 264
  end
  object scProtocolos: TDSServerClass
    OnGetClass = scProtocolosGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 120
    Top = 326
  end
  object scIntimacao: TDSServerClass
    OnGetClass = scIntimacaoGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 40
    Top = 328
  end
  object TCPServerTransport: TDSTCPServerTransport
    Server = Server
    BufferKBSize = 32
    Filters = <>
    KeepAliveEnablement = kaDefault
    Left = 40
    Top = 72
  end
  object Server: TDSServer
    AutoStart = True
    HideDSAdmin = False
    Left = 40
    Top = 16
  end
  object scRegistroCivil: TDSServerClass
    OnGetClass = scRegistroCivilGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 192
    Top = 16
  end
  object scMotivosProtesto: TDSServerClass
    OnGetClass = scMotivosProtestoGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 192
    Top = 80
  end
  object scOcorrencia: TDSServerClass
    OnGetClass = scOcorrenciaGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 192
    Top = 144
  end
  object scEmolumentos: TDSServerClass
    OnGetClass = scEmolumentosGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 192
    Top = 208
  end
  object scCaixaTabNotas: TDSServerClass
    OnGetClass = scCaixaTabNotasGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 192
    Top = 264
  end
  object scKitSelo: TDSServerClass
    OnGetClass = scKitSeloGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 190
    Top = 327
  end
  object scRegistroSelo: TDSServerClass
    OnGetClass = scRegistroSeloGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 40
    Top = 384
  end
  object scRegBoleto: TDSServerClass
    OnGetClass = scRegBoletoGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 120
    Top = 384
  end
  object scBoletim: TDSServerClass
    OnGetClass = scBoletimGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 194
    Top = 384
  end
  object scTipoSelo: TDSServerClass
    OnGetClass = scTipoSeloGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 272
    Top = 16
  end
  object scGrupoDespesas: TDSServerClass
    OnGetClass = scGrupoDespesasGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 272
    Top = 80
  end
  object scSubGrupoDespesas: TDSServerClass
    OnGetClass = scSubGrupoDespesasGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 272
    Top = 144
  end
  object scLancDespesas: TDSServerClass
    OnGetClass = scLancDespesasGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 272
    Top = 208
  end
  object scFormaPagamento: TDSServerClass
    OnGetClass = scFormaPagamentoGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 267
    Top = 264
  end
  object scRegPessoaJuridica: TDSServerClass
    OnGetClass = scRegPessoaJuridicaGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 264
    Top = 320
  end
  object scRegTitulosDocs: TDSServerClass
    OnGetClass = scRegTitulosDocsGetClass
    Server = Server
    LifeCycle = 'Session'
    Left = 264
    Top = 384
  end
end
