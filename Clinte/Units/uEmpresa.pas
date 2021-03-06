unit uEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPadrao, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls,
  Buttons, Mask, DBCtrls, uPadrao, uTCidade, Datasnap.DSConnect, Vcl.ExtCtrls;

type
  TFCadEmpresa = class(TFCadastroPadrao)
    Label1: TLabel;
    dbRazaoSocial: TDBEdit;
    Label2: TLabel;
    dbNomeFantazia: TDBEdit;
    Label3: TLabel;
    dbCNPJ: TDBEdit;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroRESPONSAVEL: TStringField;
    cdsCadastroREGISTRO: TStringField;
    cdsCadastroCODFERF: TIntegerField;
    Label4: TLabel;
    dbCodFerj: TDBEdit;
    cdsCadastroCODNACIONAL: TIntegerField;
    lbl1: TLabel;
    dbCodNacional: TDBEdit;
    cdsCadastroSIGLAPRACAEMBRATEL: TStringField;
    cdsCadastroNUMCARTORIO: TIntegerField;
    cdsCadastroPESSOA: TSmallintField;
    cdsCadastroCPFCNPJ: TStringField;
    Label5: TLabel;
    dbSiglaEmbratel: TDBEdit;
    Label6: TLabel;
    dbNumCartorio: TDBEdit;
    dbPessoa: TDBRadioGroup;
    lblCPFCNPJ: TLabel;
    dbCPFCNPJ: TDBEdit;
    cdsCadastroFONE: TStringField;
    Label7: TLabel;
    dbTelefone: TDBEdit;
    cdsCadastroEMAIL: TStringField;
    Label8: TLabel;
    dbEmail: TDBEdit;
    cdsCadastroCEP: TStringField;
    Label9: TLabel;
    dbCEP: TDBEdit;
    procedure btSalvarClick(Sender: TObject);
    procedure dbPessoaClick(Sender: TObject);
    procedure cdsCadastroAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
    cidade: TCidade;
    procedure formatacao();
  public
    { Public declarations }
  end;

var
  FCadEmpresa: TFCadEmpresa;

implementation

uses uDM, uBusca;
{$R *.dfm}

procedure TFCadEmpresa.btSalvarClick(Sender: TObject);
begin
//  inherited;
salvar;
ShowMessage(SUCESSO);
editarCadastro;
end;

procedure TFCadEmpresa.cdsCadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
formatacao;
end;

procedure TFCadEmpresa.dbPessoaClick(Sender: TObject);
begin
  inherited;
  formatacao;
end;

procedure TFCadEmpresa.formatacao;
begin
case dbPessoa.ItemIndex of
  0 : begin
        cdsCadastroCPFCNPJ.EditMask := '000.000.000-00;1;_';
        lblCPFCNPJ.Caption := 'CPF do responsavel';
      end;
  1 : begin
        cdsCadastroCPFCNPJ.EditMask := '00.000.000/0000-00;1;_';
        lblCPFCNPJ.Caption := 'CNPJ';
      end;
end;
end;

end.
