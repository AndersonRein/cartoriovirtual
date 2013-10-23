unit uSMProtesto;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr, uTProtesto;

type
  TsmProtesto = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    sqsGetProtesto: TSQLDataSet;
    dspGetProtesto: TDataSetProvider;
    sqsIntimacaoSemConclusao: TSQLDataSet;
    dspIntimacaoSemConclusao: TDataSetProvider;
    sqsConsCND: TSQLDataSet;
    dspConsCND: TDataSetProvider;
    dspCadCND: TDataSetProvider;
    sqsCadCND: TSQLDataSet;
    sqsProtestosCadastrados: TSQLDataSet;
    dspProtestosCadastrados: TDataSetProvider;
    sqsExportSerasa: TSQLDataSet;
    dspExporSerasa: TDataSetProvider;
    sqsIndeceProtesto: TSQLDataSet;
    dspIndeceProtesto: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    protesto: TProtesto;
  public
    { Public declarations }
    procedure excluir(codigo: Integer);
    procedure setItem(protesto,titulo:Integer);
    procedure delItem(protesto:Integer);
    procedure protestar(protesto, aceite, ferj, protocolo:Integer; selo:string);
  end;

implementation

{$R *.dfm}

uses uDM;

procedure TsmProtesto.delItem(protesto: Integer);
begin
Self.protesto.delItem(protesto);
end;

procedure TsmProtesto.DSServerModuleCreate(Sender: TObject);
begin
 protesto := TProtesto.Create;
end;

procedure TsmProtesto.excluir(codigo: Integer);
begin
protesto.excluir(codigo);
end;

procedure TsmProtesto.protestar(protesto, aceite, ferj, protocolo: Integer; selo: string);
begin
Self.protesto.protestar(protesto, aceite, ferj, protocolo, selo);
end;

procedure TsmProtesto.setItem(protesto, titulo: Integer);
begin
Self.protesto.setItem(protesto,titulo);
end;

end.

