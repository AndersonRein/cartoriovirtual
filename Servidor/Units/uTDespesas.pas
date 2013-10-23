unit uTDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TDespesas = class

  private

  public
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function getTotalDiaFerj(data: TDate):Double;
    function getTotalSemanaFerj(dtIni, dtFim: TDate):Double;
    function getTotalMes(mes, ano:Integer):Double;
  end;

implementation

{ TKitSelos }

procedure TDespesas.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'DELETE FROM KITSELO WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecSQL;
end;

function TDespesas.getNome(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT NOME FROM KITSELO WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('NOME').AsString;
end;

function TDespesas.getTotalDiaFerj(data: TDate): Double;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT SUM(VALOR) AS TOTAL FROM VLANCDESPESAS WHERE DATA =:DATA AND CARNELEAO = 4000';
  sql.Params[0].AsDate := data;
  sql.Open;
  Result := sql.FieldByName('TOTAL').AsFloat;
  sql.Free;
end;

function TDespesas.getTotalMes(mes, ano: Integer): Double;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT COALESCE(SUM(VALOR),0) AS TOTAL FROM VLANCDESPESAS WHERE TIPO = 1 AND EXTRACT(MONTH FROM DATA) =:MES AND EXTRACT(YEAR FROM DATA) =:ANO';
  sql.Params[0].AsInteger := mes;
  sql.Params[1].AsInteger := ano;
  sql.Open;
  Result := sql.FieldByName('TOTAL').AsFloat;
  sql.Free;
end;

function TDespesas.getTotalSemanaFerj(dtIni, dtFim: TDate): Double;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT SUM(VALOR) AS TOTAL FROM VLANCDESPESAS WHERE DATA BETWEEN :INI AND :FIM AND CARNELEAO = 4000';
  sql.Params[0].AsDate := dtIni;
  sql.Params[1].AsDate := dtFim;
  sql.Open;
  Result := sql.FieldByName('TOTAL').AsFloat;
  sql.Free;
end;

end.
