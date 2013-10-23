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
      class var started : boolean;
      class var transacao: TTransactionDesc;
      class function getIdTransacao(): integer;

  end;



implementation

uses DB, uDM;

{ TTransacao }

class procedure TTransacao.commit;
begin
DM.SQLConnection.Commit(transacao);
started := false;
end;

class function TTransacao.getIdTransacao: integer;
var
  sQr: TSQLDataSet;
begin
  sQr := TSQLDataSet.create(nil);
  sQr.SQLConnection := DM.SQLConnection;

  sQr.CommandText := ' select gen_id(GTRANSACOES,1) as VALOR from rdb$database ';
  sQr.Open;

  if (sQr.FieldByName('VALOR').AsInteger = 0) or
    (sQr.FieldByName('VALOR').IsNull) then
      result := 1
  else
    result := sQr.FieldByName('VALOR').AsInteger;

  sQr.Free;
end;

class function TTransacao.isStarted: boolean;
begin
  result := started;
end;

class procedure TTransacao.rollback;
begin
DM.SQLConnection.Rollback(transacao);
started := false;
end;

class procedure TTransacao.start();
begin
try
  if DM.SQLConnection.InTransaction then
    Exit;

  transacao.TransactionID:= TTransacao.getIdTransacao;
  transacao.IsolationLevel:=  xilReadCommitted;
  DM.SQLConnection.StartTransaction(transacao);
  started := true;
except
  started := false;
end;


end;

end.
