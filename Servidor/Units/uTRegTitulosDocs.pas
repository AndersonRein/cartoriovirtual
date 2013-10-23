unit uTRegTitulosDocs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TRegTitulosDocs = class

  private

  public
    procedure excluir(codigo: Integer);
    function getProtocolo():Integer;
  end;

implementation

{ TKitSelos }

procedure TRegTitulosDocs.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'DELETE FROM REGTITULOSDOCS WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecSQL;
end;

function TRegTitulosDocs.getProtocolo: Integer;
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'SELECT MAX(PROTOCOLO) AS ORDEM FROM REGTITULOSDOCS';
    sql.Open;
    Result := sql.FieldByName('ORDEM').AsInteger + 1;
    sql.Free;
end;

end.
