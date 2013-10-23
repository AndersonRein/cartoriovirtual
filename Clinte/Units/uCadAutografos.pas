unit uCadAutografos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, uTCidade, jpeg, Clipbrd,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, uTAutografo, Vcl.ExtDlgs, Vcl.Menus, Vcl.ImgList;

type
  TFCadAutografos = class(TFCadastroPadrao)
    Label1: TLabel;
    dbNome: TDBEdit;
    Label2: TLabel;
    dbNascimento: TDBEdit;
    dbTipoPessoa: TDBRadioGroup;
    lblCPF: TLabel;
    dbCPF_CNPJ: TDBEdit;
    lblGR: TLabel;
    dbRG: TDBEdit;
    Label3: TLabel;
    dbNacionalidade: TDBEdit;
    Label4: TLabel;
    dbEndereco: TDBEdit;
    Label5: TLabel;
    dbNumero: TDBEdit;
    Label6: TLabel;
    dbBairro: TDBEdit;
    Label8: TLabel;
    dbProfissao: TDBEdit;
    Label9: TLabel;
    dbCidade: TDBEdit;
    edCidade: TEdit;
    Label10: TLabel;
    dbCep: TDBEdit;
    Label11: TLabel;
    dbTelefone: TDBEdit;
    Label12: TLabel;
    dbCelular: TDBEdit;
    Label13: TLabel;
    dbEmail: TDBEdit;
    Label14: TLabel;
    dbSeq: TDBEdit;
    dbEstadoCivil: TDBRadioGroup;
    OpenDialog: TOpenPictureDialog;
    GroupBox2: TGroupBox;
    Image1: TImage;
    GroupBox3: TGroupBox;
    Image2: TImage;
    GroupBox4: TGroupBox;
    Image3: TImage;
    GroupBox5: TGroupBox;
    Image4: TImage;
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
    cdsCadastroESTADOCIVIL: TSmallintField;
    cdsCadastroIMAGEM1: TBlobField;
    cdsCadastroIMAGEM2: TBlobField;
    cdsCadastroIMAGEM3: TBlobField;
    cdsCadastroIMAGEM4: TBlobField;
    cdsCadastroCONJUGE: TIntegerField;
    cdsCadastroREGIMECASAMENTO: TSmallintField;
    Label7: TLabel;
    dbConjuge: TDBEdit;
    edConjuge: TEdit;
    spbLimpar: TSpeedButton;
    dbRegime: TDBRadioGroup;
    ImageList: TImageList;
    cdsCadastroSEQ: TStringField;
    cdsCadastroREGISTROCASAMENTO: TStringField;
    Label15: TLabel;
    dbRegCasamento: TDBEdit;
    spbAddImg1: TSpeedButton;
    spbDelImg1: TSpeedButton;
    spbAddImg2: TSpeedButton;
    spbDelImg2: TSpeedButton;
    spbAddImg3: TSpeedButton;
    spbDelImg3: TSpeedButton;
    spbAddImg4: TSpeedButton;
    spbDelImg4: TSpeedButton;
    cdsCadastroORGEXP: TStringField;
    Label16: TLabel;
    dbOrgExp: TDBEdit;
    cdsCadastroCARTAO: TBlobField;
    cdsCadastroSEXO: TStringField;
    dbSexo: TDBComboBox;
    Label17: TLabel;
    cdsCadastroCIDADEATUAL: TIntegerField;
    lbl1: TLabel;
    dbCidadeAtual: TDBEdit;
    edCidadeAtual: TEdit;
    procedure dbTipoPessoaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbCidadeClick(Sender: TObject);
    procedure cdsCadastroBeforeEdit(DataSet: TDataSet);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure btSalvarClick(Sender: TObject);
    procedure dbSeqExit(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure Image3DblClick(Sender: TObject);
    procedure Image4DblClick(Sender: TObject);
    procedure spbLimparClick(Sender: TObject);
    procedure dbEstadoCivilChange(Sender: TObject);
    procedure dbConjugeClick(Sender: TObject);
    procedure cdsCadastroBeforePost(DataSet: TDataSet);
    procedure spbDelImg1Click(Sender: TObject);
    procedure spbDelImg2Click(Sender: TObject);
    procedure spbDelImg3Click(Sender: TObject);
    procedure spbDelImg4Click(Sender: TObject);
    procedure spbAddImg1Click(Sender: TObject);
    procedure spbAddImg2Click(Sender: TObject);
    procedure spbAddImg3Click(Sender: TObject);
    procedure spbAddImg4Click(Sender: TObject);
    procedure dbCidadeAtualClick(Sender: TObject);
  private
    { Private declarations }
    cidade: TCidade;
    autografo: TAutografo;
    seq: string;
    procedure exibirImagem1();
    procedure exibirImagem2();
    procedure exibirImagem3();
    procedure exibirImagem4();
  public
    { Public declarations }
  end;

var
  FCadAutografos: TFCadAutografos;

implementation

{$R *.dfm}

uses uDM, uImportImagens, uPadrao;

procedure TFCadAutografos.btSalvarClick(Sender: TObject);
begin
  inherited;
  dbNome.SetFocus;
end;

procedure TFCadAutografos.cdsCadastroBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  edCidade.Text := cidade.getNomeCidade(cdsCadastroCIDADE.AsInteger);
  edConjuge.Text := autografo.getNome(cdsCadastroCONJUGE.AsInteger);
  edCidadeAtual.Text := cidade.getNomeCidade(cdsCadastroCIDADEATUAL.AsInteger);
  seq := cdsCadastroSEQ.AsString;
  exibirImagem1;
  exibirImagem2;
  exibirImagem3;
  exibirImagem4;
end;

procedure TFCadAutografos.cdsCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
if edConjuge.Text = '' then
  begin
    autografo.limparConjuge(cdsCadastroCONJUGE.AsInteger);
    cdsCadastroCONJUGE.Clear;
  end
else
  autografo.setConjuge(cdsCadastroCONJUGE.AsInteger, cdsCadastroCODIGO.AsInteger);
end;

procedure TFCadAutografos.cdsCadastroNewRecord(DataSet: TDataSet);
var
aux: Integer;
begin
  inherited;
  cdsCadastroCODIGO.AsInteger := makeCodigo('GAUTOGRAFOS');
  cdsCadastroPESSOA.AsInteger := 0;
  cdsCadastroESTADOCIVIL.AsInteger := 0;
  cdsCadastroESTADOCIVIL.AsInteger := 0;
  cdsCadastroNACIONALIDADE.AsString := 'BRASILEIRO(A)';
  try
    aux := StrToInt(autografo.getSequencia) + 1;
    cdsCadastroSEQ.AsString :=  IntToStr(aux);
  except
    cdsCadastroSEQ.AsString := autografo.getSequencia;
  end;
end;

procedure TFCadAutografos.dbCidadeAtualClick(Sender: TObject);
begin
  inherited;
 cdsCadastroCIDADEATUAL.AsInteger := cidade.getCidade(edCidadeAtual);
end;

procedure TFCadAutografos.dbCidadeClick(Sender: TObject);
begin
  inherited;
 cdsCadastroCIDADE.AsInteger := cidade.getCidade(edCidade);
end;

procedure TFCadAutografos.dbConjugeClick(Sender: TObject);
begin
  inherited;
 cdsCadastroCONJUGE.AsInteger := autografo.getBusca(edConjuge);
end;

procedure TFCadAutografos.dbEstadoCivilChange(Sender: TObject);
begin
  inherited;
  if dbEstadoCivil.ItemIndex = 1 then
    begin
      dbConjuge.Enabled := True;
      edConjuge.Enabled := True;
      dbRegime.Enabled := True;
    end
    else
    begin
      dbConjuge.Enabled := false;
      edConjuge.Enabled := false;
      dbRegime.Enabled := False;
    end;
end;

procedure TFCadAutografos.dbSeqExit(Sender: TObject);
begin
  inherited;
  if dbSeq.Text = '' then
      Exit;
  if seq = dbSeq.Text then
    Exit;
  if autografo.seqEmUso(dbSeq.Text) then
  begin
    ShowMessage('O número de sequencia digitado já esta em uso, digite outro número.');
    dbSeq.SetFocus;
  end;
end;

procedure TFCadAutografos.dbTipoPessoaClick(Sender: TObject);
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
      lblGR.Caption := 'Inscrição Estadual';
      cdsCadastroCPF_CNPJ.EditMask := '00.000.000/0000-00;1;_';
    end;
end;

procedure TFCadAutografos.exibirImagem1;
begin
  if cdsCadastroIMAGEM1.IsNull then
    Exit;
  cdsCadastroIMAGEM1.SaveToFile('.\temp\imagem1.jpg');
  Image1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'\temp\imagem1.jpg');
