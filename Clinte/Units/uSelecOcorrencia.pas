unit uSelecOcorrencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.StdCtrls, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.DBCtrls, Vcl.Buttons;

type
  TFSelecOcorrencia = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    dbOcorrencia: TDBLookupComboBox;
    cdsOcorrencia: TClientDataSet;
    dsOcorrencia: TDataSource;
    dspConnection: TDSProviderConnection;
    cdsOcorrenciaCODIGO: TIntegerField;
    cdsOcorrenciaNOME: TStringField;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
    cancelou: Boolean;
  public
    { Public declarations }
    function getCancelou:Boolean;
    function getOcorrencia:Integer;
  end;

var
  FSelecOcorrencia: TFSelecOcorrencia;

implementation

{$R *.dfm}

uses uDM;

procedure TFSelecOcorrencia.btCancelarClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFSelecOcorrencia.btSalvarClick(Sender: TObject);
begin
  inherited;
cancelou := False;
Close;
end;

procedure TFSelecOcorrencia.FormCreate(Sender: TObject);
begin
  inherited;
 cancelou := True;
end;

procedure TFSelecOcorrencia.FormShow(Sender: TObject);
begin
  inherited;
 cdsOcorrencia.Close;
 cdsOcorrencia.Params[0].AsString := '%';
 cdsOcorrencia.Open;
end;

function TFSelecOcorrencia.getCancelou: Boolean;
begin
Result := cancelou;
end;

function TFSelecOcorrencia.getOcorrencia: Integer;
begin
Result := cdsOcorrenciaCODIGO.AsInteger;
end;

end.
