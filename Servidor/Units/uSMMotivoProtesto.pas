unit uSMMotivoProtesto;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTMotivoProtesto;

type
  TsmMotivoProtesto = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    sqsConsulta: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
  private
    { Private declarations }
    motivo: TMotivosProtesto;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function getDescricao(codigo:Integer):string;
    function protestavel(motivo:Integer):Boolean;
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmMotivoProtesto }

procedure TsmMotivoProtesto.excluir(codigo: Integer);
begin
  motivo.excluir(codigo);
end;

function TsmMotivoProtesto.getDescricao(codigo: Integer): string;
begin
 Result := motivo.getDescricao(codigo);
end;

function TsmMotivoProtesto.getNome(codigo: Integer): string;
begin
 Result := motivo.getNome(codigo);
end;

function TsmMotivoProtesto.protestavel(motivo: Integer): Boolean;
begin
Result := Self.motivo.protestavel(motivo);
end;

end.

