unit uTOcorrencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TOcorrencia = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    procedure setOcorrencia(protocolo, ocorencia:Integer);
  end;

implementation

{ TOcorrencia }

procedure TOcorrencia.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmOcorrencias.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free
end;

function TOcorrencia.getNome(codigo: Integer): string;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmOcorrencias.getNome';
  sql.Params[0].AsInteger := codigo;
  sql.ExecuteMethod;

  Result := sql.Params[1].AsString;
  sql.Free;
end;

procedure TOcorrencia.setOcorrencia(protocolo, ocorencia: Integer);
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmOcorrencias.setOcorrencia';
  sql.Params[0].AsInteger := protocolo;
  sql.Params[1].AsInteger := ocorencia;
  sql.ExecuteMethod;
  sql.Free;
end;

function TOcorrencia.getBusca(edit: TEdit): Integer;
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
  busca.new('Ocorrências', 'SELECT CODIGO, NOME FROM OCORRENCIA WHERE NOME LIKE :NOME');
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