end;

procedure TFCadAutografos.exibirImagem2;
begin
  if cdsCadastroIMAGEM2.IsNull then
    Exit;
cdsCadastroIMAGEM2.SaveToFile('.\temp\imagem2.jpg');
Image2.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'\temp\imagem2.jpg');
end;

procedure TFCadAutografos.exibirImagem3;
begin
  if cdsCadastroCARTAO.IsNull then
    Exit;
cdsCadastroCARTAO.SaveToFile('.\temp\imagem3.jpg');
Image3.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'\temp\imagem3.jpg');
end;

procedure TFCadAutografos.exibirImagem4;
begin
  if cdsCadastroIMAGEM4.IsNull then
    Exit;
cdsCadastroIMAGEM4.SaveToFile('.\temp\imagem4.jpg');
Image4.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'\temp\imagem4.jpg');
end;

procedure TFCadAutografos.FormCreate(Sender: TObject);
begin
  inherited;
  cidade := TCidade.Create;
  autografo := TAutografo.Create;
end;

procedure TFCadAutografos.Image1DblClick(Sender: TObject);
begin
  inherited;
 if OpenDialog.Execute then
  begin
    Image1.Picture.LoadFromFile(OpenDialog.FileName);
    cdsCadastroIMAGEM1.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TFCadAutografos.Image2DblClick(Sender: TObject);
