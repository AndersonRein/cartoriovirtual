unit uSMTrasacoes;

interface

uses
  SysUtils, Classes, DSServer, uTTransacoes;

type
  TsmTrasacoes = class(TDSServerModule)
    procedure DSServerModuleCreate(Sender: TObject);
    procedure DSServerModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    trasacoes: TTransacao;
  public
    { Public declarations }
    procedure start();
    procedure commit();
    procedure rollback();
    function isStarted(): boolean;
  end;

implementation

{$R *.dfm}

procedure TsmTrasacoes.commit;
begin
  trasacoes.commit;
end;

procedure TsmTrasacoes.DSServerModuleCreate(Sender: TObject);
begin
  trasacoes := TTransacao.Create;
end;

procedure TsmTrasacoes.DSServerModuleDestroy(Sender: TObject);
begin
  trasacoes.Free;
end;

function TsmTrasacoes.isStarted: boolean;
begin
  Result := trasacoes.isStarted;
end;

procedure TsmTrasacoes.rollback;
begin
  trasacoes.rollback;
end;

procedure TsmTrasacoes.start;
begin
  trasacoes.start;
end;

end.
