unit uCadSubgrupoDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Vcl.Buttons, uTGrupoDespesa;

type
  TFCadSubgrupoDespesas = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroGRUPODESPESAS: TIntegerField;
    cdsCadastroNOME: TStringField;
    lbl1: TLabel;
    dbGrupoDespesas: TDBEdit;
    edGrupoDespesas: TEdit;
    lbl2: TLabel;
    dbNome: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure dbGrupoDespesasClick(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure cdsCadastroAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
    grupo : TGrupoDespesa;
  public
    { Public declarations }
  end;

var
  FCadSubgrupoDespesas: TFCadSubgrupoDespesas;

implementation

{$R *.dfm}

uses uDM;


procedure TFCadSubgrupoDespesas.cdsCadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
 edGrupoDespesas.Text := grupo.getNome(cdsCadastroGRUPODESPESAS.AsInteger);
end;

procedure TFCadSubgrupoDespesas.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  edGrupoDespesas.Clear;
end;

procedure TFCadSubgrupoDespesas.dbGrupoDespesasClick(Sender: TObject);
begin
  inherited;
 cdsCadastroGRUPODESPESAS.AsInteger := grupo.getBusca(edGrupoDespesas);
end;

procedure TFCadSubgrupoDespesas.FormCreate(Sender: TObject);
begin
  inherited;
 grupo := TGrupoDespesa.Create;
end;

end.
