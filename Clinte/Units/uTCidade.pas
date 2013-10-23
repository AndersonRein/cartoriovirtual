unit uTCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TCidade = Class
  private

  public
    function getCidade(edit: TEdit): Integer;
    function getNomeCidade(codigo: Integer): string;
  End;

implementation

{ TCidade }

function TCidade.getCidade(edit: TEdit): Integer;
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
  gride.Columns[1].Width := 400;
  gride.Columns[2].Width := 50;
  busca := TFBusca.Create(nil);
  busca.setPropriedades(gride);
  busca.new('Cidade', 'SELECT CODIGO, NOME, UF FROM CIDADE WHERE NOME LIKE :NOME');
  if busca.getCancelou then
   begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

function TCidade.getNomeCidade(codigo: Integer): string;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TServerMethods.getNomeCidade';
  sql.Params[0].AsInteger := codigo;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsString;
end;

end.
