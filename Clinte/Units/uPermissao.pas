unit uPermissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoVazio, StdCtrls, uTFuncionario;

type
  TFPermissao = class(TFPadraoVazio)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    edUsuario: TEdit;
    GroupBox2: TGroupBox;
    edSenha: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    permissao: string;
    usuario: Integer;
    funcionario: TFuncionario;
    permitir: Boolean;
  public
    { Public declarations }
    procedure new(nPermissao: string);
    function getResultado():Boolean;
  end;

var
  FPermissao: TFPermissao;

implementation

{$R *.dfm}

procedure TFPermissao.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    usuario := funcionario.getCodigoUsuario(edUsuario.Text, edSenha.Text);
    if usuario = 0 then
    begin
      ShowMessage(funcionario.USUARIO_SENHA_INCORRETO);
      Exit;
    end
    else
    begin
      if not funcionario.getPermissao(usuario, permissao) then
      begin
        ShowMessage(funcionario.SEM_PERMISSAO);
        Exit;
      end
      else
      begin
        permitir := True;
        Close;
      end;
    end;
  end;
end;

procedure TFPermissao.FormCreate(Sender: TObject);
begin
  inherited;
  funcionario := TFuncionario.Create;
  permitir := False;
end;

function TFPermissao.getResultado: Boolean;
begin
Result := permitir;
end;

procedure TFPermissao.new(nPermissao: string);
begin
permissao := nPermissao;
 Self.ShowModal;
end;

end.
