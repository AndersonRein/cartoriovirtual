unit uTBoletim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids, Math;

type
  TBoletim = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    function getVlrFerj(vlrEmolumento:Double):Double;
    function getVlrFerc(vlrEmolumento:Double):Double;
    function getTotalFerj(boletim:Integer):Double;
    function getTotalFerc(boletim:Integer):Double;
    procedure excluirItem(codigo:Integer);
    procedure excluirItemTotal(codigo:Integer);
    procedure lancIndividual(codLei, selo:string; fPag, protocolo:Integer);
    function getTotalSelosLancTotal(boletim:Integer):Double;
    function getTotalRecitasFerjDia(data: TDate):Double;
    function getTotalRecitasFerjSemana(dtIni, dtFim: TDate):Double;
    function getTotalCaixaMes(mes, ano:Integer):Double;
    function getBoletim():Integer;
    procedure fechar(codigo:Integer);
  end;

implementation

{ TRegBoleto }

uses uTData;


function TBoletim.getTotalCaixaMes(mes, ano: Integer): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.getTotalCaixaMes';
    sql.Params[0].AsInteger := mes;
    sql.Params[1].AsInteger := ano;
    sql.ExecuteMethod;
    Result := sql.Params[2].AsFloat;
    sql.Free;
end;

function TBoletim.getTotalFerc(boletim: Integer): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.getTotalFerc';
    sql.Params[0].AsInteger := boletim;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsFloat;
    sql.Free;
end;

function TBoletim.getTotalFerj(boletim: Integer): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.getTotalFerj';
    sql.Params[0].AsInteger := boletim;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsFloat;
    sql.Free;
end;

function TBoletim.getTotalRecitasFerjDia(data: TDate): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.getTotalRecitasFerjDia';
    sql.Params[0].AsString := DateToStr(data);
    sql.ExecuteMethod;
    Result := sql.Params[1].AsFloat;
    sql.Free;
end;

function TBoletim.getTotalRecitasFerjSemana(dtIni, dtFim: TDate): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.getTotalRecitasFerjSemana';
    sql.Params[0].AsString := DateToStr(dtIni);
    sql.Params[1].AsString := DateToStr(dtFim);
    sql.ExecuteMethod;
    Result := sql.Params[2].AsFloat;
    sql.Free;
end;

function TBoletim.getTotalSelosLancTotal(boletim: Integer): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.getTotalSelosLancTotal';
    sql.Params[0].AsInteger := boletim;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsFloat;
    sql.Free;
end;

procedure TBoletim.excluirItem(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.excluirItem';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free;
end;

procedure TBoletim.excluirItemTotal(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.excluirItemTotal';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free;
end;

procedure TBoletim.fechar(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.fechar';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free;
end;

function TBoletim.getBoletim: Integer;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.getBletim';
    sql.ExecuteMethod;
    Result := sql.Params[0].AsInteger;
    sql.Free;
end;

function TBoletim.getBusca(edit: TEdit): Integer;
var
  busca: TFBusca;
  gride: TDBGrid;
begin
  inherited;
  gride := TDBGrid.Create(nil);
  gride.Columns.Insert(0);
  gride.Columns.Insert(1);
  gride.Columns.Insert(2);
  gride.Columns[0].Width := 80;
  gride.Columns[1].Width := 300;
  gride.Columns[2].Width := 100;
  busca := TFBusca.Create(nil);
  busca.setPropriedades(gride);
  busca.new('Boletins', 'SELECT CODIGO, NOME, QUANTIDADE FROM OCORRENCIA WHERE NOME LIKE :NOME');
  if busca.getCancelou then
    begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

function TBoletim.getVlrFerc(vlrEmolumento: Double): Double;
begin
Result := RoundTo((vlrEmolumento * 3)/100, -2);
end;

function TBoletim.getVlrFerj(vlrEmolumento: Double): Double;
begin
Result := RoundTo((vlrEmolumento * 12)/100, -2);
end;

procedure TBoletim.lancIndividual(codLei, selo: string; fPag, protocolo:Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmBoletim.lancIndividual';
    sql.Params[0].AsString := codLei;
    sql.Params[1].AsString := selo;
    sql.Params[2].AsInteger := fPag;
    sql.Params[3].AsInteger := protocolo;
    sql.ExecuteMethod;
    sql.Free;
end;

end.
