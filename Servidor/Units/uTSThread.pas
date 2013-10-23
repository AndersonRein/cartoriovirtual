unit uTSThread;

interface

  uses
  Classes, SqlExpr;

  type
  TSThread = class(TThread)

  protected
  procedure Execute; override;
  procedure finalizarDiaSMovProtocolo;

  end;

implementation

{ TSThread }

uses uDM;

procedure TSThread.Execute;
begin
  inherited;
 Synchronize(finalizarDiaSMovProtocolo);
end;

procedure TSThread.finalizarDiaSMovProtocolo;
var
sqlInserir: TSQLDataSet;
begin
sqlInserir := TSQLDataSet.Create(nil);
sqlInserir.SQLConnection := DM.SQLConnection;

end;

end.
