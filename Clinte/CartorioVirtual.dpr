program CartorioVirtual;

uses
  Forms,
  uPrincipal in 'Units\uPrincipal.pas' {FPrincipal},
  uDM in 'Units\uDM.pas' {DM: TDataModule},
  uCadastroPadrao in 'Units\uCadastroPadrao.pas' {FCadastroPadrao},
  uAcessoPadrao in 'Units\uAcessoPadrao.pas' {FAcessoCadPadrao},
  uPadrao in 'Units\uPadrao.pas',
  uPadraoVazio in 'Units\uPadraoVazio.pas' {FPadraoVazio},
  uBusca in 'Units\uBusca.pas' {FBusca},
  uEmpresa in 'Units\uEmpresa.pas' {FCadEmpresa},
  uRelatorioPadrao in 'Units\uRelatorioPadrao.pas' {FRelatorioPadrao},
  uTCaixa in 'Units\uTCaixa.pas',
  uSuprimento in 'Units\uSuprimento.pas' {FSuprimento},
  uTFuncionario in 'Units\uTFuncionario.pas',
  uTCidade in 'Units\uTCidade.pas',
  uFuncionario in 'Units\uFuncionario.pas' {FFuncionario},
  uCadFuncionarios in 'Units\uCadFuncionarios.pas' {FCadFuncionarios},
  uLogin in 'Units\uLogin.pas' {FLogin},
  uTUsuario in 'Units\uTUsuario.pas',
  uUsuarios in 'Units\uUsuarios.pas' {FUsuarios},
  uCadUsuarios in 'Units\uCadUsuarios.pas' {FCadUsuarios},
  uAutografos in 'Units\uAutografos.pas' {FAutografos},
  uCadAutografos in 'Units\uCadAutografos.pas' {FCadAutografos},
  uTAutografo in 'Units\uTAutografo.pas',
  uTEmpresa in 'Units\uTEmpresa.pas',
  uFProtestos in 'Units\uFProtestos.pas' {FProtestos},
  uCadProtesto in 'Units\uCadProtesto.pas' {FCadProtesto},
  uTitulos in 'Units\uTitulos.pas' {FTitulos},
  uCadTitulos in 'Units\uCadTitulos.pas' {FCadTitulos},
  uTTitulos in 'Units\uTTitulos.pas',
  uTProtesto in 'Units\uTProtesto.pas',
  uTTransacoes in 'Units\uTTransacoes.pas',
  uTData in 'Units\uTData.pas',
  uTProtocolo in 'Units\uTProtocolo.pas',
  uAvisos in 'Units\uAvisos.pas' {FAvisos},
  uTIntimacao in 'Units\uTIntimacao.pas',
  uImportImagens in 'Units\uImportImagens.pas' {FImportImagens},
  uCNDProtesto in 'Units\uCNDProtesto.pas' {FCNDProtesto},
  uCadCNDProtesto in 'Units\uCadCNDProtesto.pas' {FCadCNDProtesto},
  uImagemImp in 'Units\uImagemImp.pas' {FImagensImp},
  uRegistroCivil in 'Units\uRegistroCivil.pas' {FRegistroCivil},
  uTRegistroCivil in 'Units\uTRegistroCivil.pas',
  uCadRegistroCivil in 'Units\uCadRegistroCivil.pas' {FCadRegistroCivil},
  uMotivosProtesto in 'Units\uMotivosProtesto.pas' {FMotivosProtesto},
  uCadMotivosProtesto in 'Units\uCadMotivosProtesto.pas' {FCadMotivosProtesto},
  uTMotivoProtesto in 'Units\uTMotivoProtesto.pas',
  uOcorrencias in 'Units\uOcorrencias.pas' {FOcorrencias},
  uCadOcorrencia in 'Units\uCadOcorrencia.pas' {FCadOcorrencia},
  uTOcorrencia in 'Units\uTOcorrencia.pas',
  uIntimar in 'Units\uIntimar.pas' {FIntimar},
  uConclusaoIntimacao in 'Units\uConclusaoIntimacao.pas' {FConclusaoIntimacao},
  uEmolumentos in 'Units\uEmolumentos.pas' {FEmolumentos},
  uCadEmolumentos in 'Units\uCadEmolumentos.pas' {FCadEmolumentos},
  uTEmolumentos in 'Units\uTEmolumentos.pas',
  uCaixaTabNotas in 'Units\uCaixaTabNotas.pas' {FCaixaTabNotas},
  uLancCaixaTabNotas in 'Units\uLancCaixaTabNotas.pas' {FLancCaixaTabNotas},
  uConfigSistema in 'Units\uConfigSistema.pas' {FConfigSistema},
  uSelectDiretorio in 'Units\uSelectDiretorio.pas' {FSelectDiretorio},
  uExportTabNotas in 'Units\uExportTabNotas.pas' {FExportTabNotas},
  uKitSelos in 'Units\uKitSelos.pas' {FKitSelo},
  uCadKitSelos in 'Units\uCadKitSelos.pas' {FCadKitSelos},
  uTKitSelos in 'Units\uTKitSelos.pas',
  uRegistroSelo in 'Units\uRegistroSelo.pas' {FRegistroSelo},
  uCadRegistroSelos in 'Units\uCadRegistroSelos.pas' {FCadRegistroSelo},
  uTRegistoSelos in 'Units\uTRegistoSelos.pas',
  uRegBoletos in 'Units\uRegBoletos.pas' {FRegBoletos},
  uCadRegBoleto in 'Units\uCadRegBoleto.pas' {FCadRegBoleto},
  uTRegBoleto in 'Units\uTRegBoleto.pas',
  uSelecOcorrencia in 'Units\uSelecOcorrencia.pas' {FSelecOcorrencia},
  uBoletim in 'Units\uBoletim.pas' {FBoletim},
  uCadBoletim in 'Units\uCadBoletim.pas' {FCadBoletim},
  uTBoletim in 'Units\uTBoletim.pas',
  uLancBoletim in 'Units\uLancBoletim.pas' {FLancBoletim},
  uTExportacao in 'Units\uTExportacao.pas',
  uRelCaixa in 'Units\uRelCaixa.pas' {FRelCaixa},
  uGrupoDespesas in 'Units\uGrupoDespesas.pas' {FGrupoDespesas},
  uCadGrupoDespesas in 'Units\uCadGrupoDespesas.pas' {FCadGrupoDespesas},
  uTGrupoDespesa in 'Units\uTGrupoDespesa.pas',
  uSubGrupoDespesas in 'Units\uSubGrupoDespesas.pas' {FSubGrupoDespesas},
  uCadSubgrupoDespesas in 'Units\uCadSubgrupoDespesas.pas' {FCadSubgrupoDespesas},
  uTSubGrupoDespesa in 'Units\uTSubGrupoDespesa.pas',
  uDespesas in 'Units\uDespesas.pas' {FDespeas},
  uCadLancDespesas in 'Units\uCadLancDespesas.pas' {FCadLancDespesas},
  uTDespesas in 'Units\uTDespesas.pas',
  uRelGeralCaixa in 'Units\uRelGeralCaixa.pas' {FRelGeralCaixa},
  uFormasPagamento in 'Units\uFormasPagamento.pas' {FFormasPagamento},
  uCadFormasPagamento in 'Units\uCadFormasPagamento.pas' {FCadFormasPagamento},
  uTFormasPagamento in 'Units\uTFormasPagamento.pas',
  uRelSinteticoCaixa in 'Units\uRelSinteticoCaixa.pas' {FRelSinteticoCaixa},
  uExportSerasa in 'Units\uExportSerasa.pas' {FExportSerasa},
  uTExportSerasa in 'Units\uTExportSerasa.pas',
  uRegPessoaJuridica in 'Units\uRegPessoaJuridica.pas' {FRegPessoaJuridica},
  uCadRegPessoaJuridica in 'Units\uCadRegPessoaJuridica.pas' {FCadRegPessoaJuridica},
  uLancPessoaJuridica in 'Units\uLancPessoaJuridica.pas' {FLancPessaoJuridica},
  uInsertSeloPessoaJuri in 'Units\uInsertSeloPessoaJuri.pas' {FInsertSeloPessoaJuri},
  uRodapaRegJuridica in 'Units\uRodapaRegJuridica.pas' {FRodapeRegJuridica},
  uTRegPessoaJuridica in 'Units\uTRegPessoaJuridica.pas',
  uRegTitulosDocs in 'Units\uRegTitulosDocs.pas' {FRegTitulosDocs},
  uCadRegTitulosDocs in 'Units\uCadRegTitulosDocs.pas' {FCadRegTitulosDocs},
  uTRegTitulosDocs in 'Units\uTRegTitulosDocs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cart�rio Virtual';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
