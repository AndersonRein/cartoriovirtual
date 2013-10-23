unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ActnMan, RibbonLunaStyleActnCtrls, Ribbon, ImgList,
  ToolWin, ActnCtrls, RibbonSilverStyleActnCtrls, FMTBcd, DB, SqlExpr,
  Provider, DBClient, frxClass, frxDBSet, IniFiles, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.ActnMenus, Datasnap.DSConnect, fs_ipascal, Vcl.RibbonActnMenus,
  frxExportPDF;

type
  TFPrincipal = class(TForm)
    Ribbon1: TRibbon;
    ActionManager: TActionManager;
    ImageList: TImageList;
    RibbonPage1: TRibbonPage;
    acEmpresa: TAction;
    acFuncionarios: TAction;
    StatusBar: TStatusBar;
    TrayIcon: TTrayIcon;
    acUsuarios: TAction;
    Timer: TTimer;
    acAutografos: TAction;
    acProtesto: TAction;
    acTitulos: TAction;
    RibbonPage2: TRibbonPage;
    RibbonGroup3: TRibbonGroup;
    acProtocolo: TAction;
    dspConnection: TDSProviderConnection;
    cdsConsProtocolo: TClientDataSet;
    acCNDProtesto: TAction;
    acCadGeral: TAction;
    acMotivoProtesto: TAction;
    acOcorrencias: TAction;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    acTrocaUsuario: TAction;
    acAvisoDoDia: TAction;
    RibbonGroup1: TRibbonGroup;
    cdsConsProtocoloCODIGO: TIntegerField;
    cdsConsProtocoloCODAPRESENTANTE: TIntegerField;
    cdsConsProtocoloAPRESENTANTE: TStringField;
    cdsConsProtocoloTITULO: TStringField;
    cdsConsProtocoloVENCIMENTO: TDateField;
    cdsConsProtocoloVALORPROTESTO: TFMTBCDField;
    cdsConsProtocoloDEVEDOR: TStringField;
    cdsConsProtocoloCPF_CNPJ: TStringField;
    cdsConsProtocoloDATA: TDateField;
    cdsConsProtocoloINTIMACAO: TIntegerField;
    cdsConsProtocoloCOMPRIMENTO: TDateField;
    cdsConsProtocoloCODOCORRENCIA: TIntegerField;
    cdsConsProtocoloOCORENCIA: TStringField;
    cdsConsProtocoloSEQ: TIntegerField;
    cdsConsProtocoloFUNCAO: TStringField;
    cdsConsProtocoloFUNCIONARIO: TStringField;
    cdsConsProtocoloMOVIMENTO: TSmallintField;
    RibbonPage3: TRibbonPage;
    RibbonGroup4: TRibbonGroup;
    acEmolumentos: TAction;
    acBoletim: TAction;
    acConfigSystem: TAction;
    acKitSelos: TAction;
    acRegitroSelo: TAction;
    acRegBoletos: TAction;
    cdsConsProtocoloDATAOCORENCIA: TDateField;
    PDFExport: TfrxPDFExport;
    acCaixa: TAction;
    dbProtocolo: TfrxDBDataset;
    RibbonPage4: TRibbonPage;
    RibbonGroup5: TRibbonGroup;
    acGrupoDespesas: TAction;
    acSubGrupoDespesas: TAction;
    acLancDepesas: TAction;
    RibbonGroup6: TRibbonGroup;
    acRelCaixaGeral: TAction;
    acRelCaixaSintetico: TAction;
    acFormasPagamento: TAction;
    Protocolo: TfrxReport;
    acExportarSerasa: TAction;
    RibbonPage5: TRibbonPage;
    RibbonGroup7: TRibbonGroup;
    acRegPessoasJuridicas: TAction;
    acIndeceProtesto: TAction;
    dspProtocolo: TDSProviderConnection;
    cdsIndeceProtesto: TClientDataSet;
    cdsIndeceProtestoAPRESENTANTE: TStringField;
    cdsIndeceProtestoTITULO: TStringField;
    cdsIndeceProtestoVENCIMENTO: TDateField;
    cdsIndeceProtestoVALORPROTESTO: TFMTBCDField;
    cdsIndeceProtestoDEVEDOR: TStringField;
    cdsIndeceProtestoCPF_CNPJ: TStringField;
    cdsIndeceProtestoLIVRO: TIntegerField;
    cdsIndeceProtestoFOLHA: TIntegerField;
    cdsIndeceProtestoSITUACAO: TStringField;
    cdsIndeceProtestoSELO: TStringField;
    dbIndeceProtesto: TfrxDBDataset;
    frIndiceProtesto: TfrxReport;
    RibbonGroup8: TRibbonGroup;
    acRegImoveis: TAction;
    RibbonGroup9: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    RibbonPage6: TRibbonPage;
    RibbonPage7: TRibbonPage;
    RibbonGroup10: TRibbonGroup;
    acProtocoloPJ: TAction;
    dspPessoaJuridica: TDSProviderConnection;
    cdsProtocoloPJ: TClientDataSet;
    cdsProtocoloPJCODIGO: TIntegerField;
    cdsProtocoloPJDATA: TDateField;
    cdsProtocoloPJNOME: TStringField;
    cdsProtocoloPJFICHA: TIntegerField;
    cdsProtocoloPJNATURESA: TStringField;
    cdsProtocoloPJORDEM: TIntegerField;
    dbProtocoloPJ: TfrxDBDataset;
    frProtocoloPJ: TfrxReport;
    RibbonGroup11: TRibbonGroup;
    acRegTitulosDocumento: TAction;
    procedure acEmpresaExecute(Sender: TObject);
    procedure acFuncionariosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acUsuariosExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure acAutografosExecute(Sender: TObject);
    procedure acProtestoExecute(Sender: TObject);
    procedure acTitulosExecute(Sender: TObject);
    procedure acProtocoloExecute(Sender: TObject);
    procedure acCNDProtestoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acCadGeralExecute(Sender: TObject);
    procedure acMotivoProtestoExecute(Sender: TObject);
    procedure acOcorrenciasExecute(Sender: TObject);
    procedure acTrocaUsuarioExecute(Sender: TObject);
    procedure acAvisoDoDiaExecute(Sender: TObject);
    procedure acEmolumentosExecute(Sender: TObject);
    procedure acBoletimExecute(Sender: TObject);
    procedure acConfigSystemExecute(Sender: TObject);
    procedure acExportaFerjExecute(Sender: TObject);
    procedure acKitSelosExecute(Sender: TObject);
    procedure acRegitroSeloExecute(Sender: TObject);
    procedure acRegBoletosExecute(Sender: TObject);
    procedure acCaixaExecute(Sender: TObject);
    procedure acGrupoDespesasExecute(Sender: TObject);
    procedure acSubGrupoDespesasExecute(Sender: TObject);
    procedure acLancDepesasExecute(Sender: TObject);
    procedure acRelCaixaGeralExecute(Sender: TObject);
    procedure acFormasPagamentoExecute(Sender: TObject);
    procedure acRelCaixaSinteticoExecute(Sender: TObject);
    procedure acExportarSerasaExecute(Sender: TObject);
    procedure acRegPessoasJuridicasExecute(Sender: TObject);
    procedure acIndeceProtestoExecute(Sender: TObject);
    procedure acProtocoloPJExecute(Sender: TObject);
    procedure acRegTitulosDocumentoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses uPadrao, uEmpresa, uDM, uFuncionario, uLogin, uTUsuario,
  uUsuarios, uAutografos, uTEmpresa, uFProtestos, uTitulos, uAvisos,
  uCNDProtesto, uRegistroCivil, uMotivosProtesto, uOcorrencias, uEmolumentos,
  uCaixaTabNotas, uConfigSistema, uExportTabNotas, uKitSelos, uRegistroSelo,
  uRegBoletos, uBoletim, uSelectDiretorio, uRelCaixa, uGrupoDespesas,
  uSubGrupoDespesas, uDespesas, uRelGeralCaixa, uFormasPagamento,
  uRelSinteticoCaixa, uExportSerasa, uCadRegPessoaJuridica, uRegPessoaJuridica,
  uRegTitulosDocs;
{$R *.dfm}

