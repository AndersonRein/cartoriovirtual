unit uAutografos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uTAutografo,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, frxClass, frxDBSet, frxExportPDF, Vcl.ComCtrls;

type
  TFAutografos = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaNOME: TStringField;
    Impressao: TfrxReport;
    dbImpressao: TfrxDBDataset;
    btbImprimir: TBitBtn;
    PDFExport: TfrxPDFExport;
    Cartao: TfrxReport;
    btbCartao: TBitBtn;
    cdsImpressao: TClientDataSet;
    cdsImpressaoCODIGO: TIntegerField;
    cdsImpressaoNOME: TStringField;
    cdsImpressaoENDERECO: TStringField;
    cdsImpressaoNUMERO: TStringField;
    cdsImpressaoBAIRRO: TStringField;
    cdsImpressaoNASCIMENTO: TDateField;
    cdsImpressaoRG_IE: TStringField;
    cdsImpressaoCPF_CNPJ: TStringField;
    cdsImpressaoPROFISSAO: TStringField;
    cdsImpressaoNACIONALIDADE: TStringField;
    cdsImpressaoCADASTRO: TDateField;
    cdsImpressaoCELULAR: TStringField;
    cdsImpressaoEMAIL: TStringField;
    cdsImpressaoCEP: TStringField;
    cdsImpressaoCODCIDADE: TIntegerField;
    cdsImpressaoCIDADE: TStringField;
    cdsImpressaoUF: TStringField;
    cdsImpressaoPESSOA: TSmallintField;
    cdsImpressaoTELEFONE: TStringField;
    cdsImpressaoCODESTADOCIVIL: TSmallintField;
    cdsImpressaoESTADOCIVIL: TStringField;
    cdsImpressaoSEQ: TStringField;
    cdsImpressaoIMAGEM1: TBlobField;
    cdsImpressaoIMAGEM2: TBlobField;
    cdsImpressaoIMAGEM3: TBlobField;
    cdsImpressaoIMAGEM4: TBlobField;
    cdsImpressaoCONJUGE: TIntegerField;
    cdsImpressaoCODREGIMECASAMENTO: TSmallintField;
    cdsImpressaoREGIMECASAMENTO: TStringField;
    cdsImpressaoREGISTROCASAMENTO: TStringField;
    cdsImpressaoORGEXP: TStringField;
    cdsImpressaoCARTAO: TBlobField;
    cdsImpressaoCODCIDADEATUAL: TIntegerField;
    cdsImpressaoCIDADEATUAL: TStringField;
    cdsImpressaoUFATUAL: TStringField;
    cdsConsultaSEQ: TStringField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btbExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btbImprimirClick(Sender: TObject);
    procedure ImpressaoGetValue(const VarName: string; var Value: Variant);
    procedure btbCartaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    autografo: TAutografo;
    img1, img2, img3, img4: SmallInt;
    function quantidadeImagens:Integer;
  public
    { Public declarations }
  end;

var
  FAutografos: TFAutografos;

implementation

{$R *.dfm}

uses uCadAutografos, uPadrao, uImagemImp;

procedure TFAutografos.btbAlterarClick(Sender: TObject);
var
autog : TFCadAutografos;
begin
  inherited;
  autog := TFCadAutografos.Create(nil);
  autog.alterar(cdsConsultaCODIGO.AsInteger);
  autog.Free;
  atualizaGrid;
end;

procedure TFAutografos.btbCartaoClick(Sender: TObject);
begin
  inherited;
 cdsImpressao.Close;
 cdsImpressao.Params[0].AsInteger := cdsConsultaCODIGO.AsInteger;
 cdsImpressao.Open;
 Cartao.ShowReport();
end;

procedure TFAutografos.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    try
       autografo.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFAutografos.btbImprimirClick(Sender: TObject);
var
selecImg: TFImagensImp;
begin
  inherited;
  cdsImpressao.Close;
  cdsImpressao.Params[0].AsInteger := cdsConsultaCODIGO.AsInteger;
  cdsImpressao.Open;
  if quantidadeImagens > 2 then
    begin
      selecImg := TFImagensImp.Create(nil);
      if not cdsImpressaoIMAGEM1.IsNull then
        cdsImpressaoIMAGEM1.SaveToFile('.\temp\imagem1.jpg');
      if not cdsImpressaoIMAGEM2.IsNull then
        cdsImpressaoIMAGEM2.SaveToFile('.\temp\imagem2.jpg');
      if not cdsImpressaoIMAGEM3.IsNull then
        cdsImpressaoIMAGEM3.SaveToFile('.\temp\imagem3.jpg');
      if not cdsImpressaoIMAGEM4.IsNull then
        cdsImpressaoIMAGEM4.SaveToFile('.\temp\imagem4.jpg');
      selecImg.new(cdsConsulta);
      img1 := selecImg.getImagem1;
      img2 := selecImg.getImagem2;
      img3 := selecImg.getImagem3;
      img4 := selecImg.getImagem4;
      selecImg.Free;
    end;
  Impressao.ShowReport();
  img1 := 1;
  img2 := 1;
  img3 := 1;
  img4 := 1;
end;

procedure TFAutografos.btbInserirClick(Sender: TObject);
var
autog : TFCadAutografos;
begin
  inherited;
  autog := TFCadAutografos.Create(nil);
  autog.inserir;
  autog.Free;
  atualizaGrid;
end;

procedure TFAutografos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsImpressao.Close;
end;

procedure TFAutografos.FormCreate(Sender: TObject);
begin
  inherited;
  autografo := TAutografo.Create;
  img1 := 1;
  img2 := 1;
  img3 := 1;
  img4 := 1;
end;

procedure TFAutografos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_INSERT then
    btbInserirClick(Sender);
  if dbgCadastros.Focused then
  begin
    if Key = VK_RETURN then
      btbAlterarClick(Sender);
    if Key = VK_DELETE then
      btbExcluirClick(Sender);
  end;
end;

procedure TFAutografos.ImpressaoGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
 if VarName = 'CARTORIO' then
  Value := empresa.getNome;
 if VarName = 'RESPONSAVEL' then
  Value := empresa.getResponsavel;
 if VarName = 'ATO' then
  Value := empresa.getAto;
 if VarName = 'FUNCIONARIA' then
  Value := usuario.getNomeCompleto;
 if VarName = 'PORTARIA' then
  Value := usuario.getPortaria;
 if VarName = 'FUNCAO' then
  Value := usuario.getFuncao;
end;

function TFAutografos.quantidadeImagens: Integer;
var
i: SmallInt;
begin
i := 0;
if not cdsImpressaoIMAGEM1.IsNull then
   Inc(i);
if not cdsImpressaoIMAGEM2.IsNull then
   Inc(i);
if not cdsImpressaoIMAGEM3.IsNull then
   Inc(i);
if not cdsImpressaoIMAGEM4.IsNull then
   Inc(i);
Result := i;
end;

end.
