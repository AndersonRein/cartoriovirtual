unit uBoletim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uTExportacao, uTBoletim,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  frxClass, frxDBSet, Vcl.ComCtrls, Vcl.DBGrids, Winapi.ShellAPI;

type
  TFBoletim = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDATAINI: TDateField;
    cdsConsultaDATAFIM: TDateField;
    cdsConsultaNUMREMESSA: TStringField;
    cdsConsultaNUMBOLETOFERJ: TStringField;
    cdsConsultaDIGVERIFICFERJ: TStringField;
    cdsConsultaDATAPAGFERJ: TDateField;
    cdsConsultaNUMBOLETOFERC: TStringField;
    cdsConsultaDIGVERIFICFERC: TStringField;
    cdsConsultaDATAPAGFERC: TDateField;
    cdsConsultaVLRFERJ: TFMTBCDField;
    cdsConsultaVLRFERC: TFMTBCDField;
    btbLancamentos: TBitBtn;
    btbExportar: TBitBtn;
    cdsConsultaSTATUS: TSmallintField;
    cdsConsultaCODPAGOFERJ: TSmallintField;
    cdsConsultaPAGOFERJ: TStringField;
    cdsConsultaCODPAGOFERC: TSmallintField;
    cdsConsultaPAGOFERC: TStringField;
    ProgressBar: TProgressBar;
    btnImprimir: TBitBtn;
    dspEmpresa: TDSProviderConnection;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaCODIGO: TIntegerField;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaRESPONSAVEL: TStringField;
    cdsEmpresaREGISTRO: TStringField;
    cdsEmpresaCODFERF: TIntegerField;
    frBoletimEstatistico: TfrxReport;
    dbBoletim: TfrxDBDataset;
    dbEmpresa: TfrxDBDataset;
    cdsItensBoletim: TClientDataSet;
    cdsItensBoletimCODIGO: TIntegerField;
    cdsItensBoletimBOLETIM: TIntegerField;
    cdsItensBoletimCODLEI: TStringField;
    cdsItensBoletimDATAATO: TDateField;
    cdsItensBoletimEMOLUMENTO: TIntegerField;
    cdsItensBoletimNUMATO: TStringField;
    cdsItensBoletimNUMFOLHA: TStringField;
    cdsItensBoletimNUMLIVRO: TStringField;
    cdsItensBoletimSELO: TLargeintField;
    cdsItensBoletimCODTIPOSELO: TIntegerField;
    cdsItensBoletimVALORTRANSACAO: TFMTBCDField;
    cdsItensBoletimVLREMOLUMENTOS: TFMTBCDField;
    cdsItensBoletimVLRFERC: TFMTBCDField;
    cdsItensBoletimVLRFERJ: TFMTBCDField;
    cdsItensBoletimTIPOSELO: TStringField;
    cdsItensBoletimTIPOATO: TStringField;
    cdsItensBoletimCODEMOLUMENTO: TIntegerField;
    dbItensBoletim: TfrxDBDataset;
    cdsItemTotal: TClientDataSet;
    cdsItemTotalCODIGO: TIntegerField;
    cdsItemTotalCODLEI: TStringField;
    cdsItemTotalEMOLUMENTO: TIntegerField;
    cdsItemTotalTIPOATO: TStringField;
    cdsItemTotalEMOLUNIDADE: TFMTBCDField;
    cdsItemTotalQUANTIDADE: TIntegerField;
    cdsItemTotalSELOFIM: TLargeintField;
    cdsItemTotalSELOINI: TLargeintField;
    cdsItemTotalCODTIPOSELO: TIntegerField;
    cdsItemTotalTIPOSELO: TStringField;
    cdsItemTotalVLRFERC: TFMTBCDField;
    cdsItemTotalVLRFERJ: TFMTBCDField;
    cdsItemTotalBOLETIM: TIntegerField;
    cdsItemTotalCODEMOLUMENTO: TIntegerField;
    dbItensTotal: TfrxDBDataset;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btbLancamentosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btbExportarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure frBoletimEstatisticoGetValue(const VarName: string;
      var Value: Variant);
  private
    { Private declarations }
    exporta: TExportacao;
    boletim: TBoletim;
    procedure ferj();
  public
    { Public declarations }
  end;

var
  FBoletim: TFBoletim;

implementation

{$R *.dfm}

uses uCadBoletim, uLancBoletim, uSelectDiretorio, uPadrao;

procedure TFBoletim.btbAlterarClick(Sender: TObject);
var
cadBoletim: TFCadBoletim;
begin
  inherited;
  cadBoletim := TFCadBoletim.Create(nil);
  cadBoletim.alterar(cdsConsultaCODIGO.AsInteger);
  cadBoletim.Free;
  atualizaGrid;
end;

procedure TFBoletim.btbExcluirClick(Sender: TObject);
begin
  inherited;
 ShowMessage('Fun��o desabilitada');
end;

