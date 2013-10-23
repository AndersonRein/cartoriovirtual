unit uKitSelos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uTKitSelos,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFKitSelo = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaQUANTIDADE: TIntegerField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    kitSelos: TKitSelos;
  public
    { Public declarations }
  end;

var
  FKitSelo: TFKitSelo;

implementation

{$R *.dfm}

uses uCadKitSelos, uPadrao;

procedure TFKitSelo.btbAlterarClick(Sender: TObject);
var
cadKit: TFCadKitSelos;
begin
  inherited;
  cadKit := TFCadKitSelos.Create(nil);
  cadKit.alterar(cdsConsultaCODIGO.AsInteger);
  cadKit.Free;
  atualizaGrid;
end;

procedure TFKitSelo.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    try
       kitSelos.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFKitSelo.btbInserirClick(Sender: TObject);
var
cadKit: TFCadKitSelos;
begin
  inherited;
  cadKit := TFCadKitSelos.Create(nil);
  cadKit.inserir;
  cadKit.Free;
  atualizaGrid;
end;

procedure TFKitSelo.FormCreate(Sender: TObject);
begin
  inherited;
 kitSelos := TKitSelos.Create;
end;

procedure TFKitSelo.FormKeyDown(Sender: TObject; var Key: Word;
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
