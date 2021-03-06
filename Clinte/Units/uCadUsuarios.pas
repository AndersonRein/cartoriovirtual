unit uCadUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, uTFuncionario,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFCadUsuarios = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroFUNCIONARIO: TIntegerField;
    cdsCadastroUSUARIO: TStringField;
    cdsCadastroSENHA: TStringField;
    cdsCadastroSTATUS: TSmallintField;
    Label1: TLabel;
    dbFuncionario: TDBEdit;
    Edit1: TEdit;
    Label2: TLabel;
    dbUsuario: TDBEdit;
    Label3: TLabel;
    dbSenha: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure dbFuncionarioClick(Sender: TObject);
    procedure cdsCadastroBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    funcionario: TFuncionario;
  public
    { Public declarations }
  end;

var
  FCadUsuarios: TFCadUsuarios;

implementation

{$R *.dfm}

procedure TFCadUsuarios.cdsCadastroBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  Edit1.Text := funcionario.getNome(cdsCadastroFUNCIONARIO.AsInteger);
end;

procedure TFCadUsuarios.dbFuncionarioClick(Sender: TObject);
begin
  inherited;
 cdsCadastroFUNCIONARIO.AsInteger := funcionario.getBusca(Edit1);
end;

procedure TFCadUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  funcionario := TFuncionario.Create;
end;

end.
