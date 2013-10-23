unit uTRegPessoaJuridica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TRegPessoaJuridica = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    function getFicha():Integer;
    function getOrdem():Integer;
  end;

implementation

{ TUnidadeMedida }

procedure TRegPessoaJuridica.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmRegPessoaJuridica.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free;
end;

function TRegPessoaJuridica.getBusca(edit: TEdit): Integer;
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
  gride.Columns[2].Width := 300;
  busca := TFBusca.Create(nil);
  busca.setPropriedades(gride);
  busca.new('Registro de pessoas jur�dicas', 'SELECT CODIGO, NOME, FICHA FROM REGPESSOAJURIDICA WHERE NOME LIKE :NOME');
  if busca.getCancelou then
    begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

function TRegPessoaJuridica.getFicha: Integer;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmRegPessoaJuridica.getFicha';
    sql.ExecuteMethod;
    Result := sql.Params[0].AsInteger;
    sql.Free;
end;

function TRegPessoaJuridica.getOrdem: Integer;
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmRegPessoaJuridica.getOrdem';
    sql.ExecuteMethod;
    Result := sql.Params[0].AsInteger;
    sql.Free;
end;

end.
