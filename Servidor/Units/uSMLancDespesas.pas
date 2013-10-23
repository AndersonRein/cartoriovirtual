unit uSMLancDespesas;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTDespesas;

type
  TsmLancDespesas = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    sqsConsulta: TSQLDataSet;
    sqsRelCaixaFerjInd: TSQLDataSet;
    dspRelCaixaFerjInd: TDataSetProvider;
    sqsRelCaixaFerjSemana: TSQLDataSet;
    dspRelCaixaFerjSemana: TDataSetProvider;
    sqsRelCaixaGeral: TSQLDataSet;
    dspRelCaixaGeral: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    despesas: TDespesas;
  public
    { Public declarations }
    function getTotalDiaFerj(data: string):Double;
    function getTotalSemanaFerj(dtIni, dtFim: string):Double;
    function getTotalMes(mes, ano:Integer):Double;
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmLancDespesas }

procedure TsmLancDespesas.DSServerModuleCreate(Sender: TObject);
begin
despesas := TDespesas.Create;
end;

function TsmLancDespesas.getTotalDiaFerj(data: string): Double;
begin
Result := despesas.getTotalDiaFerj(StrToDate(data));
end;

function TsmLancDespesas.getTotalMes(mes, ano: Integer): Double;
begin
Result := despesas.getTotalMes(mes, ano);
end;

function TsmLancDespesas.getTotalSemanaFerj(dtIni, dtFim: string): Double;
begin
Result := despesas.getTotalSemanaFerj(StrToDate(dtIni), StrToDate(dtFim));
end;

end.

