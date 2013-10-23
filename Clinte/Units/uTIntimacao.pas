unit uTIntimacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids;

type
  TIntimacao = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    procedure excluir(codigo: Integer);
    procedure intimar(protesto, aceite:Integer; selo:string; protocolo, ferj:Integer);
    procedure concluir(intimacao, tipoConclusao, protesto:Integer; data, dtProtesto:string); overload;
    procedure concluir(intimacao, tipoConclusao, protesto:Integer; dtProtesto:string); overload;
  end;

implementation

{ TUnidadeMedida }

uses uPadrao;


procedure TIntimacao.concluir(intimacao, tipoConclusao, protesto: Integer; data, dtProtesto:string);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmIntimacao.concluir';
    sql.Params[0].AsInteger := intimacao;
    sql.Params[1].AsInteger := tipoConclusao;
    sql.Params[2].AsInteger := protesto;
    sql.Params[3].AsString := data;
    sql.Params[4].AsString := dtProtesto;
    sql.ExecuteMethod;
    sql.Free;
end;

procedure TIntimacao.concluir(intimacao, tipoConclusao, protesto: Integer; dtProtesto:string);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmIntimacao.naoConcluir';
    sql.Params[0].AsInteger := intimacao;
    sql.Params[1].AsInteger := tipoConclusao;
    sql.Params[2].AsInteger := protesto;
    sql.Params[3].AsString := dtProtesto;
    sql.ExecuteMethod;
    sql.Free;
end;

procedure TIntimacao.excluir(codigo: Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmIntimacao.excluir';
    sql.Params[0].AsInteger := codigo;
    sql.ExecuteMethod;
    sql.Free;
end;

function TIntimacao.getBusca(edit: TEdit): Integer;
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

procedure TIntimacao.intimar(protesto, aceite: Integer; selo:string; protocolo, ferj:Integer);
var
  sql: TSqlServerMethod;
begin
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TsmIntimacao.intimar';
    sql.Params[0].AsInteger := protesto;
    sql.Params[1].AsInteger := aceite;
    sql.Params[2].AsString := selo;
    sql.Params[3].AsInteger := protocolo;
    sql.Params[4].AsInteger := ferj;
    sql.ExecuteMethod;
    sql.Free;
end;

end.
