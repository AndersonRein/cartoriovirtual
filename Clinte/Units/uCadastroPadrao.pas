unit uCadastroPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, uPadrao,
  StrUtils, Datasnap.DSConnect;

type
  TFCadastroPadrao = class(TForm)
    gpbCadastro: TGroupBox;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    cdsCadastro: TClientDataSet;
    dsCadastro: TDataSource;
    dspConection: TDSProviderConnection;
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure inserir();
    procedure alterar(codigo: Integer);
  protected
    codigo, modo: Integer;
    procedure abrirCadastro();
    procedure editarCadastro();
    procedure salvar();
  end;

var
  FCadastroPadrao: TFCadastroPadrao;

implementation

{$R *.dfm}

uses uDM;

procedure TFCadastroPadrao.abrirCadastro;
begin
  cdsCadastro.Close;
  cdsCadastro.Params[0].AsInteger := 0;
  cdsCadastro.Open;
  cdsCadastro.Insert;
end;

procedure TFCadastroPadrao.alterar(codigo: Integer);
begin
  modo := 1;
  Self.codigo := codigo;
  editarCadastro;
  Self.ShowModal;
end;

procedure TFCadastroPadrao.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFCadastroPadrao.btSalvarClick(Sender: TObject);
begin
  try
    salvar;
    ShowMessage(SUCESSO);
    if modo = 0 then
      abrirCadastro
    else
      editarCadastro;
  except
    on E: Exception do
      ShowMessage(ERRO + ' '+ E.Message);
  end;
end;

procedure TFCadastroPadrao.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  cdsCadastro.Fields[0].AsInteger := 0;
end;

procedure TFCadastroPadrao.editarCadastro;
begin
  cdsCadastro.Close;
  cdsCadastro.Params[0].AsInteger := codigo;
  cdsCadastro.Open;
  cdsCadastro.Edit;
end;

procedure TFCadastroPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsCadastro.Close;
  dspConection.Close;
  Action := caFree;
end;

procedure TFCadastroPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    btCancelarClick(Sender);
end;

procedure TFCadastroPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFCadastroPadrao.inserir;
begin
  modo := 0;
  abrirCadastro;
  Self.ShowModal;
end;

procedure TFCadastroPadrao.salvar;
begin
  cdsCadastro.Post;
  cdsCadastro.ApplyUpdates(-1);
end;

end.
