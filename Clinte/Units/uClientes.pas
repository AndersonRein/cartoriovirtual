unit uClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uAcessoPadrao, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls,
  Buttons, Grids, DBGrids, uPadrao, uTCliente;

type
  TFClientes = class(TFAcessoCadPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroTELEFONE: TStringField;
    cdsCadastroCIDADE: TStringField;
    cdsCadastroSTATUS: TSmallintField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cliente: TCliente;
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

uses uCadClientes;
{$R *.dfm}

procedure TFClientes.btbAlterarClick(Sender: TObject);
var
  cliente: TFCadClientes;
begin
  inherited;
  cliente := TFCadClientes.Create(nil);
  cliente.alterar(cdsCadastroCODIGO.AsInteger);
  cliente.Free;
  atualizaGrid;
end;

procedure TFClientes.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO,
    'Confirmação', MB_YESNO + MB_ICONQUESTION) = idYES then
  begin
    try
      cliente.excluir(cdsCadastroCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      on E: Exception do
      begin
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA + ' '+ E.Message);
      end;
    end;
  end;
end;

procedure TFClientes.btbInserirClick(Sender: TObject);
var
  cliente: TFCadClientes;
begin
  inherited;
  cliente := TFCadClientes.Create(nil);
  cliente.inserir();
  cliente.Free;
  atualizaGrid;
end;

procedure TFClientes.FormCreate(Sender: TObject);
begin
  inherited;
cliente := TCliente.Create;
end;

procedure TFClientes.FormShow(Sender: TObject);
begin
  inherited;
  edNomeBuscar.SetFocus;
end;

end.
