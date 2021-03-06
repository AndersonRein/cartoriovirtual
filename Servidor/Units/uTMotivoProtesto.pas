unit uTMotivoProtesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TMotivosProtesto = class

  private

  public
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function getDescricao(codigo:Integer):string;
    function protestavel(motivo:Integer):Boolean;
  end;

implementation

{ TMotivoProtesto }

procedure TMotivosProtesto.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'DELETE FROM MOTIVOPROTESTO WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecSQL;
end;

function TMotivosProtesto.getDescricao(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT DESCRICAO FROM VMOTIVOPROTESTO WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('DESCRICAO').AsString;
end;

function TMotivosProtesto.getNome(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT NOME FROM VMOTIVOPROTESTO WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('NOME').AsString;
end;

function TMotivosProtesto.protestavel(motivo: Integer): Boolean;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT CODPROTESTAVEL FROM VMOTIVOPROTESTO WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := motivo;
  sql.Open;

  if sql.FieldByName('CODPROTESTAVEL').AsInteger = 0 then
    Result := True
  else
   Result := False;
end;

end.
