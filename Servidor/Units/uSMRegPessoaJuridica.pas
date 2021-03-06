unit uSMRegPessoaJuridica;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTRegPessoaJuridica;

type
  TsmRegPessoaJuridica = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    sqsICadastro: TSQLDataSet;
    dspICadastro: TDataSetProvider;
    sqsProtocolo: TSQLDataSet;
    dspProtocolo: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    registro: TRegPessoaJuridica;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getFicha():Integer;
    function getOrdem():Integer;
  end;

implementation

{$R *.dfm}

uses uDM;

procedure TsmRegPessoaJuridica.DSServerModuleCreate(Sender: TObject);
begin
registro := TRegPessoaJuridica.Create;
end;

procedure TsmRegPessoaJuridica.excluir(codigo: Integer);
begin
registro.excluir(codigo);
end;

function TsmRegPessoaJuridica.getFicha: Integer;
begin
Result := registro.getFicha;
end;

function TsmRegPessoaJuridica.getOrdem: Integer;
begin
Result := registro.getOrdem;
end;

end.

