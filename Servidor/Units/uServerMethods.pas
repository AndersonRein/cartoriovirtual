unit uServerMethods;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth, uTCidade, SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Data.DB, uTCalendario, uTConfiguracoes;

type
{$METHODINFO ON}
  TServerMethods = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    cidade: TCidade;
    calendaio: TCalendario;
    config: TConfiguracoes;
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function getNomeCidade(codigo: Integer): string;
    function makeCodigo(sGenerator: string):Int64;
    function getDiaProtesto():string;
    function getRodapeRegJuridico():string;
    procedure setRodapeRegJuridico(descricao:string);
  end;
{$METHODINFO OFF}

implementation

{$R *.dfm}

uses System.StrUtils, uDM;

procedure TServerMethods.DataModuleCreate(Sender: TObject);
begin
 cidade := TCidade.Create;
 calendaio := TCalendario.Create;
 config := TConfiguracoes.Create;
end;

function TServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods.getDiaProtesto: string;
var
I,J:SmallInt;
data: TDate;
begin
data := Date;
J := 0;
for I := 0 to 3 do
  begin
    Inc(J);
     while not calendaio.eDiaUtil(Date + J) do
        begin
          Inc(J);
        end;
     while calendaio.eFeriado(data + J) do
        begin
          Inc(J);
        end;
  end;
       Result := DateToStr(Date + J);
end;

function TServerMethods.getNomeCidade(codigo: Integer): string;
begin
 Result := cidade.getNomeCidade(codigo);
end;

function TServerMethods.getRodapeRegJuridico: string;
begin
Result := config.getRodapeRegJuridico;
end;

function TServerMethods.makeCodigo(sGenerator: string): Int64;
var
  sql: TSQLQuery;
begin
  sql := TSQLQuery.Create(nil);
  sql.SQLConnection := DM.SQLConnection;

  sql.CommandText := ' select gen_id(' + sGenerator +
    ',1) as VALOR from rdb$database ';
  sql.Open;

  if (sql.FieldByName('VALOR').AsInteger = 0) or
    (sql.FieldByName('VALOR').IsNull) then
    Result := 1
  else
    Result := sql.FieldByName('VALOR').AsInteger;

  sql.Free;

end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

procedure TServerMethods.setRodapeRegJuridico(descricao: string);
begin
config.setRodapeRegJuridico(descricao);
end;

end.

