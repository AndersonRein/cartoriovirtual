unit uRegistroSelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uTRegistoSelos,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFRegistroSelo = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaCODKITSELO: TIntegerField;
    cdsConsultaKITSELO: TStringField;
    cdsConsultaQUANTIDADEKIT: TIntegerField;
    cdsConsultaENTREGA: TDateField;
    cdsConsultaSERIEFIM: TLargeintField;
    cdsConsultaSERIEINI: TLargeintField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    registroSelo: TRegistroSelos;
  public
    { Public declarations }
  end;

var
  FRegistroSelo: TFRegistroSelo;

implementation

{$R *.dfm}

uses uCadRegistroSelos, uPadrao;

procedure TFRegistroSelo.btbAlterarClick(Sender: TObject);
var
cadRegistro: TFCadRegistroSelo;
begin
  inherited;
  cadRegistro := TFCadRegistroSelo.Create(nil);
  cadRegistro.alterar(cdsConsultaCODIGO.AsInteger);
  cadRegistro.Free;
  atualizaGrid;
end;

procedure TFRegistroSelo.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação', MB_YESNO) = idYES then
  begin
    try
      registroSelo.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFRegistroSelo.btbInserirClick(Sender: TObject);
var
cadRegistro: TFCadRegistroSelo;
begin
  inherited;
  cadRegistro := TFCadRegistroSelo.Create(nil);
  cadRegistro.inserir;
  cadRegistro.Free;
  atualizaGrid;
end;

procedure TFRegistroSelo.FormCreate(Sender: TObject);
begin
  inherited;
 registroSelo := TRegistroSelos.Create;
end;

procedure TFRegistroSelo.FormKeyDown(Sender: TObject; var Key: Word;
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