procedure TFPrincipal.acAutografosExecute(Sender: TObject);
begin
TFAutografos.Create(Self).ShowModal;
end;

procedure TFPrincipal.acAvisoDoDiaExecute(Sender: TObject);
var
aviso: TFAvisos;
begin
aviso := TFAvisos.Create(nil);
aviso.buscarProtestos;
aviso.buscarIntimacao;
if (aviso.getProtestos > 0) or (aviso.getIntimacao > 0) then
  aviso.Show
else
  ShowMessage('N�o h� nem um aviso!');
end;

procedure TFPrincipal.acCNDProtestoExecute(Sender: TObject);
begin
//TFCNDProtesto.Create(Self).ShowModal;
end;

procedure TFPrincipal.acConfigSystemExecute(Sender: TObject);
begin
TFConfigSistema.Create(Self).ShowModal;
end;

procedure TFPrincipal.acEmolumentosExecute(Sender: TObject);
begin
TFEmolumentos.Create(Self).ShowModal;
end;

procedure TFPrincipal.acEmpresaExecute(Sender: TObject);
var
 empresa: TFCadEmpresa;
begin
  empresa := TFCadEmpresa.Create(nil);
  empresa.alterar(1);
  empresa.Free;
end;

procedure TFPrincipal.acExportaFerjExecute(Sender: TObject);
begin
  TFExportTabNotas.Create(Self).ShowModal;
end;

procedure TFPrincipal.acExportarSerasaExecute(Sender: TObject);
begin
TFExportSerasa.Create(Self).ShowModal;
end;

procedure TFPrincipal.acFormasPagamentoExecute(Sender: TObject);
begin
TFFormasPagamento.Create(Self).ShowModal;
end;

