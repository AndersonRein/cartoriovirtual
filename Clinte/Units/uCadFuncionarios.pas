unit uCadFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPadrao, StdCtrls, Buttons, FMTBcd, Provider, DBClient, DB,
  SqlExpr, Mask, DBCtrls, Datasnap.DSConnect, uTCidade;

type
  TFCadFuncionarios = class(TFCadastroPadrao)
    Label1: TLabel;
    dbNome: TDBEdit;
    Label2: TLabel;
    dbAdmissao: TDBEdit;
    Label4: TLabel;
    dbEndereco: TDBEdit;
    Label3: TLabel;
    dbNascimento: TDBEdit;
    Label7: TLabel;
    dbNumero: TDBEdit;
    Label8: TLabel;
    dbBairro: TDBEdit;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroENDERECO: TStringField;
    cdsCadastroNUMERO: TStringField;
    cdsCadastroBAIRRO: TStringField;
    cdsCadastroNASCIMENTO: TDateField;
    cdsCadastroADMISSAO: TDateField;
    cdsCadastroTELEFONE: TStringField;
    cdsCadastroSTATUS: TSmallintField;
    cdsCadastroCELULAR: TStringField;
    cdsCadastroRG: TStringField;
    cdsCadastroCPF: TStringField;
    cdsCadastroCEP: TStringField;
    cdsCadastroCIDADE: TIntegerField;
    cdsCadastroPORTARIA: TStringField;
    cdsCadastroFUNCAO: TStringField;
    Label5: TLabel;
    dbCEP: TDBEdit;
    Label6: TLabel;
    dbRG: TDBEdit;
    Label9: TLabel;
    dbCPF: TDBEdit;
    Label10: TLabel;
    dbTelefone: TDBEdit;
    Label11: TLabel;
    dbCelular: TDBEdit;
    Label12: TLabel;
    dbCidade: TDBEdit;
    edCidade: TEdit;
    Label13: TLabel;
    dbPortaria: TDBEdit;
    Label14: TLabel;
    dbFuncao: TDBEdit;
    procedure FormClick(Sender: TObject);
    procedure dbCidadeClick(Sender: TObject);
    procedure cdsCadastroBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    cidade: TCidade;
  public
    { Public declarations }
  end;

var
  FCadFuncionarios: TFCadFuncionarios;

implementation

uses uDM, uPadrao;
{$R *.dfm}
{ TFCadFuncionarios }

procedure TFCadFuncionarios.cdsCadastroBeforeEdit(DataSet: TDataSet);
begin
  inherited;
 edCidade.Text := cidade.getNomeCidade(cdsCadastroCIDADE.AsInteger);
end;

procedure TFCadFuncionarios.dbCidadeClick(Sender: TObject);
begin
  inherited;
 cdsCadastroCIDADE.AsInteger := cidade.getCidade(edCidade);
end;

procedure TFCadFuncionarios.FormClick(Sender: TObject);
begin
  inherited;
cidade := TCidade.Create;
end;

end.
