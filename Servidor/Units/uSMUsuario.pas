unit uSMUsuario;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr, uTUsuario;

type
  TsmUsuario = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    sqsLogin: TSQLDataSet;
    dspLogins: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    usuario: TUsuario;
  public
    { Public declarations }
    procedure desativar(codigo:Integer);
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmUsuario }

procedure TsmUsuario.desativar(codigo: Integer);
begin
  usuario.desativar(codigo);
end;

procedure TsmUsuario.DSServerModuleCreate(Sender: TObject);
begin
usuario := TUsuario.Create;
end;

end.

