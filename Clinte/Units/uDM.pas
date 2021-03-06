unit uDM;

interface

uses
  SysUtils, Classes, WideStrings, DB, SqlExpr, DBXInterbase, DBXFirebird,
  DBXTrace, Dialogs, inifiles, Data.DBXDataSnap, IndyPeerImpl, Data.DBXCommon;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure desconectar();
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

{ TDM }

procedure TDM.DataModuleCreate(Sender: TObject);
var
  myini: TMEMInifile;
  endereco, porta:string;
begin
  myini:=TMEMInifile.Create('CONFIG\CONFIG.ini');
  SQLConnection.connected := false;

  if SQLConnection.Connected then
    SQLConnection.Connected:=false;

  if FileExists('CONFIG\CONFIG.ini') then
   begin
     with myini do
       try
         endereco:= Readstring('CONEXAO','HOSTNAME','LOCALHOST');
         porta := Readstring('CONEXAO','PORTA','211');
         if (endereco='') then
           begin
             showmessage('Falha ao carregar arquivo de configuração.');
             Abort;
            end;

       finally
         free;
       end;
   end;

  try
    SQLConnection.Params.Values['HOSTNAME']:= endereco;
    SQLConnection.Connected := True;

  except
   on E: Exception do
     begin
       ShowMessage(e.Message);
       showmessage('Falha ao carregar arquivo de configuração');
     end;
  end;
end;

procedure TDM.desconectar;
begin
SQLConnection.Connected := False;
end;

end.
