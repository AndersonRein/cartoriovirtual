unit uTRegistoSelos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TRegistroSelos = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    function getProxNumSerie(kitSelo:Integer): Integer;
    function calcularSerieFinal(quantKit, quantidade, serieInicial: Integer):Integer;
    function permitirSelo(selo:Integer):Boolean;
    function seloLancado(selo:Integer):Boolean;
    function calcularSeloFinalLancTotal(inicial, quantidade:Integer):Integer;
  end;

implementation

{ TKitSelos }

function TRegistroSelos.calcularSeloFinalLancTotal(inicial,
  quantidade: Integer): Integer;
begin
Result := (inicial + quantidade) - 1;
end;

function TRegistroSelos.calcularSerieFinal(quantKit, quantidade, serieInicial: Integer):Integer;
begin
Result := (serieInicial - 1) + (quantidade * quantKit);
end;

procedure TRegistroSelos.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmRegistroSelo.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free;
end;

function TRegistroSelos.getBusca(edit: TEdit): Integer;
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
  busca.new('Kit de Selos', 'SELECT CODIGO, NOME, QUANTIDADE FROM OCORRENCIA WHERE NOME LIKE :NOME');
  if busca.getCancelou then
    begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

function TRegistroSelos.getProxNumSerie(kitSelo:Integer): Integer;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmRegistroSelo.getProxNumSerie';
    sql.Params[0].AsInteger := kitSelo;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsInteger;
    sql.Free;
end;

function TRegistroSelos.permitirSelo(selo: Integer): Boolean;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmRegistroSelo.permitirSelo';
    sql.Params[0].AsInteger := selo;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsBoolean;
    sql.Free;
end;

function TRegistroSelos.seloLancado(selo: Integer): Boolean;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmRegistroSelo.seloLancado';
    sql.Params[0].AsInteger := selo;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsBoolean;
    sql.Free;
end;

end.
