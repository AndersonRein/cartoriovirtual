unit uFProtestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.StdCtrls, Vcl.Grids, uTProtesto,
  Vcl.DBGrids, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Vcl.Mask, uTData,
  Vcl.Buttons, Vcl.Menus, frxClass, frxDBSet, frxDMPExport, frxExportPDF,
  Vcl.ComCtrls, frxRich, uTIntimacao, frxChBox, uTOcorrencia, uTBoletim;

type
  TFProtestos = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    dspConnection: TDSProviderConnection;
    edBusca: TEdit;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    edInicio: TMaskEdit;
    edFim: TMaskEdit;
    PopupMenu: TPopupMenu;
    Cadastro1: TMenuItem;
    Cadastro: TfrxReport;
    dbProtesto: TfrxDBDataset;
    cdsGetProtesto: TClientDataSet;
    dbTitulos: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    PageControl1: TPageControl;
    TbsProtesto: TTabSheet;
    GroupBox2: TGroupBox;
    DBGridProtestos: TDBGrid;
    impProtesto: TfrxReport;
    Protesto1: TMenuItem;
    RichObject: TfrxRichObject;
    GroupBox3: TGroupBox;
    dbAddProtesto: TBitBtn;
    btbEditaProt: TBitBtn;
    btbImpIntimacao: TBitBtn;
    btbIntimar: TBitBtn;
    dspConnecIntimacao: TDSProviderConnection;
    dsConsIntimacao: TDataSource;
    impIntimacao: TfrxReport;
    dbIntimacao: TfrxDBDataset;
    cdsGetProtestoCODIGO: TIntegerField;
    cdsGetProtestoCODAPRESENTATE: TIntegerField;
    cdsGetProtestoAPRESENTANTE: TStringField;
    cdsGetProtestoENDERECO: TStringField;
    cdsGetProtestoNUMERO: TStringField;
    cdsGetProtestoBAIRRO: TStringField;
    cdsGetProtestoCIDADE: TStringField;
    cdsGetProtestoUF: TStringField;
    cdsGetProtestoCPF_CNPJ: TStringField;
    cdsGetProtestoTELEFONE: TStringField;
    cdsGetProtestoCELULAR: TStringField;
    cdsGetProtestoCODDEVEDOR: TIntegerField;
    cdsGetProtestoDEVEDOR: TStringField;
    cdsGetProtestoENDERECODEV: TStringField;
    cdsGetProtestoNUMERODEV: TStringField;
    cdsGetProtestoBAIRRODEV: TStringField;
    cdsGetProtestoCIDADEDEV: TStringField;
    cdsGetProtestoUFDEV: TStringField;
    cdsGetProtestoCPF_CNPJDEV: TStringField;
    cdsGetProtestoTELEFONEDEV: TStringField;
    cdsGetProtestoCELULARDEV: TStringField;
    cdsGetProtestoPROTOCOLO: TIntegerField;
    cdsGetProtestoVALORPROTESTO: TFMTBCDField;
    cdsGetProtestoVENCIMENTO: TDateField;
    cdsGetProtestoNUMTITULO: TStringField;
    cdsGetProtestoCADASTRO: TDateField;
    cdsGetProtestoSELO: TStringField;
    EditalProtesto: TfrxReport;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaCODAPRESENTANTE: TIntegerField;
    cdsConsultaAPRESENTANTE: TStringField;
    cdsConsultaCADASTRO: TDateField;
    cdsConsultaCODDEVEDOR: TIntegerField;
    cdsConsultaDEVEDOR: TStringField;
    cdsConsultaCODFALIMENTAR: TSmallintField;
    cdsConsultaFALIMENTAR: TStringField;
    cdsConsultaCODMOTIVOPROTESTO: TIntegerField;
    cdsConsultaMOTIVOPROTESTO: TStringField;
    cdsConsultaNUMTITULO: TStringField;
    cdsConsultaPROTOCOLO: TIntegerField;
    cdsConsultaCODSTATUS: TSmallintField;
    cdsConsultaSTATUS: TStringField;
    cdsConsultaCODTITULO: TIntegerField;
    cdsConsultaTITULO: TStringField;
    cdsConsultaCODUSUARIO: TIntegerField;
    cdsConsultaUSUARIO: TStringField;
    cdsConsultaVALORPROTESTO: TFMTBCDField;
    cdsConsultaVENCIMENTO: TDateField;
    cdsConsultaSEQPROTOCOLO: TIntegerField;
    cdsConsIntimacao: TClientDataSet;
    cdsConsIntimacaoCODIGO: TIntegerField;
    cdsConsIntimacaoCODACEITE: TSmallintField;
    cdsConsIntimacaoACEITE: TStringField;
    cdsConsIntimacaoCONCLUSAO: TDateField;
    cdsConsIntimacaoDATA: TDateField;
    cdsConsIntimacaoPROTESTO: TIntegerField;
    cdsConsIntimacaoCOD_APRESENTANTE: TIntegerField;
    cdsConsIntimacaoAPRESENTANTE: TStringField;
    cdsConsIntimacaoCPF_CNPJ_APRESENTANTE: TStringField;
    cdsConsIntimacaoEND_APRESENTANTE: TStringField;
    cdsConsIntimacaoNUM_APRESENTANTE: TStringField;
    cdsConsIntimacaoBAIRRO_APRESENTANTE: TStringField;
    cdsConsIntimacaoCOD_CIDADE_APRESENTANTE: TIntegerField;
    cdsConsIntimacaoCIDADE_APRESENTANTE: TStringField;
    cdsConsIntimacaoUF_APRESENTANTE: TStringField;
    cdsConsIntimacaoCOD_DEVEDOR: TIntegerField;
    cdsConsIntimacaoDEVEDOR: TStringField;
    cdsConsIntimacaoCPF_CNPJ_DEVEDOR: TStringField;
    cdsConsIntimacaoEND_DEVEDOR: TStringField;
    cdsConsIntimacaoNUM_DEVEDOR: TStringField;
    cdsConsIntimacaoBAIRRO_DEVEDOR: TStringField;
    cdsConsIntimacaoCOD_CIDADE_DEVEDOR: TIntegerField;
    cdsConsIntimacaoCIDADE_DEVEDOR: TStringField;
    cdsConsIntimacaoUF_DEVEDOR: TStringField;
    cdsConsIntimacaoPROTOCOLO: TIntegerField;
    cdsConsIntimacaoSEQPROTOCOLO: TIntegerField;
    cdsConsIntimacaoSELO1: TStringField;
    cdsConsIntimacaoSELO2: TStringField;
    cdsConsIntimacaoCODSTATUS: TSmallintField;
    cdsConsIntimacaoSTATUS: TStringField;
    cdsConsIntimacaoVALORPROTESTO: TFMTBCDField;
    cdsConsIntimacaoVENCIMENTO: TDateField;
    cdsConsIntimacaoNUMTITULO: TStringField;
    cdsConsIntimacaoTITULO: TStringField;
    btbConcluirInt: TBitBtn;
    btbEdital: TBitBtn;
    btbProtestar: TBitBtn;
    btbImpProtesto: TBitBtn;
    cdsGetProtestoCODMOVITOPROTESTO: TIntegerField;
    cdsGetProtestoMOTIVOPROTESTO: TStringField;
    cdsConsultaEDITAL: TIntegerField;
    cdsGetProtestoEDITAL: TIntegerField;
    cdsGetProtestoPROTESTO: TIntegerField;
    cdsConsIntimacaoTIPOCUMPRIMENTO: TSmallintField;
    CheckBoxObject: TfrxCheckBoxObject;
    cdsGetProtestoTITULO: TStringField;
    cdsGetProtestoACEITE: TStringField;
    cdsConsultaDIAPROTESTO: TDateField;
    btbOcorrencia: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure dbAddProtestoClick(Sender: TObject);
    procedure edBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btbEditaProtClick(Sender: TObject);
    procedure CadastroGetValue(const VarName: string; var Value: Variant);
    procedure impProtestoGetValue(const VarName: string; var Value: Variant);
    procedure DBGridProtestosDblClick(Sender: TObject);
    procedure DBGridProtestosKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btbIntimarClick(Sender: TObject);
    procedure impIntimacaoGetValue(const VarName: string; var Value: Variant);
    procedure EditalProtestoGetValue(const VarName: string; var Value: Variant);
    procedure btbImpIntimacaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btbConcluirIntClick(Sender: TObject);
    procedure cdsConsultaAfterScroll(DataSet: TDataSet);
    procedure DBGridProtestosCellClick(Column: TColumn);
    procedure btbImpProtestoClick(Sender: TObject);
    procedure btbProtestarClick(Sender: TObject);
    procedure btbOcorrenciaClick(Sender: TObject);
    procedure btbEditalClick(Sender: TObject);
  private
    { Private declarations }
    data: TData;
    intimacao: TIntimacao;
    protesto: TProtesto;
    ocorencia: TOcorrencia;
    boletim: TBoletim;
    procedure buscar();
    procedure mostraIntimacao();
    procedure bloquearBotoes();
  public
    { Public declarations }
  end;

