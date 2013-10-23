unit uExportSerasa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Data.DB, Datasnap.DBClient, Datasnap.DSConnect,
  Vcl.ExtCtrls, uTData, Vcl.Buttons, uTExportSerasa;

type
  TFExportSerasa = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    dtInicio: TDateTimePicker;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    dtFinal: TDateTimePicker;
    dspProstesto: TDSProviderConnection;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaCADPROTESTO: TIntegerField;
    cdsConsultaDATA: TDateField;
    cdsConsultaSELO: TStringField;
    cdsConsultaSTATUS: TSmallintField;
    cdsConsultaACEITE: TSmallintField;
    cdsConsultaFERJ: TIntegerField;
    cdsConsultaCODSACADO: TIntegerField;
    cdsConsultaSACADO: TStringField;
    cdsConsultaCPF_CNPJ: TStringField;
    cdsConsultaENDERECO: TStringField;
    cdsConsultaNUMERO: TStringField;
    cdsConsultaBAIRRO: TStringField;
    cdsConsultaCEP: TStringField;
    cdsConsultaCIDADESACADO: TStringField;
    cdsConsultaUFSACADO: TStringField;
    cdsConsultaPESSOA: TSmallintField;
    cdsConsultaLIVRO: TIntegerField;
    cdsConsultaFOLHA: TIntegerField;
    cdsConsultaDEVEDOR: TStringField;
    cdsConsultaCPF_CNPJDEVEDOR: TStringField;
    cdsConsultaENDERECODEVEDOR: TStringField;
    cdsConsultaNUMERODEVEDOR: TStringField;
    cdsConsultaBAIRRODEVEDOR: TStringField;
    cdsConsultaCEPDEVEDOR: TStringField;
    cdsConsultaCIDADEDEVEDOR: TStringField;
    cdsConsultaUFDEVEDOR: TStringField;
    cdsConsultaPESSOADEVEDOR: TSmallintField;
    cdsConsultaOCORRENCIA: TIntegerField;
    cdsConsultaVENCIMENTO: TDateField;
    rgPeriodicidade: TRadioGroup;
    rgRemessa: TRadioGroup;
    spbGerarArquivo: TSpeedButton;
    rgTipoEnvio: TRadioGroup;
    dspEmpresa: TDSProviderConnection;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaCODIGO: TIntegerField;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaRESPONSAVEL: TStringField;
    cdsEmpresaREGISTRO: TStringField;
    cdsEmpresaCODFERF: TIntegerField;
    cdsEmpresaCODNACIONAL: TIntegerField;
    cdsEmpresaSIGLAPRACAEMBRATEL: TStringField;
    cdsEmpresaNUMCARTORIO: TIntegerField;
    cdsEmpresaPESSOA: TSmallintField;
    cdsEmpresaCPFCNPJ: TStringField;
    cdsEmpresaFONE: TStringField;
    cdsEmpresaEMAIL: TStringField;
    rgTipoProtesto: TRadioGroup;
    RadioGroup1: TRadioGroup;
    cdsConsultaESPDOCPROTESTO: TStringField;
    cdsConsultaVALORPROTESTO: TFMTBCDField;
    cdsEmpresaCEP: TStringField;
    procedure rgPeriodicidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtInicioKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure spbGerarArquivoClick(Sender: TObject);
  private
    { Private declarations }
    datas: TData;
    exportSerasa: TExportSerasa;
    procedure mostraDados();
    procedure gerarCabecalho();
    procedure inserirItem();
  public
    { Public declarations }
  end;

var
  FExportSerasa: TFExportSerasa;

implementation

{$R *.dfm}

uses uDM, uPadrao, uSelectDiretorio;

procedure TFExportSerasa.dtInicioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key = #13 then
   mostraDados;
end;

procedure TFExportSerasa.FormCreate(Sender: TObject);
begin
  inherited;
 datas := TData.Create;
 exportSerasa := TExportSerasa.Create;
 dtInicio.Date := Date;
 dtFinal.Date := Date;
 cdsEmpresa.Close;
 cdsEmpresa.Params[0].AsInteger := 1;
 cdsEmpresa.Open;
end;

procedure TFExportSerasa.FormShow(Sender: TObject);
begin
  inherited;
mostraDados;
end;

procedure TFExportSerasa.gerarCabecalho;
begin
exportSerasa.setDtMovimento(dtInicio.Date);

case rgTipoEnvio.ItemIndex of
  0 : exportSerasa.setNumRemessa(0);
  1 : exportSerasa.setNumRemessa(exportSerasa.remessaTeste);
end;

case cdsEmpresaPESSOA.AsInteger of
   0 : exportSerasa.setTipoDocumento(exportSerasa.tipoDocCpf);
   1 : exportSerasa.setTipoDocumento(exportSerasa.tipoDocCnpj);
  end;

exportSerasa.setCnpjCartorio(cdsEmpresaCPFCNPJ.AsString);
case rgRemessa.ItemIndex of
  0 : exportSerasa.setTipoRemessa(exportSerasa.codRemessEnvio);
  1 : exportSerasa.setTipoRemessa(exportSerasa.codRemessaRetorno);
end;

exportSerasa.setFoneCartorio(cdsEmpresaFONE.AsString);
exportSerasa.setDddCartorio(cdsEmpresaFONE.AsString);
exportSerasa.setRamalCartorio('00');
exportSerasa.setNomeContatoCartorio(cdsEmpresaRESPONSAVEL.AsString);
exportSerasa.setCodEDI('0');

case rgPeriodicidade.ItemIndex of
  0 : exportSerasa.setPeriodicidade(exportSerasa.diario);
  1 : exportSerasa.setPeriodicidade(exportSerasa.semanal);
  2 : exportSerasa.setPeriodicidade(exportSerasa.quinsenal);
  3 : exportSerasa.setPeriodicidade(exportSerasa.mensal);
