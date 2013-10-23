unit uTMotivoProtesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TMotivoProtesto = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function getDescricao(codigo:Integer):string;
    function protestavel(motivo:Integer):Boolean;
  end;

implementation

{ TMotivoProtesto }

procedure TMotivoProtesto.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmMotivoProtesto.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free
end;

function TMotivoProtesto.getNome(codigo: Integer): string;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmMotivoProtesto.getNome';
  sql.Params[0].AsInteger := codigo;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsString;
end;

function TMotivoProtesto.protestavel(motivo: Integer): Boolean;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmMotivoProtesto.protestavel';
  sql.Params[0].AsInteger := motivo;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsBoolean;
end;

function TMotivoProtesto.getBusca(edit: TEdit): Integer;
var
  busca: TFBusca;
  gride: TDBGrid;
begin
  inherited;
  gride := TDBGrid.Create(nil);
  gride.Columns.Insert(0);
  gride.Columns.Insert(1);
  gride.Columns.Insert(2);
  gride.Columns.Insert(3);
  gride.Columns[0].Width := 80;
  gride.Columns[1].Width := 300;
  gride.Columns[2].Width := 100;
  gride.Columns[3].Width := 100;
  busca := TFBusca.Create(nil);
  busca.setPropriedades(gride);
  busca.new('Motivos para protesto', 'SELECT CODIGO, NOME, SIGLA, PROTESTAVEL FROM VMOTIVOPROTESTO WHERE NOME LIKE :NOME');
  if busca.getCancelou then
    begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

function TMotivoProtesto.getDescricao(codigo: Integer): string;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmMotivoProtesto.getDescricao';
  sql.Params[0].AsInteger := codigo;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsString;
end;

end.