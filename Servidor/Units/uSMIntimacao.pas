unit uSMIntimacao;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTIntimacao;

type
  TsmIntimacao = class(TDSServerModule)
    dspConsulta: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    intimacao: TIntimacao;
  public
    { Public declarations }
    procedure intimar(protesto, aceite:Integer; selo:string; protocolo, ferj:Integer);
    function protestoIntimado(protesto:Integer):Boolean;
    procedure concluir(intimacao, tipoConclusao, protesto:Integer; data, dtProtesto:string);
    procedure naoConcluir(intimacao, tipoConclusao, protesto:Integer; dtProtesto:string);
  end;

implementation

{$R *.dfm}

uses uDM, uSMProtesto;


procedure TsmIntimacao.concluir(intimacao, tipoConclusao, protesto: Integer; data, dtProtesto:string);
begin
 Self.intimacao.concluir(intimacao,tipoConclusao, protesto,StrToDate(data), StrToDate(dtProtesto));
end;

procedure TsmIntimacao.naoConcluir(intimacao, tipoConclusao, protesto: Integer; dtProtesto:string);
begin
 Self.intimacao.concluir(intimacao, tipoConclusao, protesto, StrToDate(dtProtesto));
end;

procedure TsmIntimacao.DSServerModuleCreate(Sender: TObject);
begin
 intimacao := TIntimacao.Create;
end;

procedure TsmIntimacao.intimar(protesto, aceite: Integer; selo:string; protocolo, ferj:Integer);
begin
intimacao.intimar(protesto, aceite, selo, protocolo, ferj);
end;

function TsmIntimacao.protestoIntimado(protesto: Integer): Boolean;
begin
Result := intimacao.protestoIntimado(protesto);
end;

end.

