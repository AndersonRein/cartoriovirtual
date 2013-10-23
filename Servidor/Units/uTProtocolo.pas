unit uTProtocolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TProtocolo = class

  private

  public
      function protocolarProtesto(apresentante, devedor, usuario, ocorencia:Integer):Integer;
  end;

implementation

{ TUnidadeMedida }

uses uServerMethods;


{ TProtocolo }

function TProtocolo.protocolarProtesto(apresentante, devedor, usuario, ocorencia: Integer): Integer;
var
  sql: TSQLDataSet;
  sm: TServerMethods;
  codigo: Integer;
begin
  sm := TServerMethods.Create(nil);
  codigo := sm.makeCodigo('GPROTOCOLO');

  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'INSERT INTO PROTOCOLO (CODIGO, SEQ, APRESENTANTE, DEVEDOR, OCORRENCIA, USUARIO) VALUES (:CODIGO, (SELECT COALESCE(MAX(SEQ),0) + 1 FROM PROTOCOLO), :APRESENTANTE, :DEVEDOR, :OCORRENCIA, :USUARIO)';
  sql.Params[0].AsInteger := codigo;
  sql.Params[1].AsInteger := apresentante;
  sql.Params[2].AsInteger := devedor;
  sql.Params[3].AsSmallInt := ocorencia;
  sql.Params[4].AsInteger := usuario;
  sql.ExecSQL();
  Result := codigo;
end;

end.
