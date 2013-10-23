unit uEmolumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uAcessoPadrao, Data.DB, uTEmolumentos,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFEmolumentos = class(TFAcessoCadPadrao)
    cdsConsultaCODIGO: TIntegerField;
    cdsConsultaGRUPOLEI: TSmallintField;
    cdsConsultaTIPOATO: TStringField;
    cdsConsultaLEI: TStringField;
    cdsConsultaATOGERAL: TStringField;
    cdsConsultaATOFIXO: TStringField;
    cdsConsultaTIPOSELO: TIntegerField;
    cdsConsultaVALOR: TFMTBCDField;
    cdsConsultaEDITAVEL: TStringField;
    cdsConsultaATIVO: TStringField;
    cdsConsultaVLRTRANSACAO: TFMTBCDField;
    procedure btbInserirClick(Sender: TObject);
    procedure btbAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btbExcluirClick(Sender: TObject);
  private
    { Private declarations }
    emolumento: TEmolumentos;
  public
    { Public declarations }
  end;

var
  FEmolumentos: TFEmolumentos;

implementation

{$R *.dfm}

uses uDM, uCadEmolumentos, uPadrao;

procedure TFEmolumentos.btbAlterarClick(Sender: TObject);
var
cadEmolumento: TFCadEmolumentos;
begin
  inherited;
cadEmolumento := TFCadEmolumentos.Create(nil);
cadEmolumento.alterar(cdsConsultaCODIGO.AsInteger);
cadEmolumento.Free;
atualizaGrid;
end;

procedure TFEmolumentos.btbExcluirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(DESEJA_REALMENTE_EXCLUIR_REGISTRO, 'Confirmação',
    MB_YESNO) = idYES then
  begin
    try
       emolumento.excluir(cdsConsultaCODIGO.AsInteger);
      ShowMessage(CADASTRO_EXCLUIDO_SUCESSO);
      atualizaGrid;
    except
      ShowMessage(CADASTRO_POSSUI_DEPENDENCIA);
    end;
  end;
end;

procedure TFEmolumentos.btbInserirClick(Sender: TObject);
var
cadEmolumento: TFCadEmolumentos;
begin
  inherited;
cadEmolumento := TFCadEmolumentos.Create(nil);
cadEmolumento.inserir;
cadEmolumento.Free;
atualizaGrid;
end;

procedure TFEmolumentos.FormCreate(Sender: TObject);
begin
  inherited;
 emolumento := TEmolumentos.Create;
end;

end.
