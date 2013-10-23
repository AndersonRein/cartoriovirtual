unit uUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFUsuarios = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaCODFUNCIONARIO: TIntegerField;
    cdsConsultaFUNCIONARIO: TStringField;
    cdsConsultaUSUARIO: TStringField;
    cdsConsultaSENHA: TStringField;
    cdsConsultaCODSTATUS: TSmallintField;
    cdsConsultaSTATUS: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuarios: TFUsuarios;

implementation

{$R *.dfm}

uses uCadUsuarios, uTUsuario, uPadrao;

procedure TFUsuarios.btbAlterarClick(Sender: TObject);
var
cadUsuario: TFCadUsuarios;
begin
  inherited;
  cadUsuario := TFCadUsuarios.Create(nil);
  cadUsuario.alterar(cdsConsultaCODIGO.AsInteger);
  cadUsuario.Free;
  atualizaGrid;
end;

procedure TFUsuarios.btbExcluirClick(Sender: TObject);
begin
  inherited;
if Application.MessageBox(DESEJA_REALMENTE_EXECUTAR_ESTA_OPERACAO,
    'Confirma��o', MB_YESNO) = idYES then
  begin
    try
      usuario.desativar(cdsConsultaCODIGO.AsInteger);
      ShowMessage('Usu�rio desativado com sucesso.');
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFUsuarios.btbInserirClick(Sender: TObject);
var
cadUsuario: TFCadUsuarios;
begin
  inherited;
  cadUsuario := TFCadUsuarios.Create(nil);
  cadUsuario.inserir;
  cadUsuario.Free;
  atualizaGrid;
end;

procedure TFUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if Key = VK_INSERT then
  btbInserirClick(Sender);
 if dbgCadastros.Focused then
    begin
      if key = VK_RETURN then
        btbAlterarClick(Sender);
      if key = VK_DELETE then
        btbExcluirClick(Sender);
    end;
end;

end.
