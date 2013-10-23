unit uTFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TFuncionario = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function getTotalFuncionarios():Integer;
    function getPermissao(usuario: Integer; campo: string): Boolean;
    function eOPCaixa(usuario: Integer): Boolean;
  end;

implementation

{ TUnidadeMedida }

function TFuncionario.eOPCaixa(usuario: Integer): Boolean;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := '';
  sql.Params[0].AsInteger := usuario;
  sql.Open;

  if sql.FieldByName('OPCAIXA').AsInteger = 1 then
    Result := False
  ELSE
    Result := True;
end;

procedure TFuncionario.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmFuncionario.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free
end;

function TFuncionario.getNome(codigo: Integer): string;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmFuncionario.getNome';
  sql.Params[0].AsInteger := codigo;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsString;
end;

function TFuncionario.getPermissao(usuario: Integer; campo: string): Boolean;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmFuncionario.getPermissao';
  sql.Params[0].AsInteger := usuario;
  sql.Params[1].AsString := campo;
  sql.ExecuteMethod;

  Result := sql.Params[2].AsBoolean;
end;

function TFuncionario.getTotalFuncionarios: Integer;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT COUNT(CODIGO) AS TOTAL FROM VFUNCIONARIOS';
  sql.Open;

  Result := sql.FieldByName('TOTAL').AsInteger;
  sql.Free;
end;

function TFuncionario.getBusca(edit: TEdit): Integer;
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
  busca.new('Funcionarios', 'SELECT CODIGO, NOME FROM FUNCIONARIOS WHERE NOME LIKE :NOME');
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
