unit uSMEmpresa;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr, uTEmpresa;

type
  TsmEmpresa = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    empresa: TEmpresa;
  public
    { Public declarations }
      public
    function getNome():string;
    function getCodigo():Integer;
    function getResponsavel():string;
    function getAto():string;
  end;

implementation

{$R *.dfm}

uses uDM;

procedure TsmEmpresa.DSServerModuleCreate(Sender: TObject);
begin
 empresa := TEmpresa.Create;
end;

function TsmEmpresa.getAto: string;
begin
Result := empresa.getAto;
end;

function TsmEmpresa.getCodigo: Integer;
begin
Result := empresa.getCodigo;
end;

function TsmEmpresa.getNome: string;
begin
Result := empresa.getNome;
end;

function TsmEmpresa.getResponsavel: string;
begin
Result := empresa.getResponsavel;
end;

end.

