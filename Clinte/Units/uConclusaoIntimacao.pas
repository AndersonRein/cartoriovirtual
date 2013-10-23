unit uConclusaoIntimacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Buttons;

type
  TFConclusaoIntimacao = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    lblApresentante: TLabel;
    GroupBox2: TGroupBox;
    lblDevedor: TLabel;
    rgTipoConclusao: TRadioGroup;
    GroupBox3: TGroupBox;
    edData: TMaskEdit;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    procedure rgTipoConclusaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
    cancelou: Boolean;
  public
    { Public declarations }
    procedure new(apresentante, devedor:string);
    function getCancelou:Boolean;
    function getTipoConclusao:Integer;
    function getData:string;
  end;

var
  FConclusaoIntimacao: TFConclusaoIntimacao;

implementation

{$R *.dfm}

procedure TFConclusaoIntimacao.btCancelarClick(Sender: TObject);
begin
  inherited;
 Close;
end;

procedure TFConclusaoIntimacao.btSalvarClick(Sender: TObject);
begin
  inherited;
  if rgTipoConclusao.ItemIndex = -1 then
    begin
      Application.MessageBox(PwideChar('Escolha um tipo de conclusão.'), 'Aviso', MB_ICONEXCLAMATION);
      Exit;
    end;
  cancelou := False;
  Close;
end;

procedure TFConclusaoIntimacao.FormCreate(Sender: TObject);
begin
  inherited;
 cancelou := True;
end;

function TFConclusaoIntimacao.getCancelou: Boolean;
begin
Result := cancelou;
end;

function TFConclusaoIntimacao.getData: string;
begin
Result := edData.Text;
end;

function TFConclusaoIntimacao.getTipoConclusao: Integer;
begin
Result := rgTipoConclusao.ItemIndex;
end;

procedure TFConclusaoIntimacao.new(apresentante, devedor: string);
begin
lblApresentante.Caption := apresentante;
lblDevedor.Caption := devedor;
Self.ShowModal;
end;

procedure TFConclusaoIntimacao.rgTipoConclusaoClick(Sender: TObject);
begin
  inherited;
 if rgTipoConclusao.ItemIndex = 0 then
   begin
   edData.Enabled := true;
   edData.Text := DateToStr(now);
   end;
 if rgTipoConclusao.ItemIndex = 1 then
  begin
   edData.Enabled := true;
   edData.Text := DateToStr(now);
  end;
 if rgTipoConclusao.ItemIndex = 2 then
 begin
   edData.Enabled := False;
   edData.Clear;
 end;
 if rgTipoConclusao.ItemIndex = 3 then
 begin
   edData.Enabled := False;
   edData.Clear;
 end;
 if rgTipoConclusao.ItemIndex = 4 then
 begin
   edData.Enabled := False;
   edData.Clear;
 end;
 if rgTipoConclusao.ItemIndex = 5 then
 begin
   edData.Enabled := False;
   edData.Clear;
 end;
end;

end.
