unit uSMBusca;

interface

uses
  SysUtils, Classes, DSServer, FMTBcd, DB, SqlExpr, Provider;

type
  TsmBusca = class(TDSServerModule)
    dspBusca: TDataSetProvider;
    sqsBusca: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setSQL(sql: string);
  end;

var
  smBusca: TsmBusca;

implementation

uses uDM;

{$R *.dfm}

{ TsmBusca }

procedure TsmBusca.setSQL(sql: string);
begin
sqsBusca.CommandText := sql;
end;

end.




