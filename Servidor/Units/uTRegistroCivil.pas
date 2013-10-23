unit uTRegistroCivil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TRegistroCivil = class

  private

  public
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function seqEmUso(seq:Integer):Boolean;
  end;

implementation

{ TUnidadeMedida }

procedure TRegistroCivil.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'DELETE FROM REGISTROCIVIL WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecSQL;
end;

function TRegistroCivil.getNome(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT NOME FROM VREGISTROCIVIL WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('NOME').AsString;
end;

function TRegistroCivil.seqEmUso(seq: Integer): Boolean;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT SEQ FROM VREGISTROCIVIL WHERE SEQ =:SEQ';
  sql.Params[0].AsInteger := seq;
  sql.Open;

  if sql.FieldByName('SEQ').AsInteger > 0 then
    Result := True
 else
    Result := False;

end;

end.
