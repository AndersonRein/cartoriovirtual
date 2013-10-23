unit uAcessoPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, FMTBcd, DB, SqlExpr, Provider,
  DBClient, Datasnap.DSConnect;

type
  TFAcessoCadPadrao = class(TForm)
    gpbCadastro: TGroupBox;
    dbgCadastros: TDBGrid;
    dsConsulta: TDataSource;
    cdsConsulta: TClientDataSet;
    gpbBuscar: TGroupBox;
    lbNomeBuscar: TLabel;
    edNomeBuscar: TEdit;
    btbInserir: TBitBtn;
    btbAlterar: TBitBtn;
    btbExcluir: TBitBtn;
    btbSair: TBitBtn;
    dspConection: TDSProviderConnection;
    procedure btbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edNomeBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure dbgCadastrosDblClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure buscaDados();
    procedure msgSelecReg;
    procedure atualizaGrid;
  end;

var
  FAcessoCadPadrao: TFAcessoCadPadrao;

implementation

uses uDM;
{$R *.dfm}

procedure TFAcessoCadPadrao.atualizaGrid;
begin
cdsConsulta.Refresh;
end;

procedure TFAcessoCadPadrao.btbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFAcessoCadPadrao.buscaDados;
begin
  cdsConsulta.Close;
  cdsConsulta.Params[0].AsString := '%'+ edNomeBuscar.Text + '%';
  cdsConsulta.Open;
  cdsConsulta.Last;
end;

procedure TFAcessoCadPadrao.dbgCadastrosDblClick(Sender: TObject);
begin
 btbAlterar.Click;
end;

procedure TFAcessoCadPadrao.edNomeBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
   buscaDados;
end;

procedure TFAcessoCadPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsConsulta.Close;
  dspConection.Close;
  Action := caFree;
end;

procedure TFAcessoCadPadrao.FormCreate(Sender: TObject);
begin
  buscaDados;
end;

procedure TFAcessoCadPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    btbSairClick(Sender);
end;

procedure TFAcessoCadPadrao.msgSelecReg;
begin
  ShowMessage('Selecione um registro.');
end;

end.
