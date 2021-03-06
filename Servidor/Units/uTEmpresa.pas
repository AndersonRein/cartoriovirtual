unit uTEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB;

type
  TEmpresa = Class
  private

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
sql: TSQLDataSet;
begin
sql := TSQLDataSet.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.CommandText := 'SELECT NOME FROM CARTORIO WHERE CODIGO = 1';
sql.Open;

Result := sql.FieldByName('NOME').AsString;
end;

function TEmpresa.getAto: string;
var
sql: TSQLDataSet;
begin
sql := TSQLDataSet.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.CommandText := 'SELECT REGISTRO FROM CARTORIO WHERE CODIGO = 1';
sql.Open;

Result := sql.FieldByName('REGISTRO').AsString;
end;

function TEmpresa.getResponsavel: string;
var
sql: TSQLDataSet;
begin
sql := TSQLDataSet.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.CommandText := 'SELECT RESPONSAVEL FROM CARTORIO WHERE CODIGO = 1';
sql.Open;

Result := sql.FieldByName('RESPONSAVEL').AsString;
end;

function TEmpresa.getCodigo: Integer;
var
sql: TSQLDataSet;
begin
sql := TSQLDataSet.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.CommandText := 'SELECT CODIGO FROM CARTORIO WHERE CODIGO = 1';
sql.Open;

Result := sql.FieldByName('CODIGO').AsInteger;
end;

end.
