unit uTUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB;

type
  TUsuario = Class
  private
    nome, nomeCompleto, funcao, portaria: string;
    codigo: Integer;
  public
    function getNome():string;
    procedure setNome(nome: string);
    procedure setCodigo(codigo: Integer);
    function getCodigo():Integer;
    procedure desativar(codigo:Integer);
    procedure setNomeCompleto(nome:string);
    function getNomeCompleto():string;
    procedure setFuncao(funcao:string);
    function  getFuncao():string;
    procedure setPortaria(portaria:string);
    function getPortaria():string;
  End;

implementation

{ TFCliente }

function TUsuario.getNome: string;
begin
Result := nome;
end;

function TUsuario.getNomeCompleto: string;
begin
Result := nomeCompleto;
end;

function TUsuario.getPortaria: string;
begin
Result := portaria;
end;

procedure TUsuario.desativar(codigo: Integer);
var
sql: TSqlServerMethod;
begin
sql := TSqlServerMethod.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.ServerMethodName := 'TsmUsuario.desativar';
sql.Params[0].AsInteger := codigo;
sql.ExecuteMethod;
sql.Free;
end;

function TUsuario.getCodigo: Integer;
begin
Result := codigo;
end;

function TUsuario.getFuncao: string;
begin
Result := funcao;
end;

procedure TUsuario.setCodigo(codigo: Integer);
begin
  Self.codigo := codigo;
end;

procedure TUsuario.setFuncao(funcao: string);
begin
Self.funcao := funcao;
end;

procedure TUsuario.setNome(nome: string);
begin
  Self.nome := nome;
end;

procedure TUsuario.setNomeCompleto(nome: string);
begin
Self.nomeCompleto := nome;
end;

procedure TUsuario.setPortaria(portaria: string);
begin
Self.portaria := portaria;
end;

end.