begin
  inherited;
 if OpenDialog.Execute then
  begin
    Image2.Picture.LoadFromFile(OpenDialog.FileName);
    cdsCadastroIMAGEM2.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TFCadAutografos.Image3DblClick(Sender: TObject);
begin
  inherited;
 if OpenDialog.Execute then
  begin
    Image3.Picture.LoadFromFile(OpenDialog.FileName);
    cdsCadastroCARTAO.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TFCadAutografos.Image4DblClick(Sender: TObject);
begin
  inherited;
 if OpenDialog.Execute then
  begin
    Image4.Picture.LoadFromFile(OpenDialog.FileName);
    cdsCadastroIMAGEM4.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TFCadAutografos.spbAddImg1Click(Sender: TObject);
begin
  inherited;
Image1DblClick(Sender);
end;

procedure TFCadAutografos.spbAddImg2Click(Sender: TObject);
begin
  inherited;
Image2DblClick(Sender);
end;

procedure TFCadAutografos.spbAddImg3Click(Sender: TObject);
begin
  inherited;
 Image3DblClick(Sender);
end;

procedure TFCadAutografos.spbAddImg4Click(Sender: TObject);
begin
  inherited;
Image4DblClick(Sender);
end;

procedure TFCadAutografos.spbLimparClick(Sender: TObject);
begin
  inherited;
  edConjuge.Clear;
end;

procedure TFCadAutografos.spbDelImg1Click(Sender: TObject);
begin
  inherited;
 cdsCadastroIMAGEM1.Clear;
 Image1.Picture.Bitmap.FreeImage;
end;

procedure TFCadAutografos.spbDelImg2Click(Sender: TObject);
begin
  inherited;
 cdsCadastroIMAGEM2.Clear;
 Image2.Picture.Bitmap.FreeImage;
end;

procedure TFCadAutografos.spbDelImg3Click(Sender: TObject);
begin
  inherited;
 cdsCadastroIMAGEM3.Clear;
 Image3.Picture.Bitmap.FreeImage;
end;

procedure TFCadAutografos.spbDelImg4Click(Sender: TObject);
begin
  inherited;
 cdsCadastroIMAGEM4.Clear;
 Image4.Picture.Bitmap.FreeImage;
end;

end.
