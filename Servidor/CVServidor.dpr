program CVServidor;

uses
  Vcl.Forms,
  uPrincipal in 'Units\uPrincipal.pas' {FPrincipal},
  uServerMethods in 'Units\uServerMethods.pas' {ServerMethods: TDataModule},
  uServerContainer in 'Units\uServerContainer.pas' {ServerContainer: TDataModule},
  uDM in 'Units\uDM.pas' {DM: TDataModule},
  uSMFuncionario in 'Units\uSMFuncionario.pas' {smFuncionario: TDSServerModule},
  uSMUsuario in 'Units\uSMUsuario.pas' {smUsuario: TDSServerModule},
  uSMBusca in 'Units\uSMBusca.pas' {smBusca: TDSServerModule},
  uTUsuario in 'Units\uTUsuario.pas',
  uTFuncionario in 'Units\uTFuncionario.pas',
  uTCidade in 'Units\uTCidade.pas',
  uSMAutografos in 'Units\uSMAutografos.pas' {smAutografos: TDSServerModule},
  uTAutografos in 'Units\uTAutografos.pas',
  uSMEmpresa in 'Units\uSMEmpresa.pas' {smEmpresa: TDSServerModule},
  uTEmpresa in 'Units\uTEmpresa.pas',
  uSMProtesto in 'Units\uSMProtesto.pas' {smProtesto: TDSServerModule},
  uSMTitulos in 'Units\uSMTitulos.pas' {smTitulos: TDSServerModule},
  uTTitulos in 'Units\uTTitulos.pas',
  uTProtesto in 'Units\uTProtesto.pas',
  uTTransacoes in 'Units\uTTransacoes.pas',
  uSMTrasacoes in 'Units\uSMTrasacoes.pas' {smTrasacoes: TDSServerModule},
  uTProtocolo in 'Units\uTProtocolo.pas',
  uSMProtocolo in 'Units\uSMProtocolo.pas' {smProtocolo: TDSServerModule},
  uSMIntimacao in 'Units\uSMIntimacao.pas' {smIntimacao: TDSServerModule},
  uTIntimacao in 'Units\uTIntimacao.pas',
  uSMCertidao in 'Units\uSMCertidao.pas' {smCertidao: TDSServerModule},
  uSMRegistroCivil in 'Units\uSMRegistroCivil.pas' {smRegistroCivil: TDSServerModule},
  uTRegistroCivil in 'Units\uTRegistroCivil.pas',
  uSMMotivoProtesto in 'Units\uSMMotivoProtesto.pas' {smMotivoProtesto: TDSServerModule},
  uTMotivoProtesto in 'Units\uTMotivoProtesto.pas',
  uOcorrencias in 'Units\uOcorrencias.pas' {smOcorrencias: TDSServerModule},
  uTOcorrencia in 'Units\uTOcorrencia.pas',
  uTSThread in 'Units\uTSThread.pas',
  uSMFeriados in 'Units\uSMFeriados.pas' {smFeriados: TDSServerModule},
  uTCalendario in 'Units\uTCalendario.pas',
  uSMEmolumentos in 'Units\uSMEmolumentos.pas' {smEmolumentos: TDSServerModule},
  uTEmolumentos in 'Units\uTEmolumentos.pas',
  uSMCaixaTabNotas in 'Units\uSMCaixaTabNotas.pas' {smCaixaTabNotas: TDSServerModule},
  uSMKitSelo in 'Units\uSMKitSelo.pas' {smKitSelo: TDSServerModule},
  uTKitSelo in 'Units\uTKitSelo.pas',
  uSMRegistroSelo in 'Units\uSMRegistroSelo.pas' {smRegistroSelo: TDSServerModule},
  uTRegistroSelo in 'Units\uTRegistroSelo.pas',
  uSMRegBoletos in 'Units\uSMRegBoletos.pas' {smRegBoletos: TDSServerModule},
  uTRegBoleto in 'Units\uTRegBoleto.pas',
  uSMBoletim in 'Units\uSMBoletim.pas' {smBoletim: TDSServerModule},
  uTBoletim in 'Units\uTBoletim.pas',
  uSMTipoSelo in 'Units\uSMTipoSelo.pas' {smTipoSelo: TDSServerModule},
  uBackup in 'Units\uBackup.pas',
  uPadraoVazio in 'Units\uPadraoVazio.pas' {FPadraoVazio},
  uTConfiguracoes in 'Units\uTConfiguracoes.pas',
  uSMGrupoDespesas in 'Units\uSMGrupoDespesas.pas' {smGrupoDespesas: TDSServerModule},
  uTGrupoDespesa in 'Units\uTGrupoDespesa.pas',
  uSubGrupoDespesas in 'Units\uSubGrupoDespesas.pas' {smSubGrupoDespesas: TDSServerModule},
  uTSubGrupoDespesa in 'Units\uTSubGrupoDespesa.pas',
  uSMLancDespesas in 'Units\uSMLancDespesas.pas' {smLancDespesas: TDSServerModule},
  uTDespesas in 'Units\uTDespesas.pas',
  uSMFormaPagamento in 'Units\uSMFormaPagamento.pas' {smFormaPagamento: TDSServerModule},
  uTFormasPagamento in 'Units\uTFormasPagamento.pas',
  uSMRegPessoaJuridica in 'Units\uSMRegPessoaJuridica.pas' {smRegPessoaJuridica: TDSServerModule},
  uTRegPessoaJuridica in 'Units\uTRegPessoaJuridica.pas',
  uSMRegTitulosDocs in 'Units\uSMRegTitulosDocs.pas' {smRegTitulosDocs: TDSServerModule},
  uTRegTitulosDocs in 'Units\uTRegTitulosDocs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.

