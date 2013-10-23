unit uLancBoletim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.StdCtrls, Vcl.ExtCtrls, uTBoletim,
  Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Vcl.ComCtrls, Vcl.Mask, uTRegistoSelos,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, uTEmolumentos;

type
  TFLancBoletim = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lblInicio: TLabel;
    grp1: TGroupBox;
    lblFim: TLabel;
    grp2: TGroupBox;
    lblRemessa: TLabel;
    dspConection: TDSProviderConnection;
    cdsLancBoletim: TClientDataSet;
    dsLancBoletim: TDataSource;
    PageControl: TPageControl;
    tsLancIndividual: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Panel: TPanel;
    grp3: TGroupBox;
    lblTFerj: TLabel;
    grp4: TGroupBox;
    lblTFerc: TLabel;
    lbl2: TLabel;
    edTipoAto: TEdit;
    Label1: TLabel;
    lbl1: TLabel;
    dbNumAto: TDBEdit;
    Label2: TLabel;
    lbl3: TLabel;
    dbVlrTransacao: TDBEdit;
    lbl4: TLabel;
    dbVlrEmolumentos: TDBEdit;
    lbl5: TLabel;
    dbSelo: TDBEdit;
    lbl6: TLabel;
    dbNumLivro: TDBEdit;
    lbl7: TLabel;
    dbFolha: TDBEdit;
    lbl8: TLabel;
    dbVlrFerj: TDBEdit;
    lbl9: TLabel;
    dbDataAto: TDBEdit;
    lbl10: TLabel;
    dbFERC: TDBEdit;
    DBGrid: TDBGrid;
    cdsItensBoletim: TClientDataSet;
    cdsItensBoletimCODIGO: TIntegerField;
    cdsItensBoletimBOLETIM: TIntegerField;
    cdsItensBoletimCODLEI: TStringField;
    cdsItensBoletimDATAATO: TDateField;
    cdsItensBoletimEMOLUMENTO: TIntegerField;
    cdsItensBoletimNUMATO: TStringField;
    cdsItensBoletimSELO: TLargeintField;
    cdsItensBoletimVALORTRANSACAO: TFMTBCDField;
    cdsItensBoletimVLREMOLUMENTOS: TFMTBCDField;
    cdsItensBoletimVLRFERC: TFMTBCDField;
    cdsItensBoletimVLRFERJ: TFMTBCDField;
    dsItensBoletim: TDataSource;
    btbSalvar: TBitBtn;
    spbExcluir: TSpeedButton;
    spbEditar: TSpeedButton;
    edCodLei: TEdit;
    dbTIPOSELO: TDBLookupComboBox;
    cdsTipoSelo: TClientDataSet;
    dsTipoSelo: TDataSource;
    dspTipoSelo: TDSProviderConnection;
    cdsTipoSeloCODIGO: TIntegerField;
    cdsTipoSeloNOME: TStringField;
    cdsTipoSeloTIPO: TIntegerField;
    cdsItensBoletimCODTIPOSELO: TIntegerField;
    cdsItensBoletimTIPOSELO: TStringField;
    cdsItensBoletimTIPOATO: TStringField;
    cdsItensBoletimNUMFOLHA: TStringField;
    cdsItensBoletimNUMLIVRO: TStringField;
    tsLancTotal: TTabSheet;
    GroupBox6: TGroupBox;
    cdsLancItemTotal: TClientDataSet;
    cdsLancItemTotalCODIGO: TIntegerField;
    cdsLancItemTotalCODLEI: TStringField;
    cdsLancItemTotalEMOLUMENTO: TIntegerField;
    cdsLancItemTotalTIPOSELO: TIntegerField;
    cdsLancItemTotalQUANTIDADE: TIntegerField;
    cdsLancItemTotalSELOINI: TLargeintField;
    cdsLancItemTotalSELOFIM: TLargeintField;
    cdsLancItemTotalEMOLUNIDADE: TFMTBCDField;
    cdsLancItemTotalVLRFERJ: TFMTBCDField;
    cdsLancItemTotalVLRFERC: TFMTBCDField;
    cdsLancItemTotalBOLETIM: TIntegerField;
    lbl11: TLabel;
    dsLancItemTotal: TDataSource;
    edTipoAtoTotal: TEdit;
    Label3: TLabel;
    lbl12: TLabel;
    dbQuantidadeTotal: TDBEdit;
    dbTipoSeloTotal: TDBLookupComboBox;
    Label4: TLabel;
    lbl13: TLabel;
    dbSeloInicial: TDBEdit;
    lbl14: TLabel;
    dbSeloFinal: TDBEdit;
    lbl15: TLabel;
    dbEmoUnidade: TDBEdit;
    lbl16: TLabel;
    dbVlrFerjTotal: TDBEdit;
    lbl17: TLabel;
    dbVlrFercTotal: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox7: TGroupBox;
    DBGrid1: TDBGrid;
    cdsConsItemTotal: TClientDataSet;
    dsConsItemTotal: TDataSource;
    cdsConsItemTotalCODIGO: TIntegerField;
    cdsConsItemTotalCODLEI: TStringField;
    cdsConsItemTotalEMOLUMENTO: TIntegerField;
    cdsConsItemTotalTIPOATO: TStringField;
    cdsConsItemTotalEMOLUNIDADE: TFMTBCDField;
    cdsConsItemTotalQUANTIDADE: TIntegerField;
    cdsConsItemTotalSELOFIM: TLargeintField;
    cdsConsItemTotalSELOINI: TLargeintField;
    cdsConsItemTotalCODTIPOSELO: TIntegerField;
    cdsConsItemTotalTIPOSELO: TStringField;
    cdsConsItemTotalVLRFERC: TFMTBCDField;
    cdsConsItemTotalVLRFERJ: TFMTBCDField;
    cdsConsItemTotalBOLETIM: TIntegerField;
    btbSalvarTotal: TBitBtn;
    edCodLeiTotal: TEdit;
    pnl1: TPanel;
    btbRemoveTotal: TSpeedButton;
    btbEditTotal: TSpeedButton;
    cdsLancBoletimCODIGO: TIntegerField;
    cdsLancBoletimCODLEI: TStringField;
    cdsLancBoletimEMOLUMENTO: TIntegerField;
    cdsLancBoletimNUMATO: TStringField;
    cdsLancBoletimTIPOSELO: TIntegerField;
    cdsLancBoletimVALORTRANSACAO: TFMTBCDField;
    cdsLancBoletimVLREMOLUMENTOS: TFMTBCDField;
    cdsLancBoletimSELO: TLargeintField;
    cdsLancBoletimNUMLIVRO: TStringField;
    cdsLancBoletimNUMFOLHA: TStringField;
    cdsLancBoletimVLRFERJ: TFMTBCDField;
    cdsLancBoletimVLRFERC: TFMTBCDField;
    cdsLancBoletimDATAATO: TDateField;
    cdsLancBoletimBOLETIM: TIntegerField;
    btnCancelar: TBitBtn;
    btnCancelarTotal: TBitBtn;
    btnEmolInd: TSpeedButton;
    btnEmolTotal: TSpeedButton;
    cdsLancBoletimCLIENTE: TIntegerField;
    cdsLancBoletimFORMAPAGAMENTO: TIntegerField;
    dbForPag: TDBLookupComboBox;
    cdsFormaPag: TClientDataSet;
    dspFormPag: TDSProviderConnection;
    cdsFormaPagCODIGO: TIntegerField;
    cdsFormaPagNOME: TStringField;
    cdsFormaPagCODTIPO: TSmallintField;
    cdsFormaPagTIPO: TStringField;
    dsFormaPag: TDataSource;
    Label9: TLabel;
    procedure btbSalvarClick(Sender: TObject);
    procedure spbEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbVlrEmolumentosExit(Sender: TObject);
    procedure cdsLancBoletimNewRecord(DataSet: TDataSet);
    procedure cdsLancBoletimBeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure spbExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsLancItemTotalNewRecord(DataSet: TDataSet);
    procedure btbSalvarTotalClick(Sender: TObject);
    procedure btbEditTotalClick(Sender: TObject);
    procedure btbRemoveTotalClick(Sender: TObject);
    procedure cdsLancItemTotalBeforePost(DataSet: TDataSet);
    procedure edCodLeiDblClick(Sender: TObject);
    procedure tsLancIndividualShow(Sender: TObject);
    procedure tsLancTotalShow(Sender: TObject);
    procedure edCodLeiExit(Sender: TObject);
    procedure edCodLeiChange(Sender: TObject);
    procedure edCodLeiTotalDblClick(Sender: TObject);
    procedure edCodLeiTotalExit(Sender: TObject);
    procedure dbSeloInicialExit(Sender: TObject);
    procedure dbEmoUnidadeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCancelarTotalClick(Sender: TObject);
  private
    { Private declarations }
    codBoletim:Integer;
    boletim: TBoletim;
    emolumento: TEmolumentos;
    registroSelo: TRegistroSelos;
    codEmolumento:Integer;
    numAto: Integer;
    numSelo:Integer;
    numLivro:string;
    dataLanc:TDate;
    calcFerc:Boolean;
    vlrEmolumento: Double;
    procedure abrirCadastro();
    procedure alterarCadastro();
    procedure salvar();
    procedure abrirCadastroTotal();
    procedure alterarCadastroTotal();
    procedure salvarTotal();
    procedure mostraDados();
    procedure mostraDadosTotal();
    procedure limpaCampos();
  public
    { Public declarations }
    permitir : Boolean;
    procedure new(inicio, fim, remessa: string; boletim:Integer; permitir:Boolean);
  end;