procedure TFPrincipal.acFuncionariosExecute(Sender: TObject);
begin
  TFFuncionario.Create(Self).ShowModal;
end;

procedure TFPrincipal.acGrupoDespesasExecute(Sender: TObject);
begin
  TFGrupoDespesas.Create(Self).ShowModal;
end;

procedure TFPrincipal.acIndeceProtestoExecute(Sender: TObject);
begin
cdsIndeceProtesto.Close;
cdsIndeceProtesto.Open;
frIndiceProtesto.ShowReport();
end;

procedure TFPrincipal.acKitSelosExecute(Sender: TObject);
begin
  TFKitSelo.Create(Self).ShowModal;
end;

procedure TFPrincipal.acLancDepesasExecute(Sender: TObject);
begin
 TFDespeas.Create(Self).ShowModal;
end;

procedure TFPrincipal.acMotivoProtestoExecute(Sender: TObject);
begin
TFMotivosProtesto.Create(Self).ShowModal;
end;

procedure TFPrincipal.acOcorrenciasExecute(Sender: TObject);
begin
TFOcorrencias.Create(Self).ShowModal;
end;

procedure TFPrincipal.acProtestoExecute(Sender: TObject);
begin
TFProtestos.Create(Self).ShowModal;
end;

procedure TFPrincipal.acProtocoloExecute(Sender: TObject);
begin
cdsConsProtocolo.Close;
cdsConsProtocolo.Open;
Protocolo.ShowReport();
end;

procedure TFPrincipal.acProtocoloPJExecute(Sender: TObject);
begin
cdsProtocoloPJ.Close;
cdsProtocoloPJ.Open;
frProtocoloPJ.ShowReport();
end;

procedure TFPrincipal.acRegBoletosExecute(Sender: TObject);
begin
TFRegBoletos.Create(Self).ShowModal;
end;

procedure TFPrincipal.acRegitroSeloExecute(Sender: TObject);
begin
TFRegistroSelo.Create(Self).ShowModal;
end;

procedure TFPrincipal.acRegPessoasJuridicasExecute(Sender: TObject);
begin
TFRegPessoaJuridica.Create(Self).ShowModal;
end;

procedure TFPrincipal.acRegTitulosDocumentoExecute(Sender: TObject);
begin
TFRegTitulosDocs.Create(Self).ShowModal;
end;

procedure TFPrincipal.acRelCaixaGeralExecute(Sender: TObject);
begin
TFRelGeralCaixa.Create(Self).ShowModal;
end;

procedure TFPrincipal.acRelCaixaSinteticoExecute(Sender: TObject);
begin
TFRelSinteticoCaixa.Create(Self).ShowModal;
end;

procedure TFPrincipal.acSubGrupoDespesasExecute(Sender: TObject);
begin
TFSubGrupoDespesas.Create(Self).ShowModal;
end;

procedure TFPrincipal.acCadGeralExecute(Sender: TObject);
begin
TFRegistroCivil.Create(Self).ShowModal;
end;

procedure TFPrincipal.acCaixaExecute(Sender: TObject);
begin
TFRelCaixa.Create(Self).ShowModal;
end;

procedure TFPrincipal.acBoletimExecute(Sender: TObject);
begin
TFBoletim.Create(Self).ShowModal;
end;

procedure TFPrincipal.acTitulosExecute(Sender: TObject);
begin
TFTitulos.Create(Self).ShowModal;
end;

procedure TFPrincipal.acTrocaUsuarioExecute(Sender: TObject);
begin
Self.OnShow(Sender);
end;

procedure TFPrincipal.acUsuariosExecute(Sender: TObject);
begin
TFUsuarios.Create(Self).ShowModal;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
    cdsConsProtocolo.Close;
    cdsProtocoloPJ.Close;
    cdsIndeceProtesto.Close;
    DM.desconectar;
 except
    Application.Terminate;
 end;
 end;

procedure TFPrincipal.FormCreate(Sender: TObject);
VAR
SELECT : TFSelectDiretorio;
begin
usuario := TUsuario.Create;
empresa := TEmpresa.Create;
SELECT := TFSelectDiretorio.Create(NIL);
config := SELECT.getDiretorio+'CONFIG\CONFIG.ini';
SELECT.Free;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
var
login: TFLogin;
aviso: TFAvisos;
begin
login := TFLogin.Create(nil);
login.ShowModal;
if not login.getLogado then
  Application.Terminate;

StatusBar.Panels[3].Text := 'Usu�rio: '+usuario.getNome;
aviso := TFAvisos.Create(nil);
aviso.buscarProtestos;
aviso.buscarIntimacao;
if (aviso.getProtestos > 0) or (aviso.getIntimacao > 0) then
  aviso.Show;
end;

procedure TFPrincipal.TimerTimer(Sender: TObject);
begin
  StatusBar.Panels[0].Text := 'Data: '+DateToStr(Date);
  StatusBar.Panels[1].Text := 'Hora: '+TimeToStr(Now);
end;

end.
