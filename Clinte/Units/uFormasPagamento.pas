unit uFormasPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, uTFormasPagamento;

type
  TFFormasPagamento = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaCODTIPO: TSmallintField;
    cdsConsultaTIPO: TStringField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    formaPag: TFormasPagamento;
  public
    { Public declarations }
  end;

var
  FFormasPagamento: TFFormasPagamento;

implementation

{$R *.dfm}

uses uCadFormasPagamento, uPadrao;

procedure TFFormasPagamento.btbAlterarClick(Sender: TObject);
var
cadForma: TFCadFormasPagamento;
begin
  inherited;
  cadForma := TFCadFormasPagamento.Create(nil);
  cadForma.alterar(cdsConsultaCODIGO.AsInteger);
  cadForma.Free;
  atualizaGrid;
end;

procedure TFFormasPagamento.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação', MB_YESNO) = idYES then
  begin
    try
       formaPag.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFFormasPagamento.btbInserirClick(Sender: TObject);
var
cadForma: TFCadFormasPagamento;
begin
  inherited;
  cadForma := TFCadFormasPagamento.Create(nil);
  cadForma.inserir;
  cadForma.Free;
  atualizaGrid;
end;

procedure TFFormasPagamento.FormCreate(Sender: TObject);
begin
  inherited;
 formaPag := TFormasPagamento.Create;
end;

procedure TFFormasPagamento.FormKeyDown(Sender: TObject; var Key: Word;
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
