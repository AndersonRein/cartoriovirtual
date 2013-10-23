unit uTConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, FMTBcd, DBCtrls, uDM, CheckLst,
  SqlExpr, DB, DBGrids, IniFiles;

type
  TConfiguracoes = Class
  private
    cliente: Integer;
  public
    function getCaminhoBackup(): string;
    procedure conectar();
    function getLiberacao(): TDate;
    procedure setLibercao(vencimento: TDate);
    function getRodapeRegJuridico():string;
    procedure setRodapeRegJuridico(descricao:string);
  End;

implementation

{ TConfiguracoes }

procedure TConfiguracoes.conectar;
var
  myini: TMEMInifile;
  hostName, Porta: string;
begin
  myini := TMEMInifile.Create('CONFIG\CONFIG.ini');
  with myini do
  begin
    hostName := Readstring('DATASNAP', 'HOSTNAME', 'LOCALHOST');
    Porta := Readstring('DATASNAP', 'PORTA', '211');
  end;

end;

function TConfiguracoes.getCaminhoBackup: string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT CAMINHOBACKUP FROM CONFIGURACOES';
  sql.Open;

  Result := sql.FieldByName('CAMINHOBACKUP').AsString;
end;

function TConfiguracoes.getLiberacao: TDate;
var
  sqlsm: TSqlServerMethod;
begin
  sqlsm := TSqlServerMethod.Create(nil);
 // sqlsm.SQLConnection := DM.DataSnapConnection;
  sqlsm.ServerMethodName := 'TsmLiberacoes.getLiberacao';
  sqlsm.Params[0].AsInteger := cliente;
  sqlsm.ExecuteMethod;

  Result := StrToDate(sqlsm.Params[1].AsString);
end;

function TConfiguracoes.getRodapeRegJuridico: string;
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'SELECT RODAPEPJURIDICA FROM CONFIGURACOES';
  sql.Open();
  Result := sql.FieldByName('RODAPEPJURIDICA').AsString;
  sql.Free;
end;

procedure TConfiguracoes.setLibercao(vencimento: TDate);
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText :=
    'INSERT INTO LIBERACOES (CODIGO, VENCIMENTO) VALUES (0, :VENCIMENTO)';
  sql.Params[0].AsDate := vencimento;
  sql.ExecSQL();
end;

procedure TConfiguracoes.setRodapeRegJuridico(descricao: string);
var
  sql: TSQLDataSet;
begin
  sql := TSQLDataSet.Create(nil);
  sql.SQLConnection := DM.SQLConnection;
  sql.CommandText := 'UPDATE CONFIGURACOES SET RODAPEPJURIDICA =:RODAPE';
  sql.Params[0].AsString := descricao;
  sql.ExecSQL();
  sql.Free;
end;

end.