end;

exportSerasa.setEmailCartorio(cdsEmpresaEMAIL.AsString);
end;

procedure TFExportSerasa.inserirItem;
begin
case rgTipoProtesto.ItemIndex of
  0 : exportSerasa.setTipoInformacao(exportSerasa.protestoLavrado);
  1 : exportSerasa.setTipoInformacao(exportSerasa.protestoCancelado);
end;

exportSerasa.setNomeSacador(cdsConsultaSACADO.AsString);
exportSerasa.setDocSacador(cdsConsultaCPF_CNPJ.AsString);
exportSerasa.setEndSacado(cdsConsultaENDERECO.AsString, cdsConsultaNUMERO.AsString, ' ',cdsConsultaBAIRRO.AsString);
exportSerasa.setCEPSacado(cdsConsultaCEP.AsString);
exportSerasa.setCidadeSacado(cdsConsultaCIDADESACADO.AsString);
exportSerasa.setUFSacado(cdsConsultaUFSACADO.AsString);

case cdsConsultaPESSOA.AsInteger of
  0 : begin
        exportSerasa.setPessoaSacado(exportSerasa.fisica);
        exportSerasa.setTipoDocumento(exportSerasa.tipoDocCpf);
      end;
  1 : begin
        exportSerasa.setPessoaSacado(exportSerasa.juridica);
        exportSerasa.setTipoDocumento(exportSerasa.tipoDocCnpj);
      end;
end;

exportSerasa.setNumLivro(cdsConsultaLIVRO.AsInteger);
exportSerasa.setTipoLivro('A');
exportSerasa.setNumFolha(cdsConsultaFOLHA.AsInteger);
exportSerasa.setEspDocProtesto(cdsConsultaESPDOCPROTESTO.AsString);
exportSerasa.setValorProstesto(cdsConsultaVALORPROTESTO.AsFloat);
exportSerasa.setDtMovimento(cdsConsultaDATA.AsDateTime);

case cdsConsultaPESSOADEVEDOR.AsInteger of
  0 : begin
        exportSerasa.setPessoaDevedor(exportSerasa.fisica);
        exportSerasa.setTipoDocDevedor(exportSerasa.tipoDocCpf);
      end;
  1 : begin
        exportSerasa.setPessoaDevedor(exportSerasa.juridica);
        exportSerasa.setTipoDocDevedor(exportSerasa.tipoDocCnpj);
      end;
end;

exportSerasa.setNomeDevedor(cdsConsultaDEVEDOR.AsString);
exportSerasa.setDocDevedor(cdsConsultaCPF_CNPJDEVEDOR.AsString);
exportSerasa.setEndDevedor(cdsConsultaENDERECODEVEDOR.AsString,cdsConsultaNUMERODEVEDOR.AsString, ' ',cdsConsultaBAIRRODEVEDOR.AsString);
exportSerasa.setCEPDevedor(cdsConsultaCEPDEVEDOR.AsString);
exportSerasa.setCidadeDevedor(cdsConsultaCIDADEDEVEDOR.AsString);
exportSerasa.setUFDevedor(cdsConsultaUFDEVEDOR.AsString);
exportSerasa.setNumCartorio(cdsEmpresaNUMCARTORIO.AsString);
exportSerasa.setNumProtocolo(cdsConsultaLIVRO.AsInteger);
exportSerasa.setCEPCartorio(cdsEmpresaCEP.AsString);
exportSerasa.setDataCancelProteso(cdsConsultaDATA.AsDateTime);

case cdsConsultaOCORRENCIA.AsInteger of
    1 : exportSerasa.setEspProtesto(exportSerasa.faltaPagamento);
    2 : exportSerasa.setEspProtesto(exportSerasa.faltaAceita);
    3 : exportSerasa.setEspProtesto(exportSerasa.faltaDevolucao);
    4 : exportSerasa.setEspProtesto(exportSerasa.finsFalimentares);
end;

exportSerasa.setDataEmissaoTitulo(cdsConsultaVENCIMENTO.AsDateTime);
exportSerasa.setDataVencimentoTitulo(cdsConsultaVENCIMENTO.AsDateTime);
exportSerasa.inserirItem;
end;

procedure TFExportSerasa.mostraDados;
begin
cdsConsulta.Close;
cdsConsulta.Params[0].AsDate := dtInicio.Date;
cdsConsulta.Params[1].AsDate := dtFinal.Date;
cdsConsulta.Open;
end;

procedure TFExportSerasa.rgPeriodicidadeClick(Sender: TObject);
begin
  inherited;
 case rgPeriodicidade.ItemIndex of
  0 : begin
        dtInicio.Date := Date;
        dtFinal.Date := Date;
        mostraDados;
      end;
  1 : begin
        dtInicio.Date := datas.getSegunda(Date);
        dtFinal.Date := datas.getSexta(Date);
        mostraDados;
      end;
 end;

end;

procedure TFExportSerasa.spbGerarArquivoClick(Sender: TObject);
var
selec: TFSelectDiretorio;
begin
  inherited;
  selec := TFSelectDiretorio.Create(nil);
  selec.ShowModal;
  if selec.getCancelou then
    Exit;
  try
     exportSerasa.setEnderecoArq(selec.getDiretorio);
     gerarCabecalho;
     exportSerasa.criarArquivo;
     cdsConsulta.First;
     while not cdsConsulta.Eof do
     begin
        inserirItem;
        cdsConsulta.Next;
     end;
     exportSerasa.salvarArquivo;
     ShowMessage(SUCESSO);
  except
    on E: Exception do
      begin
        ShowMessage(ERRO+' '+E.Message);
      end;
  end;
end;

end.
