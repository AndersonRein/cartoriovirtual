unit uTEmolumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TEmolumentos = class

  private

  public
    function getBusca(edit: TEdit): Integer;
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
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmEmolumentos.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free;
end;

function TEmolumentos.getBusca(edit: TEdit): Integer;
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
  gride.Columns[1].Width := 200;
  gride.Columns[2].Width := 400;
  gride.Columns[0].Title.Caption := 'C�digo';
  gride.Columns[1].Title.Caption := 'Lei';
  gride.Columns[2].Title.Caption := 'Tipo de ato';
  busca := TFBusca.Create(nil);
  busca.setPropriedades(gride);
  busca.new('Emolumentos', 'SELECT CODIGO, LEI AS NOME, TIPOATO FROM VEMOLUMENTOS WHERE LEI LIKE :LEI');
  if busca.getCancelou then
  begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

function TEmolumentos.getCodigo(codLei: string): Integer;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmEmolumentos.getCodigo';
    sql.Params[0].AsString := codLei;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsInteger;
    sql.Free;
end;

function TEmolumentos.getTipoATO(codigo: Integer): string;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmEmolumentos.getTipoATO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsString;
    sql.Free;
end;

function TEmolumentos.getTipoSelo(codigo: Integer): Integer;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmEmolumentos.getTipoSelo';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsInteger;
    sql.Free;
end;

function TEmolumentos.getValor(codigo: Integer): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmEmolumentos.getValor';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsFloat;
    sql.Free;
end;

function TEmolumentos.getVlrFerc(codigo: Integer): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmEmolumentos.getVlrFerc';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsFloat;
    sql.Free;
end;

function TEmolumentos.getVlrTransacao(codigo: Integer): Double;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmEmolumentos.getVlrTransacao';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsFloat;
    sql.Free;
end;

end.
