unit uTFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TFuncionario = class

  private

  public
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function getPermissao(usuario: Integer; campo: string): Boolean;
    function eOPCaixa(usuario: Integer): Boolean;
  end;

implementation

{ TUnidadeMedida }

function TFuncionario.eOPCaixa(usuario: Integer): Boolean;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT OPCAIXA FROM VFUNCIONARIOS WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := usuario;
  sql.Open;

  if sql.FieldByName('OPCAIXA').AsInteger = 1 then
    Result := False
  ELSE
    Result := True;
end;

procedure TFuncionario.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText :=
      'UPDATE FUNCIONARIOS SET STATUS = 0 WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecSQL;
end;

function TFuncionario.getNome(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT NOME FROM VFUNCIONARIOS WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('NOME').AsString;
end;

function TFuncionario.getPermissao(usuario: Integer; campo: string): Boolean;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT ' + campo + ' FROM VFUNCIONARIOS WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := usuario;
  sql.Open;

  if sql.FieldByName(campo).AsInteger = 0 then
    Result := True
  else
    Result := False;
end;

end.
