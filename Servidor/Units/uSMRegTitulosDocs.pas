unit uSMRegTitulosDocs;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTRegTitulosDocs;

type
  TsmRegTitulosDocs = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    regTitulos: TRegTitulosDocs;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getProtocolo():Integer;
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmRegTitulosDocs }

procedure TsmRegTitulosDocs.DSServerModuleCreate(Sender: TObject);
begin
regTitulos := TRegTitulosDocs.Create;
end;

procedure TsmRegTitulosDocs.excluir(codigo: Integer);
begin
regTitulos.excluir(codigo);
end;

function TsmRegTitulosDocs.getProtocolo: Integer;
begin
Result := regTitulos.getProtocolo();
end;

end.

