unit uMotivosProtesto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uTMotivoProtesto,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFMotivosProtesto = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaSIGLA: TStringField;
    cdsConsultaNOME: TStringField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaSTATUS: TSmallintField;
    cdsConsultaCODPROTESTAVEL: TSmallintField;
    cdsConsultaPROTESTAVEL: TStringField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    motivo: TMotivoProtesto;
  public
    { Public declarations }
  end;

var
  FMotivosProtesto: TFMotivosProtesto;

implementation

{$R *.dfm}

uses uCadMotivosProtesto, uPadrao;

procedure TFMotivosProtesto.btbAlterarClick(Sender: TObject);
var
CadMotivos: TFCadMotivosProtesto;
begin
  inherited;
CadMotivos := TFCadMotivosProtesto.Create(nil);
CadMotivos.alterar(cdsConsultaCODIGO.AsInteger);
cdsConsulta.Refresh;
CadMotivos.Free;
end;

procedure TFMotivosProtesto.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    try
       motivo.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFMotivosProtesto.btbInserirClick(Sender: TObject);
var
CadMotivos: TFCadMotivosProtesto;
begin
  inherited;
CadMotivos := TFCadMotivosProtesto.Create(nil);
CadMotivos.inserir;
cdsConsulta.Refresh;
CadMotivos.Free;
end;

procedure TFMotivosProtesto.FormCreate(Sender: TObject);
begin
  inherited;
 motivo := TMotivoProtesto.Create;
end;

procedure TFMotivosProtesto.FormKeyDown(Sender: TObject; var Key: Word;
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
