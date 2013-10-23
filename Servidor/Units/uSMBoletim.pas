unit uSMBoletim;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, uTBoletim, uTEmolumentos;

type
  TsmBoletim = class(TDSServerModule)
    sqsCadastro: TSQLDataSet;
    sqsConsulta: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    dspConsulta: TDataSetProvider;
    sqsLancBoletim: TSQLDataSet;
    dspLancBoletim: TDataSetProvider;
    dspItensBoletim: TDataSetProvider;
    sqsItenBoletim: TSQLDataSet;
    sqsLancItemTotal: TSQLDataSet;
    dspLancItemTotal: TDataSetProvider;
    dspConsItemTotal: TDataSetProvider;
    sqsConsItemTotal: TSQLDataSet;
    sqsRelCaixaIndivDiario: TSQLDataSet;
    dspRelCaixaIndivDiario: TDataSetProvider;
    sqsRelCaixaTotalDiario: TSQLDataSet;
    dspRelCaixaTotalDiario: TDataSetProvider;
    sqsRelCaixaIndSemana: TSQLDataSet;
    dspRelCaixaIndSemana: TDataSetProvider;
    sqsRelCaixaTotalSemana: TSQLDataSet;
    dspRelCaixaTotalSemana: TDataSetProvider;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    boletim: TBoletim;
    emolumento : TEmolumentos;
  public
    { Public declarations }
    function getTotalFerj(boletim:Integer):Double;
    function getTotalFerc(boletim:Integer):Double;
    procedure excluirItem(codigo:Integer);
    procedure excluirItemTotal(codigo:Integer);
    procedure lancIndividual(codLei, selo:string; fPag, protocolo:Integer);
    function getTotalSelosLancTotal(boletim:Integer):Double;
    function getTotalRecitasFerjDia(data: string):Double;
    function getTotalRecitasFerjSemana(dtIni, dtFim: string):Double;
    function getTotalCaixaMes(mes, ano:Integer):Double;
    function getBletim():Integer;
    function getVlrFerj(vlrEmolumento:Double):Double;
    procedure fechar(codigo:Integer);
  end;

implementation

{$R *.dfm}

uses uDM;

{ TsmBoletim }

procedure TsmBoletim.DSServerModuleCreate(Sender: TObject);
begin
 boletim := TBoletim.Create;
 emolumento := TEmolumentos.Create;
end;

procedure TsmBoletim.excluirItem(codigo: Integer);
begin
boletim.excluirItem(codigo);
end;

procedure TsmBoletim.excluirItemTotal(codigo: Integer);
begin
boletim.excluirItemTotal(codigo);
end;

procedure TsmBoletim.fechar(codigo: Integer);
begin
boletim.fechar(codigo);
end;

function TsmBoletim.getBletim: Integer;
begin
Result := boletim.getBletim;
end;

function TsmBoletim.getTotalCaixaMes(mes, ano: Integer): Double;
begin
Result := boletim.getTotalCaixaMes(mes, ano);
end;

function TsmBoletim.getTotalFerc(boletim: Integer): Double;
begin
Result := Self.boletim.getTotalFerc(boletim);
end;

function TsmBoletim.getTotalFerj(boletim: Integer): Double;
begin
Result := Self.boletim.getTotalFerj(boletim);
end;

function TsmBoletim.getTotalRecitasFerjDia(data: string): Double;
begin
Result := boletim.getTotalRecitasFerjDia(StrToDate(data));
end;

function TsmBoletim.getTotalRecitasFerjSemana(dtIni, dtFim: string): Double;
begin
Result := boletim.getTotalRecitasFerjSemana(StrToDate(dtIni), StrToDate(dtFim));
end;

function TsmBoletim.getTotalSelosLancTotal(boletim: Integer): Double;
begin
Result := Self.boletim.getTotalSelosLancTotal(boletim);
end;

function TsmBoletim.getVlrFerj(vlrEmolumento: Double): Double;
begin
Result := boletim.getVlrFerj(vlrEmolumento);
end;

procedure TsmBoletim.lancIndividual(codLei, selo: string; fPag,protocolo:Integer);
var
codEmolumento, tipoSelo:Integer;
vlrTransacao, vlrEmolumento, ferj, ferc:Double;
begin
codEmolumento := emolumento.getCodigo(codLei);
tipoSelo := emolumento.getTipoSelo(codEmolumento);
vlrTransacao := emolumento.getVlrTransacao(codEmolumento);
vlrEmolumento := emolumento.getValor(codEmolumento);
ferj := getVlrFerj(vlrEmolumento);
ferc := emolumento.getVlrFerc(codEmolumento);
Self.boletim.lancIndividual(codLei, selo, codEmolumento, tipoSelo, boletim.getBletim, fPag, protocolo, vlrTransacao, vlrEmolumento, ferj, ferc);
end;

end.

