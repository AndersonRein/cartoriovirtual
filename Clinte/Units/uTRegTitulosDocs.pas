unit uTRegTitulosDocs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TRegTitulosDocs = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    function getProtocolo(): integer;
  end;

implementation

{ TKitSelos }

procedure TRegTitulosDocs.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmRegTitulosDocs.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free;
end;

function TRegTitulosDocs.getBusca(edit: TEdit): Integer;
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
  busca.new('Registro de Títulos e Documentos', 'SELECT CODIGO FROM REGTITULOSDOCS WHERE NOME LIKE :NOME');
  if busca.getCancelou then
  begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

function TRegTitulosDocs.getProtocolo():Integer;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmRegTitulosDocs.getProtocolo';
    sql.ExecuteMethod;
    Result := sql.Params[0].AsInteger;
    sql.Free;
end;

end.
