unit uSMAutografos;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr, uTAutografos;

type
  TsmAutografos = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    sqsConsulta: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    sqsImpressao: TSQLDataSet;
    dspImpressao: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    autografo: TAutografos;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    function getNome(codigo: Integer): string;
    function seqEmUso(seq:string):Boolean;
    procedure setConjuge(conjuge, codigo:Integer);
    procedure limparConjuge(codigo:Integer);
    function registrado(cpf:string):Boolean;
    function getSequencia():string;
  end;

implementation

{$R *.dfm}

uses uDM;

procedure TsmAutografos.DSServerModuleCreate(Sender: TObject);
begin
 autografo := TAutografos.Create;
end;

procedure TsmAutografos.excluir(codigo: Integer);
begin
autografo.excluir(codigo);
end;

function TsmAutografos.getNome(codigo: Integer): string;
begin
Result := autografo.getNome(codigo);
end;

function TsmAutografos.getSequencia: string;
begin
Result := autografo.getSequencia;
end;

procedure TsmAutografos.limparConjuge(codigo: Integer);
begin
autografo.limparConjuge(codigo);
end;

function TsmAutografos.registrado(cpf: string): Boolean;
begin
Result := autografo.registrado(cpf);
end;

function TsmAutografos.seqEmUso(seq: string): Boolean;
begin
Result := autografo.seqEmUso(seq);
end;

procedure TsmAutografos.setConjuge(conjuge, codigo: Integer);
begin
autografo.setConjuge(conjuge, codigo);
end;

end.