var
  FProtestos: TFProtestos;

implementation

{$R *.dfm}

uses uDM, uCadProtesto, uPadrao, uIntimar, uTTransacoes, uConclusaoIntimacao,
  uSelecOcorrencia, uCadBoletim;

procedure TFProtestos.bloquearBotoes;
begin
//Cadastro
  if cdsConsultaCODSTATUS.AsInteger = 0 then
    begin
      btbIntimar.Enabled := True;
      btbConcluirInt.Enabled := False;
      btbImpIntimacao.Enabled := False;
      btbEdital.Enabled := False;
 //     btbProtestar.Enabled := False;
      btbImpProtesto.Enabled := False;
    end;
//Aguardando conclus�o
  if cdsConsultaCODSTATUS.AsInteger = 1 then
    begin
      btbIntimar.Enabled := False;
      btbConcluirInt.Enabled := True;
      btbImpIntimacao.Enabled := True;
      btbEdital.Enabled := False;
  //    btbProtestar.Enabled := False;
      btbImpProtesto.Enabled := False;
    end;
//Intimado
  if cdsConsultaCODSTATUS.AsInteger = 2 then
    begin
      btbIntimar.Enabled := False;
      btbConcluirInt.Enabled := False;
      btbImpIntimacao.Enabled := True;
      btbEdital.Enabled := False;
      btbEditaProt.Enabled := False;
  //    btbProtestar.Enabled := True;
      btbImpProtesto.Enabled := False;
    end;
