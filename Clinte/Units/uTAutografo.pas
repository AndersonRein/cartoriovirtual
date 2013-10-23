unit uTAutografo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TAutografo = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function seqEmUso(seq:string):Boolean;
    procedure setConjuge(conjuge, codigo:Integer);
    procedure limparConjuge(codigo:Integer);
    function registrado(cpf:string):Boolean;
    function getSequencia():string;
  end;

implementation

{ TUnidadeMedida }

procedure TAutografo.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmAutografos.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free
end;

function TAutografo.getNome(codigo: Integer): string;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmAutografos.getNome';
  sql.Params[0].AsInteger := codigo;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsString;
end;

function TAutografo.getSequencia: string;
var
  sql: TSqlServerMethod;
  seq: Integer;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmAutografos.getSequencia';
  sql.ExecuteMethod;

  Result := sql.Params[0].AsString;
end;

procedure TAutografo.limparConjuge(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmAutografos.limparConjuge';
  sql.Params[0].AsInteger := codigo;
  sql.ExecuteMethod;
end;

function TAutografo.registrado(cpf: string): Boolean;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmAutografos.registrado';
  sql.Params[0].AsString := cpf;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsBoolean;
end;

function TAutografo.seqEmUso(seq: string): Boolean;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmAutografos.seqEmUso';
  sql.Params[0].AsString := seq;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsBoolean;
end;

procedure TAutografo.setConjuge(conjuge, codigo: Integer);
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmAutografos.setConjuge';
  sql.Params[0].AsInteger := conjuge;
  sql.Params[1].AsInteger := codigo;
  sql.ExecuteMethod;
end;

function TAutografo.getBusca(edit: TEdit): Integer;
var
  busca: TFBusca;
  gride: TDBGrid;
begin
  inherited;
  gride := TDBGrid.Create(nil);
  gride.Columns.Insert(0);
  gride.Columns.Insert(1);
  gride.Columns[0].Width := 80;
  gride.Columns[1].Width := 400;
  busca := TFBusca.Create(nil);
  busca.setPropriedades(gride);
  busca.new('Autógrafos', 'SELECT CODIGO, NOME FROM VAUTOGRAFOS WHERE NOME LIKE :NOME');
  if busca.getCancelou then
    begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

end.
