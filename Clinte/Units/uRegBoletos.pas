unit uRegBoletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uCadRegBoleto, uTRegBoleto,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFRegBoletos = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaENTREGA: TDateField;
    cdsConsultaQUANTIDADE: TIntegerField;
    cdsConsultaSERIEFIM: TLargeintField;
    cdsConsultaSERIEINI: TLargeintField;
    cdsConsultaCODTIPOBOLETO: TSmallintField;
    cdsConsultaTIPOBOLETO: TStringField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    regBoleto: TRegBoleto;

  public
    { Public declarations }
  end;

var
  FRegBoletos: TFRegBoletos;

implementation

{$R *.dfm}



uses uPadrao;

procedure TFRegBoletos.btbAlterarClick(Sender: TObject);
var
cadRegBoleto: TFCadRegBoleto;
begin
  inherited;
  cadRegBoleto := TFCadRegBoleto.Create(nil);
  cadRegBoleto.alterar(cdsConsultaCODIGO.AsInteger);
  cadRegBoleto.Free;
  atualizaGrid;
end;

procedure TFRegBoletos.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação', MB_YESNO) = idYES then
  begin
    try
      regBoleto.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFRegBoletos.btbInserirClick(Sender: TObject);
var
cadRegBoleto: TFCadRegBoleto;
begin
  inherited;
  cadRegBoleto := TFCadRegBoleto.Create(nil);
  cadRegBoleto.inserir;
  cadRegBoleto.Free;
  atualizaGrid;
end;

procedure TFRegBoletos.FormCreate(Sender: TObject);
begin
  inherited;
 regBoleto := TRegBoleto.Create;
end;

procedure TFRegBoletos.FormKeyDown(Sender: TObject; var Key: Word;
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
