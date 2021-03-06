unit uCadTitulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFCadTitulos = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroSIGLA: TStringField;
    cdsCadastroNOME: TStringField;
    Label1: TLabel;
    dbNome: TDBEdit;
    Label2: TLabel;
    dbSigla: TDBEdit;
    GroupBox1: TGroupBox;
    dbDescricao: TDBMemo;
    cdsCadastroDESCRICAO: TStringField;
    cdsCadastroCHEQUE: TSmallintField;
    dbCheque: TDBRadioGroup;
    procedure btSalvarClick(Sender: TObject);
    procedure dbDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadTitulos: TFCadTitulos;

implementation

{$R *.dfm}

procedure TFCadTitulos.btSalvarClick(Sender: TObject);
begin
  inherited;
dbNome.SetFocus;
end;

procedure TFCadTitulos.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
 cdsCadastroCHEQUE.AsInteger := 1;
end;

procedure TFCadTitulos.dbDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if not (dbDescricao.Text = '') then
   dbDescricao.SetFocus;
end;

end.
