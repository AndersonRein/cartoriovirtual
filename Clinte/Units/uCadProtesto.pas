unit uCadProtesto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, uTMotivoProtesto,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, uTRegistroCivil,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, uTTransacoes, uTProtesto, uTProtocolo,
  Vcl.ExtCtrls;

type
  TFCadProtesto = class(TFCadastroPadrao)
    Label1: TLabel;
    dbApresentante: TDBEdit;
    edApresentante: TEdit;
    Label2: TLabel;
    dbDevedor: TDBEdit;
    edDevedor: TEdit;
    Label3: TLabel;
    dbValor: TDBEdit;
    Label4: TLabel;
    dbVencimento: TDBEdit;
    Label5: TLabel;
    dbMotivo: TDBEdit;
    Label6: TLabel;
    dbTitulo: TDBEdit;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroAPRESENTANTE: TIntegerField;
    cdsCadastroDEVEDOR: TIntegerField;
    cdsCadastroVALORPROTESTO: TFMTBCDField;
    cdsCadastroVENCIMENTO: TDateField;
    cdsCadastroNUMTITULO: TStringField;
    cdsCadastroUSUARIO: TIntegerField;
    cdsCadastroPROTOCOLO: TIntegerField;
    cdsCadastroSTATUS: TSmallintField;
    cdsCadastroTITULO: TIntegerField;
    cdsCadastroFALIMENTAR: TSmallintField;
    cdsCadastroMOTIVOPROTESTO: TIntegerField;
    edMotivo: TEdit;
    dbFalimentar: TDBRadioGroup;
    GroupBox1: TGroupBox;
    cdsConsTitulo: TClientDataSet;
    dspConectionTitulos: TDSProviderConnection;
    cdsConsTituloCODIGO: TIntegerField;
    cdsConsTituloSIGLA: TStringField;
    cdsConsTituloNOME: TStringField;
    cdsConsTituloDESCRICAO: TStringField;
    dbDescricao: TDBMemo;
    dsConsTitulo: TDataSource;
    dbCadTitulo: TDBLookupComboBox;
    edSiglaTitulo: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cdsCadastroCADASTRO: TDateField;
    cdsConsTituloCHEQUE: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure dbApresentanteClick(Sender: TObject);
    procedure dbDevedorClick(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure cdsCadastroBeforeEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalvarClick(Sender: TObject);
    procedure edSiglaTituloKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbMotivoClick(Sender: TObject);
  private
    { Private declarations }
    autografo: TRegistroCivil;
    protesto: TProtesto;
    protocolo: TProtocolo;
    motivo: TMotivoProtesto;
    procedure buscarTitulos();
  public
    { Public declarations }
  end;

var
  FCadProtesto: TFCadProtesto;

implementation

{$R *.dfm}

uses uPadrao, uDM;

procedure TFCadProtesto.btSalvarClick(Sender: TObject);
begin
  if cdsConsTituloCHEQUE.AsInteger = 0 then
  begin
    if Trunc((Now - cdsCadastroVENCIMENTO.AsDateTime)/365) > 0 then
    begin
      Application.MessageBox(PWideChar('Este cheque n�o pode ser protestado pois o vencimento � superior a um ano!'), 'Aviso', MB_ICONEXCLAMATION);
      Exit;
    end;
  end;

 try
    if modo = 0 then
    begin
      if dsCadastro.State in [dsInsert, dsEdit] then
        cdsCadastroPROTOCOLO.AsInteger := protocolo.protocolarProtesto(cdsCadastroAPRESENTANTE.AsInteger, cdsCadastroDEVEDOR.AsInteger, protestado, usuario.getCodigo)
    else
    begin
      cdsCadastro.Edit;
      cdsCadastroPROTOCOLO.AsInteger := protocolo.protocolarProtesto(cdsCadastroAPRESENTANTE.AsInteger, cdsCadastroDEVEDOR.AsInteger, protestado, usuario.getCodigo);
    end;
  end;
    salvar;
    TTransacao.commit;
    ShowMessage(SUCESSO);
 except
  on E: Exception do
    begin
      ShowMessage(ERRO + ' '+E.Message);
      Close;
    end;
 end;
  try
    TTransacao.start;
    if modo = 0 then
     abrirCadastro
    else
     editarCadastro;
  except
    on E: Exception do
      begin
         if TTransacao.isStarted then
            TTransacao.rollback;
         ShowMessage(ERRO + ' '+E.Message);
      end;
  end;
end;

procedure TFCadProtesto.buscarTitulos;
begin
cdsConsTitulo.Close;
cdsConsTitulo.Params[0].AsString := edSiglaTitulo.Text+'%';
cdsConsTitulo.Open;
end;

procedure TFCadProtesto.cdsCadastroBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  edApresentante.Text := autografo.getNome(cdsCadastroAPRESENTANTE.AsInteger);
  edDevedor.Text := autografo.getNome(cdsCadastroDEVEDOR.AsInteger);
  edMotivo.Text := motivo.getNome(cdsCadastroMOTIVOPROTESTO.AsInteger);
end;

procedure TFCadProtesto.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroCODIGO.AsInteger := makeCodigo('GCADPROTESTO');
  cdsCadastroUSUARIO.AsInteger := usuario.getCodigo;
  cdsCadastroFALIMENTAR.AsInteger := 1;
  edApresentante.Clear;
  edDevedor.Clear;
end;

procedure TFCadProtesto.dbApresentanteClick(Sender: TObject);
begin
  inherited;
  cdsCadastroAPRESENTANTE.AsInteger := autografo.getBusca(edApresentante);
end;

procedure TFCadProtesto.dbDevedorClick(Sender: TObject);
begin
  inherited;
 cdsCadastroDEVEDOR.AsInteger := autografo.getBusca(edDevedor);
end;

procedure TFCadProtesto.dbMotivoClick(Sender: TObject);
var
obs: string;
begin
  inherited;
 cdsCadastroMOTIVOPROTESTO.AsInteger := motivo.getBusca(edMotivo);
 obs := motivo.getDescricao(cdsCadastroMOTIVOPROTESTO.AsInteger);
 if not (obs = '') then
 begin
    Application.MessageBox(pWideChar(obs),'Informa��o', MB_ICONEXCLAMATION);
    if motivo.protestavel(cdsCadastroMOTIVOPROTESTO.AsInteger) then
      Exit;
    cdsCadastroMOTIVOPROTESTO.Clear;
    edMotivo.Clear;
 end;
end;

procedure TFCadProtesto.edSiglaTituloKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 buscarTitulos;
end;

procedure TFCadProtesto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if TTransacao.isStarted then
    TTransacao.rollback;
  inherited;

end;

procedure TFCadProtesto.FormCreate(Sender: TObject);
begin
  inherited;
  autografo := TRegistroCivil.Create;
  protesto := TProtesto.Create;
  protocolo := TProtocolo.Create;
  motivo := TMotivoProtesto.Create;
end;

procedure TFCadProtesto.FormShow(Sender: TObject);
begin
  inherited;
 buscarTitulos;
  try
     TTransacao.start;
  except
    on E: Exception do
      begin
          if TTransacao.isStarted then
            TTransacao.rollback;
          ShowMessage(ERRO+' '+E.Message);
      end;
  end;

end;

end.