//Edital
  if cdsConsultaCODSTATUS.AsInteger = 3 then
    begin
      btbIntimar.Enabled := False;
      btbConcluirInt.Enabled := False;
      btbEditaProt.Enabled := False;
      btbImpIntimacao.Enabled := True;
      btbEdital.Enabled := True;
  //    btbProtestar.Enabled := True;
      btbImpProtesto.Enabled := False;
    end;
 //Protestado
  if cdsConsultaCODSTATUS.AsInteger = 4 then
    begin
      btbIntimar.Enabled := False;
      btbEditaProt.Enabled := False;
      btbConcluirInt.Enabled := False;
      btbImpIntimacao.Enabled := False;
      btbEdital.Enabled := True;
      btbProtestar.Enabled := False;
      btbImpProtesto.Enabled := True;
    end;
  if cdsConsultaCODSTATUS.AsInteger < 4 then
     begin
      if (cdsConsultaDIAPROTESTO.AsDateTime <= Date) and ((cdsConsultaCODSTATUS.AsInteger = 2) or (cdsConsultaCODSTATUS.AsInteger = 3)) then
        btbProtestar.Enabled := True
      else
        btbProtestar.Enabled := False;
     end;
end;

procedure TFProtestos.btbConcluirIntClick(Sender: TObject);
var
conclusao: TFConclusaoIntimacao;
begin
  inherited;
  cdsConsIntimacao.Close;
  cdsConsIntimacao.Params[0].AsInteger := cdsConsultaCODIGO.AsInteger;
  cdsConsIntimacao.Open;

  if cdsConsultaCODSTATUS.AsInteger <> 1 then
    begin
      Application.MessageBox(PwideChar('Este protesto n�o esta intimado!'),'Aviso',MB_ICONEXCLAMATION);
      Exit;
    end;

  if not cdsConsIntimacaoCONCLUSAO.IsNull then
    begin
      Application.MessageBox(PwideChar('A intima��o deste protesto j� foi concluida!'),'Aviso',MB_ICONEXCLAMATION);
      Exit;
    end;

  if Application.MessageBox(DESEJA_REALMENTE_EXECUTAR_ESTA_OPERACAO,'Confirma��o', MB_YESNO + MB_ICONQUESTION) = ID_YES then
     begin
       try
        conclusao := TFConclusaoIntimacao.Create(nil);
        conclusao.new(cdsConsultaAPRESENTANTE.AsString, cdsConsultaDEVEDOR.AsString);
        if conclusao.getCancelou then
        begin
          conclusao.Free;
          Exit;
        end;
        TTransacao.start;
        if conclusao.getTipoConclusao <= 1 then
          intimacao.concluir(cdsConsIntimacaoCODIGO.AsInteger, conclusao.getTipoConclusao, cdsConsultaCODIGO.AsInteger, conclusao.getData, DateToStr(getDiaProtesto))
        else
        begin
          intimacao.concluir(cdsConsIntimacaoCODIGO.AsInteger, conclusao.getTipoConclusao, cdsConsultaCODIGO.AsInteger, DateToStr(getDiaProtesto));
        end;
        TTransacao.commit;
        ShowMessage(SUCESSO);
        cdsConsulta.Refresh;
       except
        on E: Exception do
          begin
            if TTransacao.isStarted then
              TTransacao.rollback;
            ShowMessage(ERRO + ' '+ E.Message);
          end;
       end;
     end;
