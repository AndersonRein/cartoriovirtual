unit uTCalendario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids, DateUtils;

type
  TCalendario = class

  private

  public
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function eFeriado(data: TDate):Boolean;
    function eDiaUtil(data:TDate):Boolean;
  end;

implementation

{ TOcorrencia }

function TCalendario.eDiaUtil(data: TDate): Boolean;
begin
if (DayOfWeek(data) = 6) or (DayOfWeek(data) = 7) then
  Result := False
else
  Result := True;
end;

function TCalendario.eFeriado(data: TDate): Boolean;
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'SELECT DIA FROM CALENDARIO WHERE DIA =:DIA';
    sql.Params[0].AsDate := data;
    sql.Open;

    if sql.FieldByName('DIA').AsDateTime = data then
    begin
      Result := True;
      Exit;
    end;
    sql.Close;
    sql.CommandText := 'SELECT DIA FROM CALENDARIO WHERE EXTRACT(DAY FROM DIA) =:DIAS AND EXTRACT(MONTH FROM DIA) =:MES AND ANUAL =0';
    sql.Params[0].AsInteger := DayOfTheMonth(data);
    sql.Params[1].AsInteger := MonthOfTheYear(Date);
    sql.Open;

    if (DayOfTheMonth(sql.FieldByName('DIA').AsDateTime) = DayOfTheMonth(data)) and (MonthOfTheYear(sql.FieldByName('DIA').AsDateTime) = MonthOfTheYear(data)) then
    begin
      Result := True;
      Exit;
    end
    else
      Result := False;
end;

procedure TCalendario.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'DELETE FROM CALENDARIO WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecSQL;
    sql.Free;
end;

function TCalendario.getNome(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT NOME FROM CALENDARIO WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('NOME').AsString;
end;

end.
