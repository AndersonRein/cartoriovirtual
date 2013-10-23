unit uServerContainer;

interface

uses System.SysUtils, System.Classes, System.inifiles,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSAuth, IndyPeerImpl;

type
  TServerContainer = class(TDataModule)
    scServerMethods: TDSServerClass;
    scFuncionarios: TDSServerClass;
    scUsuarios: TDSServerClass;
    scBusca: TDSServerClass;
    scAutografos: TDSServerClass;
    scEmpresa: TDSServerClass;
    scProtesto: TDSServerClass;
    scTitulos: TDSServerClass;
    scTransacao: TDSServerClass;
    scProtocolos: TDSServerClass;
    scIntimacao: TDSServerClass;
    TCPServerTransport: TDSTCPServerTransport;
    Server: TDSServer;
    scRegistroCivil: TDSServerClass;
    scMotivosProtesto: TDSServerClass;
    scOcorrencia: TDSServerClass;
    scEmolumentos: TDSServerClass;
    scCaixaTabNotas: TDSServerClass;
    scKitSelo: TDSServerClass;
    scRegistroSelo: TDSServerClass;
    scRegBoleto: TDSServerClass;
    scBoletim: TDSServerClass;
    scTipoSelo: TDSServerClass;
    scGrupoDespesas: TDSServerClass;
    scSubGrupoDespesas: TDSServerClass;
    scLancDespesas: TDSServerClass;
    scFormaPagamento: TDSServerClass;
    scRegPessoaJuridica: TDSServerClass;
    scRegTitulosDocs: TDSServerClass;
    procedure scServerMethodsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scFuncionariosGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scUsuariosGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DataModuleCreate(Sender: TObject);
    procedure scBuscaGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scAutografosGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scEmpresaGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scProtestoGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scTitulosGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scTransacaoGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scProtocolosGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scIntimacaoGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scRegistroCivilGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scMotivosProtestoGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scOcorrenciaGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scEmolumentosGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scCaixaTabNotasGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scKitSeloGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scRegistroSeloGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scRegBoletoGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scBoletimGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scTipoSeloGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scGrupoDespesasGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scSubGrupoDespesasGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scLancDespesasGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scFormaPagamentoGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scRegPessoaJuridicaGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure scRegTitulosDocsGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    { Private declarations }
    procedure setConfiguracao();
  public
  end;

var
  ServerContainer: TServerContainer;

implementation

uses Winapi.Windows, uServerMethods, uSMFuncionario, uSMUsuario, uSMBusca,
  uSMAutografos, uSMEmpresa, uSMProtesto, uSMTitulos, uSMTrasacoes,
  uSMProtocolo, uSMIntimacao, uSMRegistroCivil, uSMMotivoProtesto, uOcorrencias,
  uSMEmolumentos, uSMCaixaTabNotas, uSMKitSelo, uSMRegistroSelo, uSMRegBoletos,
  uSMBoletim, uSMTipoSelo, uSMGrupoDespesas, uSubGrupoDespesas, uSMLancDespesas,
  uSMFormaPagamento, uSMRegPessoaJuridica, uSMRegTitulosDocs;

{$R *.dfm}

procedure TServerContainer.DataModuleCreate(Sender: TObject);
begin
setConfiguracao;
end;

procedure TServerContainer.scAutografosGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
 PersistentClass := uSMAutografos.TsmAutografos;
end;

procedure TServerContainer.scBoletimGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
 PersistentClass := uSMBoletim.TsmBoletim;
end;

procedure TServerContainer.scBuscaGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMBusca.TsmBusca;
end;

procedure TServerContainer.scCaixaTabNotasGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMCaixaTabNotas.TsmCaixaTabNotas;
end;

procedure TServerContainer.scEmolumentosGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMEmolumentos.TsmEmolumentos;
end;

procedure TServerContainer.scEmpresaGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMEmpresa.TsmEmpresa;
end;

procedure TServerContainer.scFormaPagamentoGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
 PersistentClass := uSMFormaPagamento.TsmFormaPagamento;
end;

procedure TServerContainer.scFuncionariosGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMFuncionario.TsmFuncionario;
end;

procedure TServerContainer.scGrupoDespesasGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMGrupoDespesas.TsmGrupoDespesas;
end;

procedure TServerContainer.scIntimacaoGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMIntimacao.TsmIntimacao;
end;

procedure TServerContainer.scKitSeloGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMKitSelo.TsmKitSelo;
end;

procedure TServerContainer.scLancDespesasGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMLancDespesas.TsmLancDespesas;
end;

procedure TServerContainer.scMotivosProtestoGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
 PersistentClass := uSMMotivoProtesto.TsmMotivoProtesto;
end;

procedure TServerContainer.scOcorrenciaGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
 PersistentClass := uOcorrencias.TsmOcorrencias;
end;

procedure TServerContainer.scProtestoGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
 PersistentClass := uSMProtesto.TsmProtesto;
end;

procedure TServerContainer.scProtocolosGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMProtocolo.TsmProtocolo;
end;

procedure TServerContainer.scRegBoletoGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMRegBoletos.TsmRegBoletos;
end;

procedure TServerContainer.scRegistroCivilGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMRegistroCivil.TsmRegistroCivil;
end;

procedure TServerContainer.scRegistroSeloGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMRegistroSelo.TsmRegistroSelo;
end;

procedure TServerContainer.scRegPessoaJuridicaGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMRegPessoaJuridica.TsmRegPessoaJuridica;
end;

procedure TServerContainer.scRegTitulosDocsGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMRegTitulosDocs.TsmRegTitulosDocs;
end;

procedure TServerContainer.scServerMethodsGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := uServerMethods.TServerMethods;
end;


procedure TServerContainer.scSubGrupoDespesasGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
PersistentClass := uSubGrupoDespesas.TsmSubGrupoDespesas;
end;

procedure TServerContainer.scTipoSeloGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMTipoSelo.TsmTipoSelo;
end;

procedure TServerContainer.scTitulosGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMTitulos.TsmTitulos;
end;

procedure TServerContainer.scTransacaoGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMTrasacoes.TsmTrasacoes;
end;

procedure TServerContainer.scUsuariosGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
PersistentClass := uSMUsuario.TsmUsuario;
end;

procedure TServerContainer.setConfiguracao;
var
  arq: TMEMInifile;
begin
  arq := TMEMInifile.Create('CONFIG\CONFIG.ini');
  if FileExists('CONFIG\CONFIG.ini') then
  begin
    with arq do
      begin
        TCPServerTransport.BufferKBSize := ReadInteger('SERVIDOR','BUFFERKBSIZE',32);
        TCPServerTransport.Port := ReadInteger('SERVIDOR','PORTA',211);
      end;
   arq.Free;
  end;
end;

end.

