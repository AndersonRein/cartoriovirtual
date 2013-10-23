unit uRodapaRegJuridica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.StdCtrls, Vcl.Buttons;

type
  TFRodapeRegJuridica = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    edDescricao: TEdit;
    btSalvar: TBitBtn;
    btCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRodapeRegJuridica: TFRodapeRegJuridica;

implementation

{$R *.dfm}

uses uPadrao;

procedure TFRodapeRegJuridica.btCancelarClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFRodapeRegJuridica.btSalvarClick(Sender: TObject);
begin
  inherited;
  try
     setRodapeRegJuridico(edDescricao.Text);
     ShowMessage(SUCESSO);
  except
     on E: Exception do
      begin
        ShowMessage(ERRO +' '+E.Message);
      end;
  end;
end;

procedure TFRodapeRegJuridica.FormShow(Sender: TObject);
begin
  inherited;
 edDescricao.Text := getRodapeRegJuridico;
end;

end.
