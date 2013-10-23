unit uSuprimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoVazio, StdCtrls, Buttons, uTCaixa, uPadrao;

type
  TFSuprimento = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    edDescricao: TEdit;
    GroupBox2: TGroupBox;
    edValor: TEdit;
    spbConfirmar: TSpeedButton;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    lblCaixa: TLabel;
    lblOperacao: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure spbConfirmarClick(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    caixa: TFCaixa;
    codCaixa, operacao: Integer;
  public
    { Public declarations }
    procedure new(caixaSup, operacaoSup: Integer);
  end;

var
  FSuprimento: TFSuprimento;

implementation

{$R *.dfm}

procedure TFSuprimento.new(caixaSup, operacaoSup: Integer);
begin
  codCaixa := caixaSup;
  operacao := operacaoSup;
  lblCaixa.Caption := IntToStr(codCaixa);
  if operacao = 0 then
    lblOperacao.Caption := 'Entrada';
  if operacao = 1 then
    lblOperacao.Caption := 'Saida';

  Self.ShowModal;
end;

procedure TFSuprimento.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if key = #13 then
  spbConfirmarClick(Sender);
end;

procedure TFSuprimento.FormCreate(Sender: TObject);
begin
  inherited;
  caixa := TFCaixa.Create;
end;

procedure TFSuprimento.spbConfirmarClick(Sender: TObject);
begin
  inherited;
  if caixa.setSuprimento(codCaixa, operacao, StrToFloat(edValor.Text),
    edDescricao.Text) then
  begin
    ShowMessage(SUCESSO);
    edDescricao.Clear;
    edValor.Clear;
  end;

end;

end.
