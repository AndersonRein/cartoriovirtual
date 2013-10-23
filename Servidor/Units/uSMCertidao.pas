unit uSMCertidao;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TsmCertidao = class(TDSServerModule)
    sqsConsCNDProtesto: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uDM;

end.

