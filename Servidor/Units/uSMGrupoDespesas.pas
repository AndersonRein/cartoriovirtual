unit uSMGrupoDespesas;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTGrupoDespesa;

type
  TsmGrupoDespesas = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
  private
    { Private declarations }
    grupoDespesa: TGrupoDespesa;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmGrupoDespesas }

procedure TsmGrupoDespesas.excluir(codigo: Integer);
begin
grupoDespesa.excluir(codigo);
end;

function TsmGrupoDespesas.getNome(codigo: Integer): string;
begin
Result := grupoDespesa.getNome(codigo);
end;

end.

