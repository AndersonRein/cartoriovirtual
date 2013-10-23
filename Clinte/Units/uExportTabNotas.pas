unit uExportTabNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect;

type
  TFExportTabNotas = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    dtInicio: TDateTimePicker;
    dtFim: TDateTimePicker;
    spbExportar: TSpeedButton;
    DBGrid1: TDBGrid;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    dspConection: TDSProviderConnection;
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
    spbPesquisar: TSpeedButton;
    GroupBox4: TGroupBox;
    ProgressBar: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spbPesquisarClick(Sender: TObject);
    procedure spbExportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure mostraDados;
  public
    { Public declarations }
  end;

var
  FExportTabNotas: TFExportTabNotas;

implementation

{$R *.dfm}

uses uDM, uPadrao;

procedure TFExportTabNotas.FormCreate(Sender: TObject);
begin
  inherited;
 dtInicio.Date := Date - 4;
 dtFim.Date := Date;
end;

procedure TFExportTabNotas.FormShow(Sender: TObject);
begin
  inherited;
  mostraDados
end;

procedure TFExportTabNotas.mostraDados;
begin
  cdsConsulta.Close;
  cdsConsulta.Params[0].AsDate := dtInicio.Date;
  cdsConsulta.Params[1].AsDate := dtFim.Date;
  cdsConsulta.Open;
end;

procedure TFExportTabNotas.spbExportarClick(Sender: TObject);
begin
  inherited;
 ProgressBar.Max := cdsConsulta.RecordCount;
 cdsConsulta.First;
 while not cdsConsulta.Eof do
  begin
    ProgressBar.Position := ProgressBar.Position + 1;
    cdsConsulta.Next;
  end;
  ShowMessage(SUCESSO);
  ProgressBar.Position := 0;
end;

procedure TFExportTabNotas.spbPesquisarClick(Sender: TObject);
begin
  inherited;
mostraDados;
end;

end.
