unit uSMFeriados;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, uTCalendario;

type
  TsmFeriados = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    sqsConsulta: TSQLDataSet;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    calendario: TCalendario;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function eFeriado(data: TDate):Boolean;
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmFeriados }

procedure TsmFeriados.DSServerModuleCreate(Sender: TObject);
begin
 calendario := TCalendario.Create;
end;

function TsmFeriados.eFeriado(data: TDate): Boolean;
begin
Result := calendario.eFeriado(data);
end;

procedure TsmFeriados.excluir(codigo: Integer);
begin
calendario.excluir(codigo);
end;

function TsmFeriados.getNome(codigo: Integer): string;
begin
Result := calendario.getNome(codigo);
end;

end.

