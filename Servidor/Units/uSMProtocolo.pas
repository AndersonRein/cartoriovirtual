unit uSMProtocolo;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth, uTProtocolo,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider;

type
  TsmProtocolo = class(TDSServerModule)
    sqsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    protocolo: TProtocolo;
  public
    { Public declarations }
    function protocolarProtesto(apresentante, devedor, usuario, ocorencia:Integer):Integer;
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmProtocolo }

procedure TsmProtocolo.DSServerModuleCreate(Sender: TObject);
begin
 protocolo := TProtocolo.Create;
end;

function TsmProtocolo.protocolarProtesto(apresentante, devedor, usuario, ocorencia: Integer): Integer;
begin
  Result := protocolo.protocolarProtesto(apresentante, devedor, usuario, ocorencia);
end;

end.

