unit uCNDProtesto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons;

type
  TFCNDProtesto = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    edAutografo: TEdit;
    GroupBox5: TGroupBox;
    dtInicio: TDateTimePicker;
    dtFim: TDateTimePicker;
    DBGrid1: TDBGrid;
    dspConnection: TDSProviderConnection;
    cdsConsCND: TClientDataSet;
    cdsConsCNDCODIGO: TIntegerField;
    cdsConsCNDSELO: TStringField;
    cdsConsCNDCODAUTOGRAFO: TIntegerField;
    cdsConsCNDAUTOGRAFO: TStringField;
    cdsConsCNDNACIONALIDADE: TStringField;
    cdsConsCNDCODCIDADE: TIntegerField;
    cdsConsCNDCIDADE: TStringField;
    cdsConsCNDUF: TStringField;
    cdsConsCNDCODESTADOCIVIL: TSmallintField;
    cdsConsCNDESTADOCIVIL: TStringField;
    cdsConsCNDPROFISSAO: TStringField;
    cdsConsCNDRG_IE: TStringField;
    cdsConsCNDCPF_CNPJ: TStringField;
    cdsConsCNDENDERECO: TStringField;
    cdsConsCNDNUMERO: TStringField;
    cdsConsCNDBAIRRO: TStringField;
    cdsConsCNDUSUARIO: TIntegerField;
    cdsConsCNDFUNCIONARIO: TStringField;
    cdsConsCNDFUNCAO: TStringField;
    cdsConsCNDFERC: TFMTBCDField;
    cdsConsCNDDATA: TDateField;
    dsConsCND: TDataSource;
    SpeedButton1: TSpeedButton;
    procedure edAutografoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure mostraDados();
  public
    { Public declarations }
  end;

var
  FCNDProtesto: TFCNDProtesto;

implementation

{$R *.dfm}

uses uDM;

{ TFCNDProtesto }

procedure TFCNDProtesto.edAutografoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    mostraDados;
end;

procedure TFCNDProtesto.FormShow(Sender: TObject);
begin
  inherited;
 dtInicio.Date := Date - 15;
 dtFim.Date := date;
 mostraDados;
end;

procedure TFCNDProtesto.mostraDados;
begin
cdsConsCND.Close;
cdsConsCND.Params[0].AsString := edAutografo.Text + '%';
cdsConsCND.Params[1].AsDate := dtInicio.Date;
cdsConsCND.Params[2].AsDate := dtFim.Date;
cdsConsCND.Open;
end;

end.
