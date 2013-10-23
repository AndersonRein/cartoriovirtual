unit uSubGrupoDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, uTSubGrupoDespesa;

type
  TFSubGrupoDespesas = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaCODGRUPO: TIntegerField;
    cdsConsultaGRUPO: TStringField;
    cdsConsultaCARNELEAO: TIntegerField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btbExcluirClick(Sender: TObject);
  private
    { Private declarations }
    subGrupo : TSubGrupoDespesa;
  public
    { Public declarations }
  end;

var
  FSubGrupoDespesas: TFSubGrupoDespesas;

implementation

{$R *.dfm}

uses uCadSubgrupoDespesas, uDM, uPadrao;

procedure TFSubGrupoDespesas.btbAlterarClick(Sender: TObject);
var
subGrupo: TFCadSubgrupoDespesas;
begin
  inherited;
  subGrupo := TFCadSubgrupoDespesas.Create(nil);
  subGrupo.alterar(cdsConsultaCODIGO.AsInteger);
  subGrupo.Free;
  atualizaGrid;
end;

procedure TFSubGrupoDespesas.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação', MB_YESNO) = idYES then
  begin
    try
      subGrupo.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFSubGrupoDespesas.btbInserirClick(Sender: TObject);
var
subGrupo: TFCadSubgrupoDespesas;
begin
  inherited;
  subGrupo := TFCadSubgrupoDespesas.Create(nil);
  subGrupo.inserir;
  subGrupo.Free;
  atualizaGrid;
end;

procedure TFSubGrupoDespesas.FormCreate(Sender: TObject);
begin
  inherited;
 subGrupo := TSubGrupoDespesa.Create;
end;

procedure TFSubGrupoDespesas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_INSERT then
    btbInserirClick(Sender);
  if dbgCadastros.Focused then
  begin
    if Key = VK_RETURN then
      btbAlterarClick(Sender);
    if Key = VK_DELETE then
      btbExcluirClick(Sender);
  end;
end;

end.