end;

procedure TFProtestos.btbEditalClick(Sender: TObject);
begin
  inherited;
 cdsConsIntimacao.Close;
 cdsConsIntimacao.Params[0].AsInteger := cdsConsultaCODIGO.AsInteger;
 cdsConsIntimacao.Open;
 EditalProtesto.ShowReport();
end;

procedure TFProtestos.btbEditaProtClick(Sender: TObject);
var
protesto: TFCadProtesto;
begin
  inherited;
  protesto := TFCadProtesto.Create(nil);
  protesto.alterar(cdsConsultaCODIGO.AsInteger);
  protesto.Free;
  cdsConsulta.Refresh;
end;

procedure TFProtestos.btbImpIntimacaoClick(Sender: TObject);
begin
  inherited;
 cdsConsIntimacao.Close;
 cdsConsIntimacao.Params[0].AsInteger := cdsConsultaCODIGO.AsInteger;
 cdsConsIntimacao.Open;
 impIntimacao.ShowReport();
end;

procedure TFProtestos.btbImpProtestoClick(Sender: TObject);
begin
  inherited;
 cdsGetProtesto.Close;
 cdsGetProtesto.Params[0].AsInteger := cdsConsultaCODIGO.AsInteger;
 cdsGetProtesto.Open;

 impProtesto.ShowReport();
end;

