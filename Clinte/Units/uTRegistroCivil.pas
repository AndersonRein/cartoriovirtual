unit uTRegistroCivil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TRegistroCivil = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function seqEmUso(seq:Integer):Boolean;
  end;

implementation

{ TUnidadeMedida }

procedure TRegistroCivil.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmRegistroCivil.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free
end;

function TRegistroCivil.getNome(codigo: Integer): string;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmRegistroCivil.getNome';
  sql.Params[0].AsInteger := codigo;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsString;
end;

function TRegistroCivil.seqEmUso(seq: Integer): Boolean;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmRegistroCivil.seqEmUso';
  sql.Params[0].AsInteger := seq;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsBoolean;
end;

function TRegistroCivil.getBusca(edit: TEdit): Integer;
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
  busca.new('Registro Geral', 'SELECT CODIGO, NOME FROM VREGISTROCIVIL WHERE NOME LIKE :NOME');
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
