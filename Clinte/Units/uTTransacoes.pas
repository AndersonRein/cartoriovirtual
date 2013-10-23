unit uTTransacoes;

interface

uses SqlExpr, Dialogs;

type
  TTransacao = class(TObject)
  Public

    class procedure start();

    class procedure commit();
    class procedure rollback();
    class function isStarted(): boolean;
  private

  end;

implementation

uses DB, uDM;

{ TTransacao }

class procedure TTransacao.commit;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmTrasacoes.commit';
  sql.ExecuteMethod;
  sql.Free;
end;

class function TTransacao.isStarted: boolean;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmTrasacoes.isStarted';
  sql.ExecuteMethod;
  Result := sql.Params[0].AsBoolean;
  sql.Free;
end;

class procedure TTransacao.rollback;
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmTrasacoes.rollback';
  sql.ExecuteMethod;
  sql.Free;
end;

class procedure TTransacao.start();
var
  sql: TSqlServerMethod;
begin
  sql := TSqlServerMethod.create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.ServerMethodName := 'TsmTrasacoes.start';
  sql.ExecuteMethod;
  sql.Free;
end;

end.
