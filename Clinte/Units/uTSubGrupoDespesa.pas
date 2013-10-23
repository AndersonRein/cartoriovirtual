unit uTSubGrupoDespesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TSubGrupoDespesa = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
  end;

implementation

{ TKitSelos }

procedure TSubGrupoDespesa.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmSubGrupoDespesas.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free;
end;

function TSubGrupoDespesa.getBusca(edit: TEdit): Integer;
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
  gride.Columns[2].Width := 200;
  busca := TFBusca.Create(nil);
  busca.setPropriedades(gride);
  busca.new('Subgrupo de despesas', 'SELECT CODIGO, NOME, GRUPO FROM VSUBGRUPODESPESAS WHERE NOME LIKE :NOME');
  if busca.getCancelou then
    begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

function TSubGrupoDespesa.getNome(codigo: Integer): string;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmSubGrupoDespesas.getNome';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    Result := sql.Params[1].AsString;
    sql.Free;
end;

end.