procedure TFBoletim.btbExportarClick(Sender: TObject);
begin
  inherited;
  if cdsConsultaSTATUS.AsInteger = 1 then
    begin
      if Application.MessageBox('O arquivo para este boletim j� foi gerado, quer gerar de novo?','Confirma��o',MB_YESNO + MB_ICONQUESTION)= IDYES then
       begin
         ferj;
       end
      else
      Exit;
    end
  else
    ferj;
end;

procedure TFBoletim.btbInserirClick(Sender: TObject);
var
cadBoletim: TFCadBoletim;
begin
  inherited;
  cadBoletim := TFCadBoletim.Create(nil);
  cadBoletim.inserir;
  cadBoletim.Free;
  atualizaGrid;
end;

procedure TFBoletim.btbLancamentosClick(Sender: TObject);
var
lancamento: TFLancBoletim;
permitir:Boolean;
begin
  inherited;
  if cdsConsultaSTATUS.AsInteger = 0 then
    permitir := True
  else
    permitir := False;
  if not permitir then
    begin
      if Application.MessageBox('Este boletim j� esta fechado, deseja continuar!', 'Confirma��o', MB_YESNO + MB_ICONQUESTION) = IDNO then
         begin
            Exit;
         end;
    end;
  lancamento := TFLancBoletim.Create(nil);
  lancamento.new(cdsConsultaDATAINI.AsString, cdsConsultaDATAFIM.AsString, cdsConsultaNUMREMESSA.AsString, cdsConsultaCODIGO.AsInteger, permitir);
  lancamento.Free;
  atualizaGrid;
end;

procedure TFBoletim.btnImprimirClick(Sender: TObject);
begin
  inherited;
  cdsItensBoletim.Close;
  cdsItensBoletim.Params[0].AsInteger := cdsConsultaCODIGO.AsInteger;
  cdsItensBoletim.Open;
  cdsItemTotal.Close;
  cdsItemTotal.Params[0].AsInteger := cdsConsultaCODIGO.AsInteger;
  cdsItemTotal.Open;
 frBoletimEstatistico.ShowReport();
end;

procedure TFBoletim.ferj;
var
selectDiretorio: TFSelectDiretorio;
begin
  selectDiretorio := TFSelectDiretorio.Create(nil);
  selectDiretorio.ShowModal;
  if selectDiretorio.getCancelou then
    begin
      selectDiretorio.Free;
      Exit;
    end;
    try
      ProgressBar.Style := pbstMarquee;
      exporta.statusPagFerj := cdsConsultaPAGOFERJ.AsString;
      exporta.totalFERJ := exporta.formatarValores(cdsConsultaVLRFERJ.AsFloat);
      exporta.boletoFERC := cdsConsultaNUMBOLETOFERC.AsString + cdsConsultaDIGVERIFICFERC.AsString;
      exporta.dtPagFERC := cdsConsultaDATAPAGFERC.AsString;
      exporta.statusPagFerc := cdsConsultaPAGOFERC.AsString;
      exporta.totalFERC := exporta.formatarValores(cdsConsultaVLRFERC.AsFloat);
      exporta.numRemessa := cdsConsultaNUMREMESSA.AsString;
      exporta.serventia := cdsEmpresaCODFERF.AsString;
      exporta.SISDFERJ(selectDiretorio.getDiretorio, cdsConsultaDATAINI.AsString, cdsConsultaDATAFIM.AsString, cdsConsultaNUMBOLETOFERJ.AsString+cdsConsultaDIGVERIFICFERJ.AsString, cdsConsultaDATAPAGFERJ.AsString, cdsConsultaCODIGO.AsInteger);
      exporta.Free;
      ProgressBar.Style := pbstNormal;
      boletim.fechar(cdsConsultaCODIGO.AsInteger);
      ShowMessage(SUCESSO);
      atualizaGrid;
      ShellExecute(Handle, 'open', 'http://www.tjma.jus.br/siaferj/', nil, nil, SW_SHOWNORMAL);
    except
      on E: Exception do
      begin
        ProgressBar.Style := pbstNormal;
        ShowMessage(ERRO + ' '+E.Message);
      end;
    end;
end;

procedure TFBoletim.FormCreate(Sender: TObject);
begin
  inherited;
 exporta := TExportacao.Create;
 boletim := TBoletim.Create;
 exporta.criar;
 cdsEmpresa.Close;
 cdsEmpresa.Params[0].AsInteger := 1;
 cdsEmpresa.Open;
end;

procedure TFBoletim.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_INSERT then
    btbInserirClick(Sender);
  if dbgCadastros.Focused then
  begin
    if Key = VK_RETURN then
      btbAlterarClick(Sender);
    if Key = VK_DELETE then
      btbExcluirClick(Sender);
  end;
end;

procedure TFBoletim.frBoletimEstatisticoGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
 if VarName = 'TSELO' then
    Value := cdsItensBoletim.RecordCount + boletim.getTotalSelosLancTotal(cdsConsultaCODIGO.AsInteger);
end;

end.