var
  FLancBoletim: TFLancBoletim;

implementation

{$R *.dfm}

uses uDM, uPadrao;

{ TFLancBoletim }

procedure TFLancBoletim.abrirCadastro;
begin
cdsLancBoletim.Close;
cdsLancBoletim.Params[0].AsInteger := 0;
cdsLancBoletim.Open;
cdsLancBoletim.Insert;
end;

procedure TFLancBoletim.abrirCadastroTotal;
begin
cdsLancItemTotal.Close;
cdsLancItemTotal.Params[0].AsInteger := 0;
cdsLancItemTotal.Open;
cdsLancItemTotal.Insert;
end;

procedure TFLancBoletim.alterarCadastro;
begin
cdsLancBoletim.Close;
cdsLancBoletim.Params[0].AsInteger := cdsItensBoletimCODIGO.AsInteger;
cdsLancBoletim.Open;
cdsLancBoletim.Edit;
edCodLei.Text := cdsItensBoletimCODLEI.AsString;
edTipoAto.Text := cdsItensBoletimTIPOATO.AsString;
end;

procedure TFLancBoletim.alterarCadastroTotal;
begin
cdsLancItemTotal.Close;
cdsLancItemTotal.Params[0].AsInteger := cdsConsItemTotalCODIGO.AsInteger;
cdsLancItemTotal.Open;
cdsLancItemTotal.Edit;
edTipoAtoTotal.Text := cdsConsItemTotalTIPOATO.AsString;
edCodLeiTotal.Text := cdsConsItemTotalCODLEI.AsString;
end;

