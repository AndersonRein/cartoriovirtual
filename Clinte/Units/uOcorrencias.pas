unit uOcorrencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uTOcorrencia,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFOcorrencias = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    ocorrencia: TOcorrencia;
  public
    { Public declarations }
  end;

var
  FOcorrencias: TFOcorrencias;

implementation

{$R *.dfm}

uses uDM, uCadOcorrencia, uPadrao;

procedure TFOcorrencias.btbAlterarClick(Sender: TObject);
var
cadOcorrencia: TFCadOcorrencia;
begin
  inherited;
cadOcorrencia := TFCadOcorrencia.Create(nil);
cadOcorrencia.alterar(cdsConsultaCODIGO.AsInteger);
cadOcorrencia.Free;
cdsConsulta.Refresh;
end;

procedure TFOcorrencias.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    try
       ocorrencia.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFOcorrencias.btbInserirClick(Sender: TObject);
var
cadOcorrencia: TFCadOcorrencia;
begin
  inherited;
cadOcorrencia := TFCadOcorrencia.Create(nil);
cadOcorrencia.inserir;
cadOcorrencia.Free;
cdsConsulta.Refresh;
end;

procedure TFOcorrencias.FormCreate(Sender: TObject);
begin
  inherited;
 ocorrencia := TOcorrencia.Create;
end;

procedure TFOcorrencias.FormKeyDown(Sender: TObject; var Key: Word;
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
