unit uCaixaTabNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFCaixaTabNotas = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDATA: TDateField;
    cdsConsultaLEI: TStringField;
    cdsConsultaSELO: TStringField;
    cdsConsultaTIPOSELO: TIntegerField;
    cdsConsultaATO: TIntegerField;
    cdsConsultaLIVRO: TIntegerField;
    cdsConsultaFOLHA: TIntegerField;
    cdsConsultaVLRTRANSACAO: TFMTBCDField;
    cdsConsultaVALOR: TFMTBCDField;
    cdsConsultaFERJ: TIntegerField;
    cdsConsultaFERC: TIntegerField;
    cdsConsultaTOTAL: TFMTBCDField;
    cdsConsultaFORMAPAG: TStringField;
    cdsConsultaCODCLIENTE: TIntegerField;
    cdsConsultaCLIENTE: TStringField;
    cdsConsultaVLRCOBRADO: TFMTBCDField;
    cdsConsultaOBS: TStringField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCaixaTabNotas: TFCaixaTabNotas;

implementation

{$R *.dfm}

uses uLancCaixaTabNotas;

procedure TFCaixaTabNotas.btbAlterarClick(Sender: TObject);
var
lanc: TFLancCaixaTabNotas;
begin
  inherited;
lanc := TFLancCaixaTabNotas.Create(nil);
lanc.alterar(cdsConsultaCODIGO.AsInteger);
lanc.Free;
atualizaGrid;
end;

procedure TFCaixaTabNotas.btbInserirClick(Sender: TObject);
var
lanc: TFLancCaixaTabNotas;
begin
  inherited;
lanc := TFLancCaixaTabNotas.Create(nil);
lanc.inserir;
lanc.Free;
atualizaGrid;
end;

end.