procedure TFLancBoletim.btbEditTotalClick(Sender: TObject);
begin
  inherited;
alterarCadastroTotal;
end;

procedure TFLancBoletim.btbRemoveTotalClick(Sender: TObject);
begin
  inherited;
   if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirma��o', MB_YESNO) = idYES then
  begin
    try
      boletim.excluirItemTotal(cdsConsItemTotalCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      mostraDadosTotal;
    except
      on E: Exception do
      ShowMessage(ERRO +' '+E.Message);
    end;
  end;
end;

procedure TFLancBoletim.btbSalvarClick(Sender: TObject);
begin
  inherited;
  if not permitir then
    begin
      if Application.MessageBox('Este boletim j� esta fechado, deseja continuar!', 'Confirma��o', MB_YESNO + MB_ICONQUESTION) = IDNO then
         begin
          Exit;
         end;
    end;
try
if not registroSelo.permitirSelo(cdsLancBoletimSELO.AsInteger) then
  begin
    Application.MessageBox('O selo informado n�o esta registrado.','Informa��o',MB_ICONEXCLAMATION);
    dbSelo.SetFocus;
    Exit;
  end;
  if dsLancBoletim.State in [dsInsert] then
    begin
      if registroSelo.seloLancado(cdsLancBoletimSELO.AsInteger) then
      begin
        Application.MessageBox('O selo informado j� esta em uso.','Informa��o',MB_ICONEXCLAMATION);
        dbSelo.SetFocus;
        Exit;
      end;
    end;
  calcFerc := False;
  salvar;
  ShowMessage(SUCESSO);
  mostraDados;
  limpaCampos;
  abrirCadastro;
  edCodLei.SetFocus;
except
  on E: Exception do
    ShowMessage(ERRO +' '+E.Message);
end;
end;

procedure TFLancBoletim.btbSalvarTotalClick(Sender: TObject);
begin
  inherited;
  if not registroSelo.permitirSelo(cdsLancItemTotalSELOINI.AsInteger) then
  begin
    Application.MessageBox('O selo informado n�o esta registrado.','Informa��o',MB_ICONEXCLAMATION);
    dbSelo.SetFocus;
    Exit;
  end;
  if dsLancBoletim.State in [dsInsert] then
    begin
      if registroSelo.seloLancado(cdsLancItemTotalSELOINI.AsInteger) then
      begin
        Application.MessageBox('O selo informado j� esta em uso.','Informa��o',MB_ICONEXCLAMATION);
        dbSelo.SetFocus;
        Exit;
      end;
    end;
try
  salvarTotal;
  ShowMessage(SUCESSO);
  mostraDadosTotal;
  edTipoAtoTotal.Clear;
  abrirCadastroTotal;
  edCodLeiTotal.SetFocus;
except
  on E: Exception do
    ShowMessage(ERRO +' '+E.Message);
end;
end;

procedure TFLancBoletim.btnCancelarClick(Sender: TObject);
begin
  inherited;
  limpaCampos;
  cdsLancBoletim.Cancel;
  abrirCadastro;
  edCodLei.SetFocus;
end;

procedure TFLancBoletim.btnCancelarTotalClick(Sender: TObject);
begin
  inherited;
  cdsLancItemTotal.Cancel;
  edTipoAtoTotal.Clear;
  abrirCadastroTotal;
  edCodLeiTotal.SetFocus;
end;

procedure TFLancBoletim.cdsLancBoletimBeforePost(DataSet: TDataSet);
begin
  inherited;
 cdsLancBoletimCODLEI.AsString := edCodLei.Text;
 numAto := StrToIntDef(cdsLancBoletimNUMATO.AsString,0);
 numSelo := cdsLancBoletimSELO.AsInteger;
 numLivro := cdsLancBoletimNUMLIVRO.AsString;
 dataLanc := cdsLancBoletimDATAATO.AsDateTime;
end;

procedure TFLancBoletim.cdsLancBoletimNewRecord(DataSet: TDataSet);
begin
  inherited;
cdsLancBoletimCODIGO.AsInteger := 0;
cdsLancBoletimBOLETIM.AsInteger := codBoletim;
cdsLancBoletimDATAATO.AsDateTime := dataLanc;
if numSelo > 0 then
  begin
    Inc(numSelo);
    cdsLancBoletimSELO.AsInteger := numSelo;
  end;
if numLivro > '0' then
  cdsLancBoletimNUMLIVRO.AsString := numLivro;
end;

procedure TFLancBoletim.cdsLancItemTotalBeforePost(DataSet: TDataSet);
begin
  inherited;
 cdsLancItemTotalCODLEI.AsString := edCodLeiTotal.Text;
end;

procedure TFLancBoletim.cdsLancItemTotalNewRecord(DataSet: TDataSet);
begin
  inherited;
 cdsLancItemTotalCODIGO.AsInteger := 0;
 cdsLancItemTotalBOLETIM.AsInteger := codBoletim;
end;

procedure TFLancBoletim.dbEmoUnidadeExit(Sender: TObject);
begin
  inherited;
cdsLancItemTotalVLRFERJ.AsFloat := boletim.getVlrFerj(cdsLancItemTotalEMOLUNIDADE.AsFloat * cdsLancItemTotalQUANTIDADE.AsInteger);
cdsLancItemTotalVLRFERC.AsFloat := emolumento.getVlrFerc(codEmolumento) * cdsLancItemTotalQUANTIDADE.AsInteger;
end;

procedure TFLancBoletim.dbSeloInicialExit(Sender: TObject);
begin
  inherited;
 cdsLancItemTotalSELOFIM.AsInteger := registroSelo.calcularSeloFinalLancTotal(cdsLancItemTotalSELOINI.AsInteger, cdsLancItemTotalQUANTIDADE.AsInteger);
 cdsLancItemTotalVLRFERJ.AsFloat := boletim.getVlrFerj(cdsLancItemTotalEMOLUNIDADE.AsFloat * cdsLancItemTotalQUANTIDADE.AsInteger);
end;

procedure TFLancBoletim.dbVlrEmolumentosExit(Sender: TObject);
begin
  inherited;
  cdsLancBoletimVLRFERJ.AsFloat := boletim.getVlrFerj(cdsLancBoletimVLREMOLUMENTOS.AsFloat);
  if cdsLancBoletimVLREMOLUMENTOS.AsFloat <> vlrEmolumento then
    begin
      cdsLancBoletimVLRFERC.AsFloat := boletim.getVlrFerc(cdsLancBoletimVLREMOLUMENTOS.AsFloat);
    end;
end;

procedure TFLancBoletim.edCodLeiChange(Sender: TObject);
begin
  inherited;
  numAto := 0;
  numLivro := '0';
end;

procedure TFLancBoletim.edCodLeiDblClick(Sender: TObject);
begin
  inherited;
codEmolumento := emolumento.getBusca(edCodLei);
cdsLancBoletimEMOLUMENTO.AsInteger := codEmolumento;
edTipoAto.Text := emolumento.getTipoATO(cdsLancBoletimEMOLUMENTO.AsInteger);
cdsLancBoletimVLREMOLUMENTOS.AsFloat := emolumento.getValor(cdsLancBoletimEMOLUMENTO.AsInteger);
cdsLancBoletimTIPOSELO.AsInteger := emolumento.getTipoSelo(cdsLancBoletimEMOLUMENTO.AsInteger);
cdsLancBoletimVALORTRANSACAO.AsFloat := emolumento.getVlrTransacao(codEmolumento);
dbVlrEmolumentosExit(Sender);
vlrEmolumento := cdsLancBoletimVLREMOLUMENTOS.AsFloat;
cdsLancBoletimVLRFERC.AsFloat := emolumento.getVlrFerc(codEmolumento);
end;

procedure TFLancBoletim.edCodLeiExit(Sender: TObject);
begin
  inherited;
   codEmolumento := emolumento.getCodigo(edCodLei.Text);
   cdsLancBoletimEMOLUMENTO.AsInteger := codEmolumento;
   edTipoAto.Text := emolumento.getTipoATO(codEmolumento);
   cdsLancBoletimVLREMOLUMENTOS.AsFloat := emolumento.getValor(codEmolumento);
   vlrEmolumento := cdsLancBoletimVLREMOLUMENTOS.AsFloat;
   cdsLancBoletimTIPOSELO.AsInteger := emolumento.getTipoSelo(codEmolumento);
   cdsLancBoletimVALORTRANSACAO.AsFloat := emolumento.getVlrTransacao(codEmolumento);
   dbVlrEmolumentosExit(Sender);
   cdsLancBoletimVLRFERC.AsFloat := emolumento.getVlrFerc(codEmolumento);
   if numAto > 0 then
  begin
    Inc(numAto);
    cdsLancBoletimNUMATO.AsInteger := numAto;
  end;
end;

procedure TFLancBoletim.edCodLeiTotalDblClick(Sender: TObject);
begin
  inherited;
cdsLancItemTotalEMOLUMENTO.AsInteger := emolumento.getBusca(edCodLeiTotal);
edTipoAtoTotal.Text := emolumento.getTipoATO(cdsLancItemTotalEMOLUMENTO.AsInteger);
cdsLancItemTotalTIPOSELO.AsInteger := emolumento.getTipoSelo(cdsLancItemTotalEMOLUMENTO.AsInteger);
end;

procedure TFLancBoletim.edCodLeiTotalExit(Sender: TObject);
begin
  inherited;
  codEmolumento := emolumento.getCodigo(edCodLeiTotal.Text);
  cdsLancItemTotalEMOLUMENTO.AsInteger := codEmolumento;
  edTipoAtoTotal.Text := emolumento.getTipoATO(cdsLancItemTotalEMOLUMENTO.AsInteger);
  cdsLancItemTotalTIPOSELO.AsInteger := emolumento.getTipoSelo(cdsLancItemTotalEMOLUMENTO.AsInteger);
  cdsLancItemTotalEMOLUNIDADE.AsFloat := emolumento.getValor(codEmolumento);
end;

procedure TFLancBoletim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsLancBoletim.Close;
  cdsItensBoletim.Close;
  cdsTipoSelo.Close;
  cdsConsItemTotal.Close;
  cdsFormaPag.Close;
end;

procedure TFLancBoletim.FormCreate(Sender: TObject);
begin
  inherited;
 boletim := TBoletim.Create;
 emolumento := TEmolumentos.Create;
 registroSelo := TRegistroSelos.Create;
 numAto := 0;
 numSelo := 0;
 numLivro := '0';
 dataLanc := Date;
 calcFerc := False;
end;

procedure TFLancBoletim.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFLancBoletim.FormShow(Sender: TObject);
begin
  inherited;
 Self.Height := Screen.Height - 100;
 Self.Width := Screen.Width;
 cdsFormaPag.Close;
 cdsFormaPag.Params[0].AsString := '%';
 cdsFormaPag.Open;
end;

procedure TFLancBoletim.limpaCampos;
begin
edTipoAto.Clear;
//edCodLei.Clear;
end;

procedure TFLancBoletim.mostraDados;
begin
cdsItensBoletim.Close;
cdsItensBoletim.Params[0].AsInteger := codBoletim;
cdsItensBoletim.Open;
lblTFerj.Caption := FormatFloat('###,##0.00', boletim.getTotalFerj(codBoletim));
lblTFerc.Caption := FormatFloat('###,##0.00', boletim.getTotalFerc(codBoletim));
end;

procedure TFLancBoletim.mostraDadosTotal;
begin
cdsConsItemTotal.Close;
cdsConsItemTotal.Params[0].AsInteger := codBoletim;
cdsConsItemTotal.Open;
lblTFerj.Caption := FormatFloat('###,##0.00', boletim.getTotalFerj(codBoletim));
lblTFerc.Caption := FormatFloat('###,##0.00', boletim.getTotalFerc(codBoletim));
end;

procedure TFLancBoletim.new(inicio, fim, remessa: string; boletim: Integer; permitir:Boolean);
begin
lblInicio.Caption := inicio;
lblFim.Caption := fim;
lblRemessa.Caption := remessa;
codBoletim := boletim;
abrirCadastro;
abrirCadastroTotal;
mostraDados;
mostraDadosTotal;
spbExcluir.Enabled := permitir;
btbRemoveTotal.Enabled := permitir;
Self.permitir := permitir;
Self.ShowModal;
end;

procedure TFLancBoletim.salvar;
begin
cdsLancBoletim.Post;
cdsLancBoletim.ApplyUpdates(-1);
end;

procedure TFLancBoletim.salvarTotal;
begin
cdsLancItemTotal.Post;
cdsLancItemTotal.ApplyUpdates(-1);
end;

procedure TFLancBoletim.spbEditarClick(Sender: TObject);
begin
  inherited;
 alterarCadastro;
end;

procedure TFLancBoletim.spbExcluirClick(Sender: TObject);
begin
  inherited;
   if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirma��o',
    MB_YESNO) = idYES then
  begin
    try
      boletim.excluirItem(cdsItensBoletimCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      mostraDados;
    except
      on E: Exception do
      ShowMessage(ERRO +' '+E.Message);
    end;
  end;
end;

procedure TFLancBoletim.tsLancIndividualShow(Sender: TObject);
begin
  inherited;
 cdsTipoSelo.Close;
 cdsTipoSelo.Params[0].AsInteger := 2;
 cdsTipoSelo.Open;
end;

procedure TFLancBoletim.tsLancTotalShow(Sender: TObject);
begin
  inherited;
 cdsTipoSelo.Close;
 cdsTipoSelo.Params[0].AsInteger := 20;
 cdsTipoSelo.Open;
end;

end.
