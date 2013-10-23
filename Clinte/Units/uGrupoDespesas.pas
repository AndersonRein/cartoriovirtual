unit uGrupoDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uTGrupoDespesa,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFGrupoDespesas = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaSTATUS: TSmallintField;
    cdsConsultaCARNELEAO: TIntegerField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    grupoDespesa: TGrupoDespesa;
  public
    { Public declarations }
  end;

var
  FGrupoDespesas: TFGrupoDespesas;

implementation

{$R *.dfm}

uses uCadGrupoDespesas, uPadrao;

procedure TFGrupoDespesas.btbAlterarClick(Sender: TObject);
var
Cadgrupo: TFCadGrupoDespesas;
begin
  inherited;
  Cadgrupo := TFCadGrupoDespesas.Create(nil);
  Cadgrupo.alterar(cdsConsultaCODIGO.AsInteger);
  Cadgrupo.Free;
  atualizaGrid;
end;

procedure TFGrupoDespesas.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação', MB_YESNO) = idYES then
  begin
    try
      grupoDespesa.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFGrupoDespesas.btbInserirClick(Sender: TObject);
var
Cadgrupo: TFCadGrupoDespesas;
begin
  inherited;
  Cadgrupo := TFCadGrupoDespesas.Create(nil);
  Cadgrupo.inserir;
  Cadgrupo.Free;
  atualizaGrid;
end;

procedure TFGrupoDespesas.FormCreate(Sender: TObject);
begin
  inherited;
 grupoDespesa := TGrupoDespesa.Create();
end;

procedure TFGrupoDespesas.FormKeyDown(Sender: TObject; var Key: Word;
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
