unit uTUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB;

type
  TUsuario = Class
  private
    nome: string;
    codigo: Integer;
  public
    procedure desativar(codigo:Integer);
  End;

implementation

{ TFCliente }

procedure TUsuario.desativar(codigo: Integer);
var
sql: TSQLDataSet;
begin
sql := TSQLDataSet.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.CommandText := 'UPDATE USUARIOS SET STATUS = 1 WHERE CODIGO =:CODIGO';
sql.Params[0].AsInteger := codigo;
sql.ExecSQL;
sql.Free;
end;

end.
