unit uTProtocolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, uBusca, DBGrids, Datasnap.DBClient;

type
  TProtocolo = class

  private

  public
    function getBusca(edit: TEdit): Integer;
    function protocolarProtesto(apresentante, devedor, ocorencia, usuario: Integer): Integer;
  end;

implementation

{ TUnidadeMedida }

function TProtocolo.getBusca(edit: TEdit): Integer;
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
  busca.new('Protocolo', 'SELECT CODIGO, NOME FROM VAUTOGRAFOS WHERE NOME LIKE :NOME');
  if busca.getCancelou then
    begin
    Result := 0;
    Exit;
  end;
  Result := busca.getCodigo;
  edit.Text := busca.getNome;
  busca.Free;
end;

function TProtocolo.protocolarProtesto(apresentante, devedor, ocorencia, usuario: Integer): Integer;
var
sql : TSqlServerMethod;
begin
sql := TSqlServerMethod.Create(nil);
sql.SQLConnection := DM.SQLConnection;
sql.ServerMethodName := 'TsmProtocolo.protocolarProtesto';
sql.Params[0].AsInteger := apresentante;
sql.Params[1].AsInteger := devedor;
sql.Params[2].AsInteger := usuario;
sql.Params[3].AsSmallInt := ocorencia;
sql.ExecuteMethod;
Result := sql.Params[4].AsInteger;
end;

end.
