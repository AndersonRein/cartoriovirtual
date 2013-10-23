unit uSMRegistroSelo;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTRegistroSelo;

type
  TsmRegistroSelo = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    sqsKitSelo: TSQLDataSet;
    dspKitSelo: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    registroSelo: TRegistroSelo;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getProxNumSerie(kitSelo:Integer): Integer;
    function permitirSelo(selo:Integer):Boolean;
    function seloLancado(selo:Integer):Boolean;
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmRegistroSelo }

procedure TsmRegistroSelo.DSServerModuleCreate(Sender: TObject);
begin
 registroSelo := TRegistroSelo.Create;
end;

procedure TsmRegistroSelo.excluir(codigo: Integer);
begin
registroSelo.excluir(codigo);
end;

function TsmRegistroSelo.getProxNumSerie(kitSelo:Integer): Integer;
begin
Result := registroSelo.getProxNumSerie(kitSelo);
end;

function TsmRegistroSelo.permitirSelo(selo: Integer): Boolean;
begin
Result := registroSelo.permitirSelo(selo);
end;

function TsmRegistroSelo.seloLancado(selo: Integer): Boolean;
begin
Result := registroSelo.seloLancado(selo);
end;

end.

