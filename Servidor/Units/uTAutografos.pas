unit uTAutografos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TAutografos = class

  private

  public
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function seqEmUso(seq:string):Boolean;
    procedure setConjuge(conjuge, codigo:Integer);
    procedure limparConjuge(codigo:Integer);
    function registrado(cpf:string):Boolean;
    function getSequencia():string;
  end;

implementation

{ TUnidadeMedida }

procedure TAutografos.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'DELETE FROM AUTOGRAFOS WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecSQL;
end;

function TAutografos.getNome(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT NOME FROM VAUTOGRAFOS WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('NOME').AsString;
end;

function TAutografos.getSequencia: string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT MAX(SEQ) AS SEQ FROM VAUTOGRAFOS';
  sql.Open;

  Result := sql.FieldByName('SEQ').AsString;
end;

procedure TAutografos.limparConjuge(codigo: Integer);
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'UPDATE AUTOGRAFOS SET AUTOGRAFOS.CONJUGE = NULL WHERE AUTOGRAFOS.CODIGO = :CONJUGE';
  sql.Params[0].AsInteger := codigo;
  sql.ExecSQL;
end;

function TAutografos.registrado(cpf: string): Boolean;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT * FROM VAUTOGRAFOS WHERE VAUTOGRAFOS.CPF_CNPJ =:CPF';
  sql.Params[0].AsString := cpf;
  sql.Open;

  if sql.FieldByName('CODIGO').AsInteger > 0 then
    Result := True
 else
    Result := False;
end;

function TAutografos.seqEmUso(seq: string): Boolean;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT SEQ FROM AUTOGRAFOS WHERE SEQ =:SEQ';
  sql.Params[0].AsString := seq;
  sql.Open;

  if sql.FieldByName('SEQ').IsNull then
    Result := False
 else
    Result := True;

end;

procedure TAutografos.setConjuge(conjuge, codigo: Integer);
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'UPDATE AUTOGRAFOS SET AUTOGRAFOS.CONJUGE =:CODIGO WHERE AUTOGRAFOS.CODIGO =:CONJUGE';
  sql.Params[0].AsInteger := codigo;
  sql.Params[1].AsInteger := conjuge;
  sql.ExecSQL;
end;

end.
