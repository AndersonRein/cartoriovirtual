unit uTitulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uTTitulos,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFTitulos = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaSIGLA: TStringField;
    cdsConsultaNOME: TStringField;
    cdsConsultaDESCRICAO: TStringField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    titulo: TTitulos;
  public
    { Public declarations }
  end;

var
  FTitulos: TFTitulos;

implementation

{$R *.dfm}

uses uCadTitulos, uPadrao;

procedure TFTitulos.btbAlterarClick(Sender: TObject);
var
cadTitulo: TFCadTitulos;
begin
  inherited;
  cadTitulo := TFCadTitulos.Create(nil);
  cadTitulo.alterar(cdsConsultaCODIGO.AsInteger);
  cadTitulo.Free;
  atualizaGrid;
end;

procedure TFTitulos.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    try
       titulo.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFTitulos.btbInserirClick(Sender: TObject);
var
cadTitulo: TFCadTitulos;
begin
  inherited;
  cadTitulo := TFCadTitulos.Create(nil);
  cadTitulo.inserir;
  cadTitulo.Free;
  atualizaGrid;
end;

procedure TFTitulos.FormCreate(Sender: TObject);
begin
  inherited;
 titulo := TTitulos.Create;
end;

procedure TFTitulos.FormKeyDown(Sender: TObject; var Key: Word;
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
