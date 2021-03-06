unit uTDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TDespesas = class

  private

  public
    procedure excluir(codigo: Integer);
    function getTotalDiaFerj(data: TDate):Double;
    function getTotalSemanaFerj(dtIni, dtFim: TDate):Double;
    function getTotalMes(mes, ano:Integer):Double;
  end;

implementation

{ TKitSelos }

procedure TDespesas.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmKitSelo.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free;
end;


function TDespesas.getTotalDiaFerj(data: TDate): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmLancDespesas.getTotalDiaFerj';
    sql.Params[0].AsString := DateToStr(data);
    sql.ExecuteMethod;
    Result := sql.Params[1].AsFloat;
    sql.Free;
end;

function TDespesas.getTotalMes(mes, ano: Integer): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmLancDespesas.getTotalMes';
    sql.Params[0].AsInteger := mes;
    sql.Params[1].AsInteger := ano;
    sql.ExecuteMethod;
    Result := sql.Params[2].AsFloat;
    sql.Free;
end;

function TDespesas.getTotalSemanaFerj(dtIni, dtFim: TDate): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmLancDespesas.getTotalSemanaFerj';
    sql.Params[0].AsString := DateToStr(dtIni);
    sql.Params[1].AsString := DateToStr(dtFim);
    sql.ExecuteMethod;
    Result := sql.Params[2].AsFloat;
    sql.Free;
end;

end.
