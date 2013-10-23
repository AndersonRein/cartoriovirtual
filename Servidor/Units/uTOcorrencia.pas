unit uTOcorrencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TOcorrencia = class

  private

  public
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    procedure setOcorrencia(protocolo, ocorencia:Integer);
  end;

implementation

{ TOcorrencia }

procedure TOcorrencia.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'DELETE FROM OCORRENCIA WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecSQL;
end;

function TOcorrencia.getNome(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT NOME FROM OCORRENCIA WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('NOME').AsString;
end;

procedure TOcorrencia.setOcorrencia(protocolo, ocorencia: Integer);
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'UPDATE PROTOCOLO SET OCORRENCIA =:OCORRENCIA, DATAOCORENCIA = CURRENT_DATE WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := ocorencia;
  sql.Params[1].AsInteger := protocolo;
  sql.ExecSQL;
  sql.Free;
end;

end.
