unit uTIntimacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB;

type
  TIntimacao = class

  private

  public
    procedure excluir(codigo: Integer);
    procedure intimar(protesto, aceite:Integer; selo:string; protocolo, ferj:Integer);
    function protestoIntimado(protesto:Integer):Boolean;
    procedure concluir(intimacao, tipoConclusao, protesto:Integer; date, dtProtesto:TDate); overload;
    procedure concluir(intimacao, tipoConclusao, protesto:Integer; dtProtesto:TDate); overload;
  end;

implementation

{ TUnidadeMedida }

uses uServerMethods;


procedure TIntimacao.concluir(intimacao, tipoConclusao, protesto: Integer; date, dtProtesto:TDate);
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'UPDATE INTIMACAO SET CONCLUSAO = CURRENT_DATE, DATACUMPRIMENTO = :DATA, TIPOCUMPRIMENTO =:TIPO WHERE CODIGO =:CODIGO';
  sql.Params[0].AsDate := date;
  sql.Params[1].AsInteger := tipoConclusao;
  sql.Params[2].AsInteger := intimacao;
  sql.ExecSQL;

  sql.CommandText := 'UPDATE CADPROTESTO SET STATUS = 2, DIAPROTESTO =:DTPRO WHERE CODIGO =:CODIGO';
  sql.Params[0].AsDate := dtProtesto;
  sql.Params[1].AsInteger := protesto;
  sql.ExecSQL;

  sql.CommandText := 'UPDATE PROTOCOLO SET COMPRIMENTO = :DATA WHERE INTIMACAO =:CODIGO';
  sql.Params[0].AsDate := date;
  sql.Params[1].AsInteger := intimacao;
  sql.ExecSQL;
  sql.Free;
end;

procedure TIntimacao.concluir(intimacao, tipoConclusao, protesto: Integer; dtProtesto: TDate);
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'UPDATE INTIMACAO SET CONCLUSAO = CURRENT_DATE,  TIPOCUMPRIMENTO =:TIPO WHERE CODIGO =:CODIGO';
  sql.Params[0].AsInteger := tipoConclusao;
  sql.Params[1].AsInteger := intimacao;
  sql.ExecSQL;

  sql.CommandText := 'UPDATE CADPROTESTO SET STATUS = 3, DIAPROTESTO =:DIA WHERE CODIGO =:CODIGO';
  sql.Params[0].AsDate := dtProtesto;
  sql.Params[1].AsInteger := protesto;
  sql.ExecSQL;
  sql.Free;
end;

procedure TIntimacao.excluir(codigo: Integer);
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

procedure TIntimacao.intimar(protesto, aceite: Integer; selo:string; protocolo, ferj:Integer);
var
  sql: TSQLDataSet;
  intimacao: Integer;
  sm : TServerMethods;
begin
    sm := TServerMethods.Create(nil);
    intimacao := sm.makeCodigo('GPROTOCOLO');
    sm.Free;

    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'INSERT INTO INTIMACAO (CODIGO, PROTESTO, ACEITE, SELO1, PROTOCOLO, FERJ) VALUES (:CODIGO, :PROTESTO, :ACEITE, :SELO, :PROTOCOLO, :FERJ)';
    sql.Params[0].AsInteger := intimacao;
    sql.Params[1].AsInteger := protesto;
    sql.Params[2].AsInteger := aceite;
    sql.Params[3].AsString := selo;
    sql.Params[4].AsInteger := protocolo;
    sql.Params[5].AsInteger := ferj;
    sql.ExecSQL;

    sql.CommandText := 'UPDATE CADPROTESTO SET STATUS = 1 WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := protesto;
    sql.ExecSQL;

    sql.CommandText := 'UPDATE PROTOCOLO SET INTIMACAO = :INTIMACAO WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := intimacao;
    sql.Params[1].AsInteger := protocolo;
    sql.ExecSQL;
    sql.Free;
end;

function TIntimacao.protestoIntimado(protesto: Integer): Boolean;
var
sql: TSQLDataSet;
begin
sql := TSQLDataSet.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.CommandText := 'SELECT CODIGO FROM VINTIMACAO WHERE PROTESTO =:PROTESTO';
sql.Open;

if sql.FieldByName('CODIGO').AsInteger > 0 then
  Result := True
else
  Result := False;

sql.Free;
end;

end.

