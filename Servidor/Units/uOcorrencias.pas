unit uOcorrencias;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTOcorrencia;

type
  TsmOcorrencias = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    sqsConsulta: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    ocorrencia: TOcorrencia;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    procedure setOcorrencia(protocolo, ocorencia:Integer);
  end;

implementation

{$R *.dfm}

uses uDM;

procedure TsmOcorrencias.DSServerModuleCreate(Sender: TObject);
begin
 ocorrencia := TOcorrencia.Create;
end;

procedure TsmOcorrencias.excluir(codigo: Integer);
begin
ocorrencia.excluir(codigo);
end;

function TsmOcorrencias.getNome(codigo: Integer): string;
begin
Result := ocorrencia.getNome(codigo);
end;

procedure TsmOcorrencias.setOcorrencia(protocolo, ocorencia: Integer);
begin
ocorrencia.setOcorrencia(protocolo,ocorencia);
end;

end.

