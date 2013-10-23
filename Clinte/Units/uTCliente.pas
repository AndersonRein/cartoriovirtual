unit uTCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB;

type
 TCliente = Class
   private

   public
   function getNomeCliente(codigo: Integer): string;
   function getNascimento(codigo: Integer):Tdate;
   procedure excluir(codigo: Integer);
 End;

implementation

{ TFCliente }

procedure TCliente.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'DELETE FROM CLIENTES WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.ExecSQL;
end;

function TCliente.getNascimento(codigo: Integer): Tdate;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT NASCIMENTO FROM VCLIENTES WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('NASCIMENTO').AsDateTime;
end;

function TCliente.getNomeCliente(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT NOME FROM VCLIENTES WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('NOME').AsString;
end;

end.
