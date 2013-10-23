unit uSMFormaPagamento;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTFormasPagamento;

type
  TsmFormaPagamento = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    sqsConsulta: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
  private
    { Private declarations }
    formas: TFormasPagamento;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmFormaPagamento }

procedure TsmFormaPagamento.excluir(codigo: Integer);
begin
formas.excluir(codigo);
end;

function TsmFormaPagamento.getNome(codigo: Integer): string;
begin
Result := formas.getNome(codigo);
end;

end.

