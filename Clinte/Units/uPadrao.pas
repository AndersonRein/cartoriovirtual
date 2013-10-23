﻿unit uPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uTUsuario, uTEmpresa, System.IniFiles;

 var
  usuario : TUsuario;
  empresa: TEmpresa;
  config:string;
  function getUF(codigo: Integer): string;
  function makeCodigo(sGenerator: String): Int64;
  procedure desconectar(SQLConection : TSQLConnection);
  function getDiaProtesto():TDate;
  function getRodapeRegJuridico():string;
  procedure setRodapeRegJuridico(descricao:string);
const
  SUCESSO = 'Operação executada com sucesso.';
  CADASTRO_EXCLUIDO_SUCESSO = 'Cadastro excluido com sucesso.';
  DESEJA_REALMENTE_EXCLUIR_REGISTRO = 'Deseja realmente excluir esse registro?';
  CADASTRO_POSSUI_DEPENDENCIA = 'Cadastro não pode ser excluir pois possui dependencia.';
  ERRO = 'Ocorreu um erro durante a operação.';
  NAO_PODE_SER_EXCLUIDO = 'Este registro não pode ser excluido.';
  DESEJA_REALMENTE_EXECUTAR_ESTA_OPERACAO = 'Deseja realmente executar esta operacão?';
  PREENCHA_CAMPOS_EM_VERMELHO = 'Preencha os campos destacados em vermelho.';
  SEM_PERMISSAO = 'Você não tem permissão para executar esta operação.';
  INFORMACAO = 'Informação.';
  protestado = 0;
  delimit = '©';
  DESEJA_SALVAR_ALTERACOES = 'Deseja salvar as alterações?';

implementation


{ TPadrao }


function getUF(codigo: Integer): string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT UF FROM VCIDADE WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := codigo;
  sql.Open;

  Result := sql.FieldByName('UF').AsString;

  sql.Free;
end;

function makeCodigo(sGenerator: String): Int64;
var
  sql: TSqlServerMethod;
begin
  try
    sql := TSqlServerMethod.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.ServerMethodName := 'TServerMethods.makeCodigo';
    sql.Params[0].AsString := sGenerator;
    sql.ExecuteMethod;

    Result := sql.Params[1].AsInteger;
  except
    on E: Exception do
      ShowMessage(ERRO + ' ' + E.Message);
  end;
  sql.Free;
end;

procedure desconectar(SQLConection : TSQLConnection);
begin
  SQLConection.Connected := False;
end;

function getDiaProtesto():TDate;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TServerMethods.getDiaProtesto';
  sql.ExecuteMethod;
  Result := StrToDate(sql.Params[0].AsString);
  sql.Free;
end;

function getRodapeRegJuridico():string;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TServerMethods.getRodapeRegJuridico';
  sql.ExecuteMethod;
  Result := sql.Params[0].AsString;
  sql.Free;
end;

procedure setRodapeRegJuridico(descricao:string);
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TServerMethods.setRodapeRegJuridico';
  sql.Params[0].AsString := descricao;
  sql.ExecuteMethod;
  sql.Free;
end;
end.