procedure TFProtestos.btbIntimarClick(Sender: TObject);
var
intimar: TFIntimar;
cadBoletim: TFCadBoletim;
begin
  inherited;
  if boletim.getBoletim = 0 then
    begin
     if  Application.MessageBox('O registro de boletim n�o esta aberto, deseja fazelo agora?','Informa��o',MB_YESNO + MB_ICONQUESTION) = IDYES then
      begin
         cadBoletim := TFCadBoletim.Create(nil);
         cadBoletim.inserir;
         cadBoletim.Free;
         if boletim.getBoletim = 0 then
           Exit;
      end
     else
        Exit;
    end;

  if cdsConsultaCODSTATUS.AsInteger = 1 then
    begin
      Application.MessageBox(PWideChar('Este t�tulo j� esta intimado!'),'Aviso',MB_ICONEXCLAMATION);
      Exit;
    end;
  if Application.MessageBox(DESEJA_REALMENTE_EXECUTAR_ESTA_OPERACAO,'Confirma��o', MB_YESNO + MB_ICONQUESTION) = ID_YES then
     begin
      try
        intimar := TFIntimar.Create(nil);
        intimar.new(cdsConsultaAPRESENTANTE.AsString, cdsConsultaDEVEDOR.AsString, cdsConsultaSEQPROTOCOLO.AsString);
        if intimar.getCancelou then
          begin
            intimar.Free;
            Exit;
          end;
        TTransacao.start;
        intimacao.intimar(cdsConsultaCODIGO.AsInteger, intimar.getAceite, intimar.getSelo, cdsConsultaPROTOCOLO.AsInteger, 0);
        boletim.lancIndividual(intimar.getFerj, intimar.getSelo, intimar.getFormaPag, cdsConsultaSEQPROTOCOLO.AsInteger);
        TTransacao.commit;
        ShowMessage(SUCESSO);
        cdsConsulta.Refresh;
      except
        on E: Exception do
          begin
            if TTransacao.isStarted then
              TTransacao.rollback;
            ShowMessage(ERRO + ' '+E.Message);
          end;
      end;
     end;
end;

procedure TFProtestos.btbOcorrenciaClick(Sender: TObject);
var
ocorrencia: TFSelecOcorrencia;
begin
  inherited;
  ocorrencia := TFSelecOcorrencia.Create(nil);
  ocorrencia.ShowModal;
  if ocorrencia.getCancelou then
    Exit;
  try
     ocorencia.setOcorrencia(cdsConsultaPROTOCOLO.AsInteger, ocorrencia.getOcorrencia);
     ShowMessage(SUCESSO);
     cdsConsulta.Refresh;
  except
     on E: Exception do
      begin
       Application.MessageBox(PWideChar(ERRO+' '+E.Message),'Aviso',MB_ICONQUESTION);
      end;
  end;

end;

procedure TFProtestos.btbProtestarClick(Sender: TObject);
var
protestar : TFIntimar;
begin
  inherited;
  cdsConsIntimacao.Close;
  cdsConsIntimacao.Params[0].AsInteger := cdsConsultaCODIGO.AsInteger;
  cdsConsIntimacao.Open;

  if cdsConsultaCODSTATUS.AsInteger = 4 then
    begin
      Application.MessageBox(PWideChar('Este t�tulo j� esta protestado!'),'Aviso',MB_ICONEXCLAMATION);
      Exit;
    end;
  if Application.MessageBox(DESEJA_REALMENTE_EXECUTAR_ESTA_OPERACAO,'Confirma��o', MB_YESNO + MB_ICONQUESTION) = ID_YES then
  begin
    try
        protestar := TFIntimar.Create(nil);
        protestar.protestar(cdsConsultaAPRESENTANTE.AsString, cdsConsultaDEVEDOR.AsString, cdsConsultaSEQPROTOCOLO.AsString, cdsConsultaVALORPROTESTO.AsFloat);
        if protestar.getCancelou then
          begin
            protestar.Free;
            Exit;
          end;
        TTransacao.start;
        protesto.protestar(cdsConsultaCODIGO.AsInteger, cdsConsIntimacaoCODACEITE.AsInteger, 0,cdsConsultaSEQPROTOCOLO.AsInteger, protestar.getSelo);
        boletim.lancIndividual(protestar.getFerj, protestar.getSelo, protestar.getFormaPag, cdsConsultaSEQPROTOCOLO.AsInteger);
        TTransacao.commit;
        ShowMessage(SUCESSO);
        cdsConsulta.Refresh;
    except
        on E: Exception do
          begin
            if TTransacao.isStarted then
              TTransacao.rollback;
            ShowMessage(ERRO + ' '+E.Message);
          end;
    end;
  end;
end;

procedure TFProtestos.buscar;
begin
cdsConsulta.Close;
cdsConsulta.Params[0].AsDate := StrToDate(edInicio.Text);
cdsConsulta.Params[1].AsDate := StrToDate(edFim.Text);
cdsConsulta.Params[2].AsString := '%'+edBusca.Text+'%';
cdsConsulta.Params[3].AsString := '%'+edBusca.Text+'%';
cdsConsulta.Params[4].AsString := '%'+edBusca.Text+'%';
cdsConsulta.Open;
cdsConsulta.Last;
end;

