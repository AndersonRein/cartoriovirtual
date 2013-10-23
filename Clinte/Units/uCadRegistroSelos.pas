unit uCadRegistroSelos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, uTRegistoSelos,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFCadRegistroSelo = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroKITSELO: TIntegerField;
    cdsCadastroQUANTIDADEKIT: TIntegerField;
    cdsCadastroENTREGA: TDateField;
    cdsCadastroSERIEINI: TLargeintField;
    cdsCadastroSERIEFIM: TLargeintField;
    Label1: TLabel;
    lbl1: TLabel;
    dbQuantidade: TDBEdit;
    lbl2: TLabel;
    dbEntrega: TDBEdit;
    lbl3: TLabel;
    dbSerieInicial: TDBEdit;
    lbl4: TLabel;
    dbSerieFinal: TDBEdit;
    dbKitSelo: TDBLookupComboBox;
    cdsKitSelo: TClientDataSet;
    dsKitSelo: TDataSource;
    cdsKitSeloCODIGO: TIntegerField;
    cdsKitSeloNOME: TStringField;
    cdsKitSeloQUANTIDADE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure dbQuantidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbSerieInicialKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbKitSeloClick(Sender: TObject);
    procedure cdsKitSeloAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    registroSelo: TRegistroSelos;

  public
    { Public declarations }
  end;

var
  FCadRegistroSelo: TFCadRegistroSelo;

implementation

{$R *.dfm}

procedure TFCadRegistroSelo.cdsKitSeloAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if cdsCadastro.State in [dsInsert, dsEdit] then
  cdsCadastroSERIEINI.AsInteger := registroSelo.getProxNumSerie(cdsKitSeloCODIGO.AsInteger);
end;

procedure TFCadRegistroSelo.dbKitSeloClick(Sender: TObject);
begin
  inherited;
cdsCadastroSERIEINI.AsInteger := registroSelo.getProxNumSerie(cdsKitSeloCODIGO.AsInteger);
end;

procedure TFCadRegistroSelo.dbQuantidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if dbQuantidade.Text = '' then
  Exit;
  cdsCadastroSERIEFIM.AsInteger := registroSelo.calcularSerieFinal(cdsKitSeloQUANTIDADE.AsInteger, StrToIntDef(dbQuantidade.Text,0), cdsCadastroSERIEINI.AsInteger);
end;

procedure TFCadRegistroSelo.dbSerieInicialKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if dbSerieInicial.Text = '' then
  Exit;
  cdsCadastroSERIEFIM.AsInteger := registroSelo.calcularSerieFinal(cdsKitSeloQUANTIDADE.AsInteger, StrToIntDef(dbQuantidade.Text,0), StrToIntDef(dbSerieInicial.Text, 0));
end;

procedure TFCadRegistroSelo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 cdsKitSelo.Close;
end;

procedure TFCadRegistroSelo.FormCreate(Sender: TObject);
begin
  inherited;
  registroSelo := TRegistroSelos.Create;
  cdsKitSelo.Close;
  cdsKitSelo.Open;
end;

end.
