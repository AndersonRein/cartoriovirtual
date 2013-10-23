unit uRelCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uRelatorioPadrao, frxClass,
  frxExportPDF, frxDBSet, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.ExtCtrls, uTBoletim, uTDespesas, uTData;

type
  TFRelCaixa = class(TFRelatorioPadrao)
    dspConection: TDSProviderConnection;
    calendario: TMonthCalendar;
    RadioGroup: TRadioGroup;
    dbEmpresa: TfrxDBDataset;
    dspEmpresa: TDSProviderConnection;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaCODIGO: TIntegerField;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaRESPONSAVEL: TStringField;
    cdsEmpresaREGISTRO: TStringField;
    cdsEmpresaCODFERF: TIntegerField;
    cdsEmpresaCODNACIONAL: TIntegerField;
    cdsRelCaixaTotalDiario: TClientDataSet;
    cdsRelCaixaIndividual: TClientDataSet;
    cdsRelCaixaIndividualCODCLIENTE: TIntegerField;
    cdsRelCaixaIndividualCLIENTE: TStringField;
    cdsRelCaixaIndividualDATAATO: TDateField;
    cdsRelCaixaIndividualCODLEI: TStringField;
    cdsRelCaixaIndividualNUMATO: TStringField;
    cdsRelCaixaIndividualNUMLIVRO: TStringField;
    cdsRelCaixaIndividualNUMFOLHA: TStringField;
    cdsRelCaixaIndividualSELO: TLargeintField;
    cdsRelCaixaIndividualVLREMOLUMENTOS: TFMTBCDField;
    cdsRelCaixaIndividualVLRFERJ: TFMTBCDField;
    cdsRelCaixaIndividualRECEITASFERJ: TFMTBCDField;
    cdsRelCaixaIndividualVLRFERC: TFMTBCDField;
    cdsRelCaixaIndividualTIPOATO: TStringField;
    cdsRelCaixaTotalDiarioDATAATO: TDateField;
    cdsRelCaixaTotalDiarioCODLEI: TStringField;
    cdsRelCaixaTotalDiarioSELOINI: TLargeintField;
    cdsRelCaixaTotalDiarioSELOFIM: TLargeintField;
    cdsRelCaixaTotalDiarioEMOLUNIDADE: TFMTBCDField;
    cdsRelCaixaTotalDiarioVLRFERJ: TFMTBCDField;
    cdsRelCaixaTotalDiarioRECEITASFERJ: TFMTBCDField;
    cdsRelCaixaTotalDiarioVLRFERC: TFMTBCDField;
    cdsRelCaixaTotalDiarioTIPOATO: TStringField;
    dbRelCaixaTotalDiario: TfrxDBDataset;
    dspDespesas: TDSProviderConnection;
    cdsDespesas: TClientDataSet;
    cdsDespesasCODIGO: TIntegerField;
    cdsDespesasDATA: TDateField;
    cdsDespesasDESCRICAO: TStringField;
    cdsDespesasCODSUBGRUPODESPSA: TIntegerField;
    cdsDespesasSUBGRUPODESPSA: TStringField;
    cdsDespesasVALOR: TFMTBCDField;
    cdsDespesasCODGRUPODESPESA: TIntegerField;
    cdsDespesasGRUPODESPESA: TStringField;
    cdsDespesasCARNELEAO: TIntegerField;
    dbDespesas: TfrxDBDataset;
    RelSemana: TfrxReport;
    cdsRelIndSemana: TClientDataSet;
    cdsRelIndSemanaCODCLIENTE: TIntegerField;
    cdsRelIndSemanaCLIENTE: TStringField;
    cdsRelIndSemanaDATAATO: TDateField;
    cdsRelIndSemanaCODLEI: TStringField;
    cdsRelIndSemanaNUMATO: TStringField;
    cdsRelIndSemanaNUMLIVRO: TStringField;
    cdsRelIndSemanaNUMFOLHA: TStringField;
    cdsRelIndSemanaSELO: TLargeintField;
    cdsRelIndSemanaVLREMOLUMENTOS: TFMTBCDField;
    cdsRelIndSemanaVLRFERJ: TFMTBCDField;
    cdsRelIndSemanaRECEITASFERJ: TFMTBCDField;
    cdsRelIndSemanaVLRFERC: TFMTBCDField;
    cdsRelIndSemanaTIPOATO: TStringField;
    dbIndSemana: TfrxDBDataset;
    cdsTotalSemana: TClientDataSet;
    cdsTotalSemanaDATAATO: TDateField;
    cdsTotalSemanaCODLEI: TStringField;
    cdsTotalSemanaSELOINI: TLargeintField;
    cdsTotalSemanaSELOFIM: TLargeintField;
    cdsTotalSemanaEMOLUNIDADE: TFMTBCDField;
    cdsTotalSemanaVLRFERJ: TFMTBCDField;
    cdsTotalSemanaRECEITASFERJ: TFMTBCDField;
    cdsTotalSemanaVLRFERC: TFMTBCDField;
    cdsTotalSemanaTIPOATO: TStringField;
    dbTotalSemana: TfrxDBDataset;
    cdsDespSemana: TClientDataSet;
    cdsDespSemanaCODIGO: TIntegerField;
    cdsDespSemanaDATA: TDateField;
    cdsDespSemanaDESCRICAO: TStringField;
    cdsDespSemanaCODSUBGRUPODESPSA: TIntegerField;
    cdsDespSemanaSUBGRUPODESPSA: TStringField;
    cdsDespSemanaVALOR: TFMTBCDField;
    cdsDespSemanaCODGRUPODESPESA: TIntegerField;
    cdsDespSemanaGRUPODESPESA: TStringField;
    cdsDespSemanaCARNELEAO: TIntegerField;
    dbDespSemana: TfrxDBDataset;
    procedure spbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RelatorioGetValue(const VarName: string; var Value: Variant);
    procedure RelSemanaGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    boletim: TBoletim;
    despesa: TDespesas;
    tRecitas, tDespesa: Double;
    dtIni, dtFim: TDate;
    datas: TData;
  public
    { Public declarations }
  end;