procedure TFProtestos.dbAddProtestoClick(Sender: TObject);
var
protesto: TFCadProtesto;
begin
  inherited;
  protesto := TFCadProtesto.Create(nil);
  protesto.inserir;
  protesto.Free;
  cdsConsulta.Refresh;
end;

procedure TFProtestos.DBGridProtestosCellClick(Column: TColumn);
begin
  inherited;
 bloquearBotoes;
end;

procedure TFProtestos.DBGridProtestosDblClick(Sender: TObject);
begin
  inherited;
  btbEditaProt.Click;
end;

procedure TFProtestos.DBGridProtestosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    btbEditaProt.Click;
end;

procedure TFProtestos.edBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    buscar;
end;

procedure TFProtestos.EditalProtestoGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
 if VarName = 'CARTORIO' then
  Value := empresa.getNome;
 if VarName = 'RESPONSAVEL' then
  Value := empresa.getResponsavel;
 if VarName = 'ATO' then
  Value := empresa.getAto;
 if VarName = 'DATA' then
  Value := data.getDataExtenso(Date);
 if VarName = 'VALOR' then
  Value := FormatFloat('###,##0.00', cdsConsIntimacaoVALORPROTESTO.AsFloat);
end;

procedure TFProtestos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if TTransacao.isStarted then
    TTransacao.rollback;
  inherited;
cdsConsulta.Close;
cdsGetProtesto.Close;
end;

procedure TFProtestos.FormCreate(Sender: TObject);
begin
  inherited;
 intimacao := TIntimacao.Create;
 protesto := TProtesto.Create;
 ocorencia := TOcorrencia.Create;
 boletim := TBoletim.Create;
end;

procedure TFProtestos.FormShow(Sender: TObject);
begin
  inherited;
 edInicio.Text := DateToStr(Date - 30);
 edFim.Text := DateToStr(Date);
 buscar;
end;

procedure TFProtestos.impIntimacaoGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
 if VarName = 'CARTORIO' then
  Value := empresa.getNome;
 if VarName = 'RESPONSAVEL' then
  Value := empresa.getResponsavel;
 if VarName = 'ATO' then
  Value := empresa.getAto;
 if VarName = 'VALOR' then
  Value := FormatFloat('###,##0.00', cdsConsIntimacaoVALORPROTESTO.AsFloat);
 if VarName = 'DATA' then
  Value := data.getDataExtenso(Date);
end;

procedure TFProtestos.mostraIntimacao;
begin
cdsConsIntimacao.Close;
cdsConsIntimacao.Open;
end;

procedure TFProtestos.impProtestoGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
 if VarName = 'CARTORIO' then
  Value := empresa.getNome;
 if VarName = 'RESPONSAVEL' then
  Value := empresa.getResponsavel;
 if VarName = 'ATO' then
  Value := empresa.getAto;
 if VarName = 'FUNCIONARIA' then
  Value := usuario.getNomeCompleto;
 if VarName = 'FUNCAO' then
  Value := usuario.getFuncao;
 if VarName = 'VALOR' then
  Value := FormatFloat('###,###,##0.00', cdsConsultaVALORPROTESTO.AsFloat);
 if VarName = 'DATA' then
  Value := data.getDataExtenso(Date);
end;

procedure TFProtestos.CadastroGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
 if VarName = 'CARTORIO' then
  Value := empresa.getNome;
 if VarName = 'RESPONSAVEL' then
  Value := empresa.getResponsavel;
 if VarName = 'ATO' then
  Value := empresa.getAto;
 if VarName = 'FUNCIONARIA' then
  Value := usuario.getNomeCompleto;
 if VarName = 'PORTARIA' then
  Value := usuario.getPortaria;
 if VarName = 'FUNCAO' then
  Value := usuario.getFuncao;
end;

procedure TFProtestos.cdsConsultaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  bloquearBotoes;
end;

end.
