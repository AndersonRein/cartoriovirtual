unit uCadRegistroCivil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, uTCidade,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFCadRegistroCivil = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroENDERECO: TStringField;
    cdsCadastroNUMERO: TStringField;
    cdsCadastroBAIRRO: TStringField;
    cdsCadastroNASCIMENTO: TDateField;
    cdsCadastroRG_IE: TStringField;
    cdsCadastroCPF_CNPJ: TStringField;
    cdsCadastroPROFISSAO: TStringField;
    cdsCadastroNACIONALIDADE: TStringField;
    cdsCadastroCADASTRO: TDateField;
    cdsCadastroCELULAR: TStringField;
    cdsCadastroEMAIL: TStringField;
    cdsCadastroCEP: TStringField;
    cdsCadastroCIDADE: TIntegerField;
    cdsCadastroPESSOA: TSmallintField;
    cdsCadastroTELEFONE: TStringField;
    cdsCadastroSEQ: TStringField;
    cdsCadastroESTADOCIVIL: TSmallintField;
    cdsCadastroIMAGEM1: TBlobField;
    cdsCadastroIMAGEM2: TBlobField;
    cdsCadastroIMAGEM3: TBlobField;
    cdsCadastroIMAGEM4: TBlobField;
    cdsCadastroREGIMECASAMENTO: TSmallintField;
    Label1: TLabel;
    dbNome: TDBEdit;
    Label2: TLabel;
    dbNascimento: TDBEdit;
    lblCPF: TLabel;
    dbCPF_CNPJ: TDBEdit;
    lblGR: TLabel;
    dbRG: TDBEdit;
    Label3: TLabel;
    dbNacionalidade: TDBEdit;
    Label5: TLabel;
    dbNumero: TDBEdit;
    dbBairro: TDBEdit;
    Label6: TLabel;
    dbCep: TDBEdit;
    Label10: TLabel;
    dbEndereco: TDBEdit;
    Label4: TLabel;
    Label9: TLabel;
    dbCidade: TDBEdit;
    edCidade: TEdit;
    dbEstadoCivil: TDBRadioGroup;
    Label8: TLabel;
    dbProfissao: TDBEdit;
    Label13: TLabel;
    dbEmail: TDBEdit;
    dbCelular: TDBEdit;
    Label12: TLabel;
    dbTelefone: TDBEdit;
    Label11: TLabel;
    cdsCadastroCIDADEATUAL: TIntegerField;
    dbTipoPessoa: TDBRadioGroup;
    procedure dbCidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure cdsCadastroAfterEdit(DataSet: TDataSet);
    procedure btSalvarClick(Sender: TObject);
    procedure dbTipoPessoaClick(Sender: TObject);
  private
    { Private declarations }
    cidade: TCidade;
  public
    { Public declarations }
  end;

var
  FCadRegistroCivil: TFCadRegistroCivil;

implementation

{$R *.dfm}


procedure TFCadRegistroCivil.btSalvarClick(Sender: TObject);
begin
  inherited;
 dbNome.SetFocus;
end;

procedure TFCadRegistroCivil.cdsCadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  edCidade.Text := cidade.getNomeCidade(cdsCadastroCIDADE.AsInteger);
end;

procedure TFCadRegistroCivil.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
 cdsCadastroPESSOA.AsInteger := 0;
  cdsCadastroNACIONALIDADE.AsString := 'BRASILEIRO(A)';
 cdsCadastroESTADOCIVIL.AsInteger := 0;
end;

procedure TFCadRegistroCivil.dbCidadeClick(Sender: TObject);
begin
  inherited;
 cdsCadastroCIDADE.AsInteger := cidade.getCidade(edCidade);
end;

procedure TFCadRegistroCivil.dbTipoPessoaClick(Sender: TObject);
begin
  inherited;
  if dbTipoPessoa.ItemIndex = 0 then
    begin
      lblCPF.Caption := 'CPF';
      lblGR.Caption := 'RG';
      cdsCadastroCPF_CNPJ.EditMask := '000.000.000-00;1;_';
    end
  else
    begin
      lblCPF.Caption := 'CNPJ';
      lblGR.Caption := 'Inscri��o Estadual';
      cdsCadastroCPF_CNPJ.EditMask := '00.000.000/0000-00;1;_';
    end;
end;

procedure TFCadRegistroCivil.FormCreate(Sender: TObject);
begin
  inherited;
 cidade := TCidade.Create;
end;

end.