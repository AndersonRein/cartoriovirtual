unit uSMKitSelo;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth, uTKitSelo,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider;

type
  TsmKitSelo = class(TDSServerModule)
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    sqsCadastro: TSQLDataSet;
    sqsConsulta: TSQLDataSet;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    kitSelo: TKitSelos;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
  end;

implementation

{$R *.dfm}

uses uDM ;

procedure TsmKitSelo.DSServerModuleCreate(Sender: TObject);
begin
 kitSelo := TKitSelos.Create;
end;

procedure TsmKitSelo.excluir(codigo: Integer);
begin
kitSelo.excluir(codigo);
end;

function TsmKitSelo.getNome(codigo: Integer): string;
begin
Result := kitSelo.getNome(codigo);
end;

end.

