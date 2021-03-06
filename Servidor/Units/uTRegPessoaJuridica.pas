unit uTRegPessoaJuridica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids;

type
  TRegPessoaJuridica = class

  private

  public
    procedure excluir(codigo: Integer);
    function getFicha():Integer;
    function getOrdem():Integer;
  end;

implementation

{ TKitSelos }

procedure TRegPessoaJuridica.excluir(codigo: Integer);
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'DELETE FROM REGPASSOAJURIDICA WHERE CODIGO =:CODIGO';
    sql.Params[0].AsInteger := codigo;
    sql.ExecSQL;
end;

function TRegPessoaJuridica.getFicha: Integer;
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'SELECT MAX(FICHA) AS FICHA FROM REGPESSOAJURIDICA';
    sql.Open;
    Result := sql.FieldByName('FICHA').AsInteger + 1;
    sql.Free;
end;

function TRegPessoaJuridica.getOrdem: Integer;
var
  sql: TSQLDataSet;
begin
    sql := TSQLDataSet.Create(nil);
    sql.SQLConnection := DM.SQLConnection;
    sql.CommandText := 'SELECT MAX(ORDEM) AS ORDEM FROM IREGPESSOAJURIDICA';
    sql.Open;
    Result := sql.FieldByName('ORDEM').AsInteger + 1;
    sql.Free;
end;

end.
