unit uDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect;

type
  TFDespeas = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edBusca: TEdit;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    dtpInicio: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    btnBuscar: TSpeedButton;
    DBGrid1: TDBGrid;
    dspConection: TDSProviderConnection;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaDATA: TDateField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaCODSUBGRUPODESPSA: TIntegerField;
    cdsConsultaSUBGRUPODESPSA: TStringField;
    cdsConsultaVALOR: TFMTBCDField;
    cdsConsultaCODGRUPODESPESA: TIntegerField;
    cdsConsultaGRUPODESPESA: TStringField;
    cdsConsultaCARNELEAO: TIntegerField;
    btnAdd: TSpeedButton;
    btnEditar: TSpeedButton;
    btnImprimir: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure edBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure mostraDados();
  public
    { Public declarations }
  end;

var
  FDespeas: TFDespeas;

implementation

{$R *.dfm}

uses uDM, uCadLancDespesas;

{ TFDespeas }

procedure TFDespeas.btnAddClick(Sender: TObject);
var
lanc: TFCadLancDespesas;
begin
  inherited;
  lanc := TFCadLancDespesas.Create(nil);
  lanc.inserir;
  lanc.Free;
  cdsConsulta.Refresh;
end;

procedure TFDespeas.btnBuscarClick(Sender: TObject);
begin
  inherited;
 mostraDados;
end;

procedure TFDespeas.btnEditarClick(Sender: TObject);
var
lanc: TFCadLancDespesas;
begin
  inherited;
  lanc := TFCadLancDespesas.Create(nil);
  lanc.alterar(cdsConsultaCODIGO.AsInteger);
  lanc.Free;
  cdsConsulta.Refresh;
end;

procedure TFDespeas.edBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key = #13 then
  btnBuscar.Click;
end;

procedure TFDespeas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsConsulta.Close;
  dspConection.Close;
end;

procedure TFDespeas.FormCreate(Sender: TObject);
begin
  inherited;
 dtpInicio.Date := Date - 3;
 dtpFinal.Date := Date;
end;

procedure TFDespeas.FormShow(Sender: TObject);
begin
  inherited;
 mostraDados;
end;

procedure TFDespeas.mostraDados;
begin
cdsConsulta.Close;
cdsConsulta.Params[0].AsDate := dtpInicio.Date;
cdsConsulta.Params[1].AsDate := dtpFinal.Date;
cdsConsulta.Params[2].AsString := edBusca.Text + '%';
cdsConsulta.Open;
end;

end.
