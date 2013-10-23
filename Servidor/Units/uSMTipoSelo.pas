unit uSMTipoSelo;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider;

type
  TsmTipoSelo = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    sqsConsLanc: TSQLDataSet;
    dspConsLanc: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uDM;

end.

