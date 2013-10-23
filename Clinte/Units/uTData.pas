unit uTData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, CheckLst,
  SqlExpr, System.DateUtils;

type
  TData = class

  private

  public
     function getMes(data: TDate):string;
     function getDataExtenso(data: TDate):string;
     function getSemanaDoAno(data:TDate):Integer;
     function anoAtual():Integer;
     function getSegunda(data:TDate):TDate;
     function getSexta(data:TDate):TDate;
     function getAno():Integer;
  end;

implementation

{ TData }

function TData.anoAtual: Integer;
begin
Result := YearOf(Date);
end;

function TData.getAno: Integer;
begin
Result := YearOf(Date);
end;

function TData.getDataExtenso(data: TDate): string;
begin
Result := FormatFloat('00',DayOfTheMonth(data))+' de '+getMes(data) +' de '+ IntToStr(YearOf(data));
end;

function TData.getMes(data: TDate): string;
begin
  case MonthOfTheYear(data) of
    MonthJanuary : Result := 'Janeiro';
    MonthFebruary : Result := 'Feveriro';
    MonthMarch : Result := 'Mar�o';
    MonthApril : Result := 'Abril';
    MonthMay : Result := 'Maio';
    MonthJune : Result := 'Junho';
    MonthJuly : Result := 'Julho';
    MonthAugust : Result := 'Agosto';
    MonthSeptember : Result := 'Setembro';
    MonthOctober : Result := 'Outubro';
    MonthNovember : Result := 'Novembro';
    MonthDecember : Result := 'Dezembro';
  end;
end;

function TData.getSegunda(data: TDate): TDate;
var
diaAtual:Integer;
begin
diaAtual := DayOfWeek(data);
data := data - (diaAtual- 2);
Result :=  data;
end;

function TData.getSemanaDoAno(data: TDate): Integer;
begin
Result := WeekOfTheYear(data);
end;

function TData.getSexta(data: TDate): TDate;
var
diaAtual:Integer;
begin
diaAtual := DayOfWeek(data);
if diaAtual = 7 then
  begin
    Result :=  data - 1;
    Exit;
  end;
if diaAtual = 6 then
  begin
    Result := data;
  end;
if diaAtual < 6 then
  begin
    data := data - (diaAtual - 6);
    Result :=  data;
  end;
end;

end.
