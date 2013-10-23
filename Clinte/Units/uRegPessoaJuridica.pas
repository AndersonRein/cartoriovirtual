unit uRegPessoaJuridica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, uTRegPessoaJuridica;

type
  TFRegPessoaJuridica = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaFICHA: TIntegerField;
    cdsConsultaDATA: TDateField;
    btbLancar: TBitBtn;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbLancarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    registroPJ: TRegPessoaJuridica;
  public
    { Public declarations }
  end;

var
  FRegPessoaJuridica: TFRegPessoaJuridica;

implementation

{$R *.dfm}

uses uDM, uCadRegPessoaJuridica, uLancPessoaJuridica, uPadrao;

procedure TFRegPessoaJuridica.btbAlterarClick(Sender: TObject);
var
registro: TFCadRegPessoaJuridica;
begin
  inherited;
  registro := TFCadRegPessoaJuridica.Create(nil);
  registro.alterar(cdsConsultaCODIGO.AsInteger);
  registro.Free;
  atualizaGrid;
end;

procedure TFRegPessoaJuridica.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    try
      registroPJ.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFRegPessoaJuridica.btbInserirClick(Sender: TObject);
var
registro: TFCadRegPessoaJuridica;
begin
  inherited;
  registro := TFCadRegPessoaJuridica.Create(nil);
  registro.inserir;
  registro.Free;
  atualizaGrid;
end;

procedure TFRegPessoaJuridica.btbLancarClick(Sender: TObject);
var
lanc: TFLancPessaoJuridica;
begin
  inherited;
  lanc := TFLancPessaoJuridica.Create(nil);
  lanc.new(cdsConsultaCODIGO.AsInteger,cdsConsultaFICHA.AsInteger,cdsConsultaNOME.AsString,cdsConsultaDATA.AsDateTime);
  lanc.Free;
  atualizaGrid;
end;

procedure TFRegPessoaJuridica.FormCreate(Sender: TObject);
begin
  inherited;
 registroPJ := TRegPessoaJuridica.Create;
end;

procedure TFRegPessoaJuridica.FormKeyDown(Sender: TObject; var Key: Word;
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
