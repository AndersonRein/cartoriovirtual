unit uRegistroCivil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uTRegistroCivil, uTAutografo,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFRegistroCivil = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaENDERECO: TStringField;
    cdsConsultaNUMERO: TStringField;
    cdsConsultaBAIRRO: TStringField;
    cdsConsultaNASCIMENTO: TDateField;
    cdsConsultaRG_IE: TStringField;
    cdsConsultaCPF_CNPJ: TStringField;
    cdsConsultaPROFISSAO: TStringField;
    cdsConsultaNACIONALIDADE: TStringField;
    cdsConsultaCADASTRO: TDateField;
    cdsConsultaCELULAR: TStringField;
    cdsConsultaEMAIL: TStringField;
    cdsConsultaCEP: TStringField;
    cdsConsultaCODCIDADE: TIntegerField;
    cdsConsultaCIDADE: TStringField;
    cdsConsultaUF: TStringField;
    cdsConsultaPESSOA: TSmallintField;
    cdsConsultaTELEFONE: TStringField;
    cdsConsultaCODESTADOCIVIL: TSmallintField;
    cdsConsultaESTADOCIVIL: TStringField;
    cdsConsultaSEQ: TStringField;
    cdsConsultaIMAGEM1: TBlobField;
    cdsConsultaIMAGEM2: TBlobField;
    cdsConsultaIMAGEM3: TBlobField;
    cdsConsultaIMAGEM4: TBlobField;
    cdsConsultaCODREGIMECASAMENTO: TSmallintField;
    cdsConsultaREGIMECASAMENTO: TStringField;
    btbExportar: TBitBtn;
    cdsExportar: TClientDataSet;
    cdsExportarCODIGO: TIntegerField;
    cdsExportarNOME: TStringField;
    cdsExportarENDERECO: TStringField;
    cdsExportarNUMERO: TStringField;
    cdsExportarBAIRRO: TStringField;
    cdsExportarNASCIMENTO: TDateField;
    cdsExportarRG_IE: TStringField;
    cdsExportarCPF_CNPJ: TStringField;
    cdsExportarPROFISSAO: TStringField;
    cdsExportarNACIONALIDADE: TStringField;
    cdsExportarCADASTRO: TDateField;
    cdsExportarCELULAR: TStringField;
    cdsExportarEMAIL: TStringField;
    cdsExportarCEP: TStringField;
    cdsExportarCIDADE: TIntegerField;
    cdsExportarPESSOA: TSmallintField;
    cdsExportarTELEFONE: TStringField;
    cdsExportarSEQ: TStringField;
    cdsExportarESTADOCIVIL: TSmallintField;
    cdsExportarIMAGEM1: TBlobField;
    cdsExportarIMAGEM2: TBlobField;
    cdsExportarIMAGEM3: TBlobField;
    cdsExportarIMAGEM4: TBlobField;
    cdsExportarCONJUGE: TIntegerField;
    cdsExportarREGIMECASAMENTO: TSmallintField;
    cdsExportarREGISTROCASAMENTO: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbExportarClick(Sender: TObject);
    procedure cdsExportarNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    registroCivil: TRegistroCivil;
    autografo: TAutografo;
  public
    { Public declarations }
  end;

var
  FRegistroCivil: TFRegistroCivil;

implementation

{$R *.dfm}

uses uPadrao, uCadRegistroCivil;

procedure TFRegistroCivil.btbAlterarClick(Sender: TObject);
var
registro: TFCadRegistroCivil;
begin
  inherited;
  registro := TFCadRegistroCivil.Create(nil);
  registro.alterar(cdsConsultaCODIGO.AsInteger);
  registro.Free;
  cdsConsulta.Refresh;
end;

procedure TFRegistroCivil.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    try
       registroCivil.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFRegistroCivil.btbExportarClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Em construção');
  Exit;
  if Application.MessageBox(DESEJA_REALMENTE_EXECUTAR_ESTA_OPERACAO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    if autografo.registrado(cdsConsultaCPF_CNPJ.AsString) then
       begin
         ShowMessage('Já existe um cadastro com o mesmo CPF!');
         Exit;
       end;
  try
    cdsExportar.Close;
    cdsExportar.Params[0].AsInteger := 0;
    cdsExportar.Open;
    cdsExportar.Insert;
    cdsExportarNOME.AsString := cdsConsultaNOME.AsString;
    cdsExportarENDERECO.AsString := cdsConsultaENDERECO.AsString;
    cdsExportarNUMERO.AsString := cdsConsultaNUMERO.AsString;
    cdsExportarBAIRRO.AsString := cdsConsultaBAIRRO.AsString;
    cdsExportarNASCIMENTO.AsDateTime := cdsConsultaNASCIMENTO.AsDateTime;
    cdsExportarRG_IE.AsString := cdsConsultaRG_IE.AsString;
    cdsExportarCPF_CNPJ.AsString := cdsConsultaCPF_CNPJ.AsString;
    cdsExportarPROFISSAO.AsString := cdsConsultaPROFISSAO.AsString;
    cdsExportarNACIONALIDADE.AsString := cdsConsultaNACIONALIDADE.AsString;
    cdsExportarCELULAR.AsString := cdsConsultaCELULAR.AsString;
    cdsExportarEMAIL.AsString := cdsConsultaEMAIL.AsString;
    cdsExportarCEP.AsString := cdsConsultaCEP.AsString;
    cdsExportarCIDADE.AsInteger := cdsConsultaCODCIDADE.AsInteger;
    cdsExportarPESSOA.AsInteger := cdsConsultaPESSOA.AsInteger;
    cdsExportarTELEFONE.AsString := cdsConsultaTELEFONE.AsString;
    cdsExportarESTADOCIVIL.asInteger := cdsConsultaCODESTADOCIVIL.AsInteger;
    cdsExportarREGIMECASAMENTO.AsInteger := cdsConsultaCODREGIMECASAMENTO.AsInteger;
    cdsExportar.Post;
    cdsExportar.ApplyUpdates(-1);
    ShowMessage(SUCESSO);
  except
    on E: Exception do
      ShowMessage(ERRO + ' '+E.Message);
  end;
  end;
end;

procedure TFRegistroCivil.btbInserirClick(Sender: TObject);
var
registro: TFCadRegistroCivil;
begin
  inherited;
  registro := TFCadRegistroCivil.Create(nil);
  registro.inserir;
  registro.Free;
  cdsConsulta.Refresh;
end;

procedure TFRegistroCivil.cdsExportarNewRecord(DataSet: TDataSet);
begin
  inherited;
 cdsExportarCODIGO.AsInteger := 0;
end;

procedure TFRegistroCivil.FormCreate(Sender: TObject);
begin
  inherited;
 registroCivil := TRegistroCivil.Create;
 autografo := TAutografo.Create;
end;

procedure TFRegistroCivil.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
