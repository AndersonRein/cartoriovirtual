unit uSMEmolumentos;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTEmolumentos;

type
  TsmEmolumentos = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    emolumento: TEmolumentos;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getTipoATO(codigo:Integer):string;
    function getValor(codigo:Integer):Double;
    function getTipoSelo(codigo:Integer):Integer;
    function getCodigo(codLei:string):Integer;
    function getVlrTransacao(codigo:Integer):Double;
    function getVlrFerc(codigo:Integer):Double;
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmEmolumentos }

procedure TsmEmolumentos.DSServerModuleCreate(Sender: TObject);
begin
 emolumento := TEmolumentos.Create;
end;

procedure TsmEmolumentos.excluir(codigo: Integer);
begin
 emolumento.excluir(codigo);
end;

function TsmEmolumentos.getCodigo(codLei: string): Integer;
begin
Result := emolumento.getCodigo(codLei);
end;

function TsmEmolumentos.getTipoATO(codigo: Integer): string;
begin
Result := emolumento.getTipoATO(codigo);
end;

function TsmEmolumentos.getTipoSelo(codigo: Integer): Integer;
begin
Result := emolumento.getTipoSelo(codigo);
end;

function TsmEmolumentos.getValor(codigo: Integer): Double;
begin
Result := emolumento.getValor(codigo);
end;

function TsmEmolumentos.getVlrFerc(codigo: Integer): Double;
begin
Result := emolumento.getVlrFerc(codigo);
end;

function TsmEmolumentos.getVlrTransacao(codigo: Integer): Double;
begin
Result := emolumento.getVlrTransacao(codigo);
end;

end.

