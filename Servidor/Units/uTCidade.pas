unit uTCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TCidade = Class
  private

  public
    function getNomeCidade(codigo: Integer): string;
  End;

implementation

{ TCidade }

function TCidade.getNomeCidade(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT NOME FROM CIDADE WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('NOME').AsString;
end;

end.
