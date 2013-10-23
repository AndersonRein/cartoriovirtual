unit uSMRegBoletos;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth, uTRegBoleto,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider;

type
  TsmRegBoletos = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    regBoleto: TRegBoleto;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmRegBoletos }

procedure TsmRegBoletos.DSServerModuleCreate(Sender: TObject);
begin
 regBoleto := TRegBoleto.Create;
end;

procedure TsmRegBoletos.excluir(codigo: Integer);
begin
 regBoleto.excluir(codigo);
end;

end.
