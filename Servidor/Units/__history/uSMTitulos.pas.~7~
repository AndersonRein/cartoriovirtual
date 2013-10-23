unit uSMTitulos;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTTitulos;

type
  TsmTitulos = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    titulo: TTitulos;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
  end;

implementation

{$R *.dfm}

uses uDM;

procedure TsmTitulos.DSServerModuleCreate(Sender: TObject);
begin
titulo := TTitulos.Create;
end;

procedure TsmTitulos.excluir(codigo: Integer);
begin
titulo.excluir(codigo);
end;

function TsmTitulos.getNome(codigo: Integer): string;
begin
Result := titulo.getNome(codigo);
end;

end.

