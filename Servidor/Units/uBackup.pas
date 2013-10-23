unit uBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoVazio, StdCtrls, ExtCtrls, Buttons, ComCtrls, IBServices,
  IniFiles, DateUtils, uTConfiguracoes;

type
  TFBackup = class(TFPadraoVazio)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    spbBackup: TSpeedButton;
    GroupBox1: TGroupBox;
    lblBackupDados: TLabel;
    GroupBox2: TGroupBox;
    spbRestore: TSpeedButton;
    spbDados: TSpeedButton;
    OpenDialog: TOpenDialog;
    lblRestoreDados: TLabel;
    IBBackup: TIBBackupService;
    IBRestore: TIBRestoreService;
    procedure spbBackupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spbDadosClick(Sender: TObject);
    procedure spbRestoreClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    bancoDados, bancoImagens: string;
    config: TConfiguracoes;
    procedure caminhoBanco();
    function backup(caminho, banco: string): Boolean;
    function restore(caminho, banco: string): Boolean;
  public
    { Public declarations }
  end;

var
  FBackup: TFBackup;

implementation

uses uDM;
{$R *.dfm}

function TFBackup.backup(caminho, banco: string): Boolean;
begin
  IBBackup.LoginPrompt := False;
  IBBackup.Params.Add('user_name=SYSDBA');
  IBBackup.Params.Add('password=masterkey');
  with IBBackup do
  begin
    Attach;
    DatabaseName := banco;
    BackupFile.Add(caminho);
    Active := True;
    ServiceStart;
    Active := False;
  end;
  IBBackup.Free;
end;

procedure TFBackup.caminhoBanco;
var
  myini: TMEMInifile;
begin
  myini := TMEMInifile.Create('CONFIG\CONFIG.ini');
  with myini do
  begin
    bancoDados := Readstring('BASEDEDADOS', 'ENDERECO', '');
  end;
end;

procedure TFBackup.FormCreate(Sender: TObject);
begin
  inherited;
  config := TConfiguracoes.Create;
  caminhoBanco;
end;

procedure TFBackup.FormShow(Sender: TObject);
begin
  inherited;
  lblBackupDados.Caption := config.getCaminhoBackup + 'BackupCartorio' + IntToStr
    (DayOfTheMonth(Date)) + '-' + IntToStr(MonthOfTheYear(Date))
    + '-' + IntToStr(YearOf(Date)) + '.FBK';
end;

function TFBackup.restore(caminho, banco: string): Boolean;
begin
  IBRestore.LoginPrompt := False;
  IBRestore.Params.Add('user_name=SYSDBA');
  IBRestore.Params.Add('password=masterkey');
  with IBRestore do
  begin
    Attach;
    Options := [Replace];
    DatabaseName.Add(banco);
    BackupFile.Add(caminho);
    Active := True;
    ServiceStart;
    Active := False;
  end;
  IBRestore.Free;
end;

procedure TFBackup.spbBackupClick(Sender: TObject);
begin
  inherited;
  try
    backup(lblBackupDados.Caption, bancoDados);
    ShowMessage('Backup realizado com sucesso.');
  except
    on E: Exception do
      ShowMessage('Ocoreu um erro durando o processo. '+E.Message);
  end;
end;

procedure TFBackup.spbDadosClick(Sender: TObject);
begin
  inherited;
  OpenDialog.Execute();
  lblRestoreDados.Caption := OpenDialog.FileName;
end;

procedure TFBackup.spbRestoreClick(Sender: TObject);
begin
  inherited;
  if lblRestoreDados.Caption = '' then
  begin
    ShowMessage('Selecione um backup para a restauração.');
    Exit;
  end;
  DM.SQLConnection.Connected := False;
  restore(lblRestoreDados.Caption, bancoDados);
  ShowMessage('Restauração realizada com sucesso.');
  DM.conectar;

end;

end.
