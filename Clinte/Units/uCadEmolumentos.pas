unit uCadEmolumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFCadEmolumentos = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroGRUPOLEI: TSmallintField;
    cdsCadastroTIPOATO: TStringField;
    cdsCadastroLEI: TStringField;
    cdsCadastroATOGERAL: TStringField;
    cdsCadastroATOFIXO: TStringField;
    cdsCadastroTIPOSELO: TIntegerField;
    cdsCadastroVALOR: TFMTBCDField;
    cdsCadastroEDITAVEL: TStringField;
    cdsCadastroATIVO: TStringField;
    cdsCadastroVLRTRANSACAO: TFMTBCDField;
    Label1: TLabel;
    dbGrupoLei: TDBEdit;
    Label2: TLabel;
    dbLei: TDBEdit;
    dbAtoGeral: TDBRadioGroup;
    dbAtoFixo: TDBRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    dbValor: TDBEdit;
    dbEditavel: TDBRadioGroup;
    dbAtivo: TDBRadioGroup;
    Label5: TLabel;
    dbVlrTransacao: TDBEdit;
    GroupBox1: TGroupBox;
    dbTipoAto: TDBMemo;
    dspTipoSelo: TDSProviderConnection;
    cdsTipoSelo: TClientDataSet;
    cdsTipoSeloCODIGO: TIntegerField;
    cdsTipoSeloNOME: TStringField;
    cdsTipoSeloTIPO: TIntegerField;
    dsTipoSelo: TDataSource;
    dbTipoSelo: TDBLookupComboBox;
    procedure dbTipoAtoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadEmolumentos: TFCadEmolumentos;

implementation

{$R *.dfm}

procedure TFCadEmolumentos.dbTipoAtoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if key = #13 then
  dbTipoAto.SetFocus;
end;

procedure TFCadEmolumentos.FormCreate(Sender: TObject);
begin
  inherited;
 cdsTipoSelo.Close;
 cdsTipoSelo.Params[0].AsInteger := 20;
 cdsTipoSelo.Open;
end;

end.
