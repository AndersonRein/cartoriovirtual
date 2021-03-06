unit uCadLancDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, uTSubGrupoDespesa;

type
  TFCadLancDespesas = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroSUBGRUPODESPSA: TIntegerField;
    cdsCadastroVALOR: TFMTBCDField;
    cdsCadastroDESCRICAO: TStringField;
    cdsCadastroDATA: TDateField;
    lbl1: TLabel;
    dbNome: TDBEdit;
    lbl2: TLabel;
    dbData: TDBEdit;
    lbl3: TLabel;
    dbValor: TDBEdit;
    lbl4: TLabel;
    dbSubGrupo: TDBEdit;
    edSubGrupo: TEdit;
    cdsCadastroFORMAPAGAMENTO: TIntegerField;
    cdsFormPag: TClientDataSet;
    dsFormPag: TDataSource;
    dspFormPag: TDSProviderConnection;
    dbFormPag: TDBLookupComboBox;
    Label1: TLabel;
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure cdsCadastroAfterEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dbSubGrupoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    subGrupo: TSubGrupoDespesa;
  public
    { Public declarations }
  end;

var
  FCadLancDespesas: TFCadLancDespesas;

implementation

{$R *.dfm}

uses uDM;

procedure TFCadLancDespesas.btSalvarClick(Sender: TObject);
begin
  inherited;
 dbNome.SetFocus;
end;

procedure TFCadLancDespesas.cdsCadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  edSubGrupo.Text := subGrupo.getNome(cdsCadastroSUBGRUPODESPSA.AsInteger);
end;

procedure TFCadLancDespesas.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDATA.AsDateTime := Date;
  edSubGrupo.Clear;
end;

procedure TFCadLancDespesas.dbSubGrupoClick(Sender: TObject);
begin
  inherited;
 cdsCadastroSUBGRUPODESPSA.AsInteger := subGrupo.getBusca(edSubGrupo);
end;

procedure TFCadLancDespesas.FormCreate(Sender: TObject);
begin
  inherited;
 subGrupo := TSubGrupoDespesa.Create;
end;

procedure TFCadLancDespesas.FormShow(Sender: TObject);
begin
  inherited;
 cdsFormPag.Close;
 cdsFormPag.Params[0].AsString := '%';
 cdsFormPag.Open;
end;

end.
