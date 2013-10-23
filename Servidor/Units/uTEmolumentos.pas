unit uTEmolumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TEmolumentos = class

  private

  public
    procedure excluir(codigo: Integer);
    function getTipoATO(codigo:Integer):string;
    function getValor(codigo:Integer):Double;
    function getTipoSelo(codigo:Integer):Integer;
    function getCodigo(codLei:string):Integer;
    function getVlrTransacao(codigo:Integer):Double;
    function getVlrFerc(codigo:Integer):Double;
  end;

implementation

{ TEmolumentos }

procedure TEmolumentos.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'DELETE FROM EMOLUMENTOS WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecSQL;
end;

function TEmolumentos.getCodigo(codLei: string): Integer;
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'SELECT CODIGO FROM VEMOLUMENTOS WHERE LEI =:CODLEI';
    sql.Params[0].AsString := codLei;
    sql.Open;
    Result := sql.FieldByName('CODIGO').AsInteger;
    sql.Free;
end;

function TEmolumentos.getTipoATO(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'SELECT TIPOATO FROM VEMOLUMENTOS WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.Open;
    Result := sql.FieldByName('TIPOATO').AsString;
    sql.Free;
end;

function TEmolumentos.getTipoSelo(codigo: Integer): Integer;
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'SELECT TIPOSELO FROM EMOLUMENTOS WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.Open;
    Result := sql.FieldByName('TIPOSELO').AsInteger;
    sql.Free;
end;

function TEmolumentos.getValor(codigo: Integer): Double;
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'SELECT VALOR FROM VEMOLUMENTOS WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.Open;
    Result := sql.FieldByName('VALOR').AsFloat;
    sql.Free;
end;

function TEmolumentos.getVlrFerc(codigo: Integer): Double;
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'SELECT VLRFERC FROM VEMOLUMENTOS WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.Open;
    Result := sql.FieldByName('VLRFERC').AsFloat;
    sql.Free;
end;

function TEmolumentos.getVlrTransacao(codigo: Integer): Double;
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'SELECT VLRTRANSACAO FROM VEMOLUMENTOS WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.Open;
    Result := sql.FieldByName('VLRTRANSACAO').AsFloat;
    sql.Free;
end;

end.
