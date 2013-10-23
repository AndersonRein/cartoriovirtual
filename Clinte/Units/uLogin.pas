unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoVazio, FMTBcd, Provider, DBClient, DB, SqlExpr, StdCtrls,
  Buttons, jpeg, ExtCtrls, DSConnect;

type
  TFLogin = class(TFPadraoVazio)
    cdsLogin: TClientDataSet;
    spbLogar: TSpeedButton;
    spbCancelar: TSpeedButton;
    Image: TImage;
    edUsuario: TEdit;
    edSenha: TEdit;
    pcPadrao: TDSProviderConnection;
    cdsLoginCODIGO: TIntegerField;
    cdsLoginCODFUNCIONARIO: TIntegerField;
    cdsLoginFUNCIONARIO: TStringField;
    cdsLoginUSUARIO: TStringField;
    cdsLoginSENHA: TStringField;
    cdsLoginCODSTATUS: TSmallintField;
    cdsLoginSTATUS: TStringField;
    cdsLoginFUNCAO: TStringField;
    cdsLoginPORTARIA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btbCancelarClick(Sender: TObject);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure spbLogarClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
  private
    { Private declarations }
    logado: Boolean;
  public
    { Public declarations }
    function getLogado: Boolean;
  end;

var
  FLogin: TFLogin;

implementation

uses uPadrao, uDM;
{$R *.dfm}

procedure TFLogin.btbCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
  inherited;
  logado := False;
end;

function TFLogin.getLogado: Boolean;
begin
  Result := logado;
end;

procedure TFLogin.spbCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFLogin.spbLogarClick(Sender: TObject);
begin
  inherited;
  cdsLogin.Close;
  cdsLogin.Params[0].AsString := edUsuario.Text;
  cdsLogin.Params[1].AsString := edSenha.Text;
  cdsLogin.Open;

  if cdsLogin.RecordCount = 0 then
    begin
    ShowMessage('Usuário ou senha incorreto.');
    Exit;
    end
  else
  begin
    Usuario.setCodigo(cdsLoginCODIGO.AsInteger);
    Usuario.setNome(cdsLoginUSUARIO.AsString);
    usuario.setNomeCompleto(cdsLoginFUNCIONARIO.AsString);
    usuario.setFuncao(cdsLoginFUNCAO.AsString);
    usuario.setPortaria(cdsLoginPORTARIA.AsString);
    logado := True;
    Close;
  end;
end;

procedure TFLogin.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    spbLogarClick(Sender);
end;

procedure TFLogin.edUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    edSenha.SetFocus;
end;

end.
