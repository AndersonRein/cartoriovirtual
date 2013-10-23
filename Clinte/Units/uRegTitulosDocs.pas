unit uRegTitulosDocs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, uTRegTitulosDocs;

type
  TFRegTitulosDocs = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaDATA: TDateField;
    cdsConsultaUSUARIO: TIntegerField;
    cdsConsultaTIPO: TSmallintField;
    cdsConsultaLIVRO: TSmallintField;
    cdsConsultaPROTOCOLO: TIntegerField;
    btnAnexar: TBitBtn;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    regTitulos : TRegTitulosDocs;
  public
    { Public declarations }
  end;

var
  FRegTitulosDocs: TFRegTitulosDocs;

implementation

{$R *.dfm}

uses uDM, uCadRegTitulosDocs, uPadrao;

procedure TFRegTitulosDocs.btbAlterarClick(Sender: TObject);
var
cadReg: TFCadRegTitulosDocs;
begin
  inherited;
  cadReg := TFCadRegTitulosDocs.Create(nil);
  cadReg.alterar(cdsConsultaCODIGO.AsInteger);
  cadReg.Free;
  atualizaGrid;
end;

procedure TFRegTitulosDocs.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    try
       regTitulos.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFRegTitulosDocs.btbInserirClick(Sender: TObject);
var
cadReg: TFCadRegTitulosDocs;
begin
  inherited;
  cadReg := TFCadRegTitulosDocs.Create(nil);
  cadReg.inserir;
  cadReg.Free;
  atualizaGrid;
end;

procedure TFRegTitulosDocs.FormKeyDown(Sender: TObject; var Key: Word;
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