var
  FRelCaixa: TFRelCaixa;

implementation

{$R *.dfm}

uses uDM;

procedure TFRelCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  calendario.Date := Date;
  boletim := TBoletim.Create;
  despesa := TDespesas.Create;
  datas := TData.Create;
  cdsEmpresa.Close;
  cdsEmpresa.Params[0].AsInteger := 1;
  cdsEmpresa.Open;
end;

procedure TFRelCaixa.RelatorioGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VarName = 'DATA' then
    Value := DateToStr(calendario.Date);
  if VarName = 'TRECEITAS' then
    begin
      tRecitas := boletim.getTotalRecitasFerjDia(calendario.Date);
      Value := tRecitas;
    end;
  if VarName = 'TDESPESAS' then
    begin
      tDespesa := despesa.getTotalDiaFerj(calendario.Date);
      Value := tDespesa;
    end;
  if VarName = 'TTOTAL' then
    Value := tRecitas - tDespesa;
end;

procedure TFRelCaixa.RelSemanaGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VarName = 'DTINI' then
    Value := DateToStr(dtIni);
  if VarName = 'DTFIM' then
    Value := DateToStr(dtFim);
  if VarName = 'TRECEITAS' then
    begin
      tRecitas := boletim.getTotalRecitasFerjSemana(dtIni, dtFim);
      Value := tRecitas;
    end;
  if VarName = 'TDESPESAS' then
    begin
      tDespesa := despesa.getTotalSemanaFerj(dtIni, dtFim);
      Value := tDespesa;
    end;
  if VarName = 'TTOTAL' then
    Value := tRecitas - tDespesa;
end;

procedure TFRelCaixa.spbImprimirClick(Sender: TObject);
begin
  inherited;
  if RadioGroup.ItemIndex = 0 then
    begin
      cdsRelCaixaIndividual.Close;
      cdsRelCaixaIndividual.Params[0].AsDate := calendario.Date;
      cdsRelCaixaIndividual.Open;

      cdsRelCaixaTotalDiario.Close;
      cdsRelCaixaTotalDiario.Params[0].AsDate := calendario.Date;
      cdsRelCaixaTotalDiario.Open;

      cdsDespesas.Close;
      cdsDespesas.Params[0].AsDate := calendario.Date;
      cdsDespesas.Open;
      Relatorio.ShowReport();
    end
  else
    begin
      dtIni := datas.getSegunda(calendario.Date);
      dtFim := datas.getSexta(calendario.Date);

      cdsRelIndSemana.Close;
      cdsRelIndSemana.Params[0].AsDate := dtIni;
      cdsRelIndSemana.Params[1].AsDate := dtFim;
      cdsRelIndSemana.Open;

      cdsTotalSemana.Close;
      cdsTotalSemana.Params[0].AsDate := dtIni;
      cdsTotalSemana.Params[1].AsDate := dtFim;
      cdsTotalSemana.Open;

      cdsDespSemana.Close;
      cdsDespSemana.Params[0].AsDate := dtIni;
      cdsDespSemana.Params[1].AsDate := dtFim;
      cdsDespSemana.Open;
      RelSemana.ShowReport();
    end;
end;

end.
