unit uFuncionario;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uAcessoPadrao, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls,
  Buttons, Grids, DBGrids, uTFuncionario, Datasnap.DSConnect;

type
  TFFuncionario = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaENDERECO: TStringField;
    cdsConsultaNUMERO: TStringField;
    cdsConsultaBAIRRO: TStringField;
    cdsConsultaNASCIMENTO: TDateField;
    cdsConsultaADMISSAO: TDateField;
    cdsConsultaTELEFONE: TStringField;
    cdsConsultaSTATUS: TSmallintField;
    cdsConsultaCELULAR: TStringField;
    cdsConsultaRG: TStringField;
    cdsConsultaCPF: TStringField;
    cdsConsultaCEP: TStringField;
    cdsConsultaCODCIDADE: TIntegerField;
    cdsConsultaCIDADE: TStringField;
    cdsConsultaUF: TStringField;
    cdsConsultaPORTARIA: TStringField;
    cdsConsultaFUNCAO: TStringField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    funcionario: TFuncionario;
  public
    { Public declarations }
  end;

var
  FFuncionario: TFFuncionario;

implementation

uses uDM, uPadrao, uCadFuncionarios;

{$R *.dfm}

procedure TFFuncionario.btbAlterarClick(Sender: TObject);
var
  funcionario: TFCadFuncionarios;
begin
  inherited;
  funcionario := TFCadFuncionarios.Create(nil);
  funcionario.alterar(cdsConsultaCODIGO.AsInteger);
  funcionario.Free;
  atualizaGrid;
end;

procedure TFFuncionario.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    try
      funcionario.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFFuncionario.btbInserirClick(Sender: TObject);
var
  funcionario: TFCadFuncionarios;
begin
  inherited;
  funcionario := TFCadFuncionarios.Create(nil);
  funcionario.inserir;
  funcionario.Free;
  atualizaGrid;
end;

procedure TFFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  funcionario := TFuncionario.Create;
end;

procedure TFFuncionario.FormKeyDown(Sender: TObject; var Key: Word;
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
