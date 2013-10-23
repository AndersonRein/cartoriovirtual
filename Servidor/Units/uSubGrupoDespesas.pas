unit uSubGrupoDespesas;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTSubGrupoDespesa;

type
  TsmSubGrupoDespesas = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    sqsConsulta: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    subGrupo: TSubGrupoDespesa;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmSubGrupoDespesas }

procedure TsmSubGrupoDespesas.DSServerModuleCreate(Sender: TObject);
begin
 subGrupo := TSubGrupoDespesa.Create;
end;

procedure TsmSubGrupoDespesas.excluir(codigo: Integer);
begin
subGrupo.excluir(codigo);
end;

function TsmSubGrupoDespesas.getNome(codigo: Integer): string;
begin
Result := subGrupo.getNome(codigo);
end;

end.

