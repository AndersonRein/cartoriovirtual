unit uCadRegPessoaJuridica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Vcl.Buttons, uTRegPessoaJuridica;

type
  TFCadRegPessoaJuridica = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroFICHA: TIntegerField;
    cdsCadastroDATA: TDateField;
    Label1: TLabel;
    dbNome: TDBEdit;
    Label2: TLabel;
    dbFicha: TDBEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    registro: TRegPessoaJuridica;
  public
    { Public declarations }
  end;

var
  FCadRegPessoaJuridica: TFCadRegPessoaJuridica;

implementation

{$R *.dfm}

uses uDM;

procedure TFCadRegPessoaJuridica.btSalvarClick(Sender: TObject);
begin
  inherited;
dbNome.SetFocus;
end;

procedure TFCadRegPessoaJuridica.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
 cdsCadastroFICHA.AsInteger := registro.getFicha;
end;

procedure TFCadRegPessoaJuridica.FormCreate(Sender: TObject);
begin
  inherited;
registro := TRegPessoaJuridica.Create;
end;

end.
