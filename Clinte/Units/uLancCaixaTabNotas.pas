unit uLancCaixaTabNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, uTRegistroCivil,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFLancCaixaTabNotas = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroDATA: TDateField;
    cdsCadastroLEI: TStringField;
    cdsCadastroSELO: TStringField;
    cdsCadastroTIPOSELO: TIntegerField;
    cdsCadastroATO: TIntegerField;
    cdsCadastroLIVRO: TIntegerField;
    cdsCadastroFOLHA: TIntegerField;
    cdsCadastroVLRTRANSACAO: TFMTBCDField;
    cdsCadastroVALOR: TFMTBCDField;
    cdsCadastroFERJ: TIntegerField;
    cdsCadastroFERC: TIntegerField;
    cdsCadastroTOTAL: TFMTBCDField;
    cdsCadastroFORMAPAG: TStringField;
    cdsCadastroCLIENTE: TIntegerField;
    cdsCadastroVLRCOBRADO: TFMTBCDField;
    cdsCadastroOBS: TStringField;
    Label1: TLabel;
    dbLei: TDBEdit;
    Label2: TLabel;
    dbAto: TDBEdit;
    edAto: TEdit;
    Label4: TLabel;
    dbSelo: TDBEdit;
    Label5: TLabel;
    dbTipoSelo: TDBEdit;
    Label3: TLabel;
    dbLivro: TDBEdit;
    Label6: TLabel;
    dbFolha: TDBEdit;
    Label7: TLabel;
    dbValorTransferencia: TDBEdit;
    Label8: TLabel;
    dbValor: TDBEdit;
    Label9: TLabel;
    dbFERJ: TDBEdit;
    Label10: TLabel;
    dbFerc: TDBEdit;
    Label11: TLabel;
    dbTotal: TDBEdit;
    Label12: TLabel;
    dbForma: TDBEdit;
    Label13: TLabel;
    dbCliente: TDBEdit;
    edCliente: TEdit;
    Label14: TLabel;
    dbValorCobrado: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure dbClienteClick(Sender: TObject);
  private
    { Private declarations }
    cliente: TRegistroCivil;
  public
    { Public declarations }
  end;

var
  FLancCaixaTabNotas: TFLancCaixaTabNotas;

implementation

{$R *.dfm}

uses uDM;

procedure TFLancCaixaTabNotas.dbClienteClick(Sender: TObject);
begin
  inherited;
 cdsCadastroCLIENTE.AsInteger := cliente.getBusca(edCliente);
end;

procedure TFLancCaixaTabNotas.FormCreate(Sender: TObject);
begin
  inherited;
 cliente := TRegistroCivil.Create;
end;

end.
