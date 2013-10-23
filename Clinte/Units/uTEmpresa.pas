unit uTEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB;

type
  TEmpresa = Class
  private
    nome: string;
    codigo: Integer;
  public
    function getNome():string;
    function getCodigo():Integer;
    function getResponsavel():string;
    function getAto():string;
  End;

implementation

{ TFCliente }

function TEmpresa.getNome: string;
var
sql : TSqlServerMethod;
begin
sql := TSqlServerMethod.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.ServerMethodName := 'TsmEmpresa.getNome';
sql.ExecuteMethod;
Result := sql.Params[0].AsString;
end;

function TEmpresa.getAto: string;
var
sql : TSqlServerMethod;
begin
sql := TSqlServerMethod.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.ServerMethodName := 'TsmEmpresa.getAto';
sql.ExecuteMethod;
Result := sql.Params[0].AsString;
end;

function TEmpresa.getResponsavel: string;
var
sql : TSqlServerMethod;
begin
sql := TSqlServerMethod.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.ServerMethodName := 'TsmEmpresa.getResponsavel';
sql.ExecuteMethod;
Result := sql.Params[0].AsString;
end;

function TEmpresa.getCodigo: Integer;
var
sql : TSqlServerMethod;
begin
sql := TSqlServerMethod.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.ServerMethodName := 'TsmEmpresa.getCodigo';
sql.ExecuteMethod;
Result := sql.Params[0].AsInteger;
end;

end.
