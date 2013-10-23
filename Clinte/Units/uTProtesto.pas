unit uTProtesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TProtesto = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    procedure setItem(protesto,titulo:Integer);
    procedure delItem(protesto:Integer);
    procedure protestar(protesto, aceite, ferj, protocolo:Integer; selo:string);
  end;

implementation

{ TUnidadeMedida }

procedure TProtesto.delItem(protesto: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmProtesto.delItem';
    sql.Params[0].AsInteger := protesto;
    sql.ExecuteMethod;
    sql.Free
end;

procedure TProtesto.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmProtesto.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free
end;

function TProtesto.getBusca(edit: TEdit): Integer;
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
  busca.new('Aut�grafos', 'SELECT CODIGO, NOME FROM VAUTOGRAFOS WHERE NOME LIKE :NOME');
  if busca.getCancelou then
    begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

procedure TProtesto.protestar(protesto, aceite, ferj, protocolo: Integer; selo: string);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmProtesto.protestar';
    sql.Params[0].AsInteger := protesto;
    sql.Params[1].AsInteger := aceite;
    sql.Params[2].AsInteger := ferj;
    sql.Params[3].AsInteger := protocolo;
    sql.Params[4].AsString := selo;
    sql.ExecuteMethod;
    sql.Free;
end;

procedure TProtesto.setItem(protesto, titulo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmProtesto.setItem';
    sql.Params[0].AsInteger := protesto;
    sql.Params[1].AsInteger := titulo;
    sql.ExecuteMethod;
    sql.Free;
end;

end.