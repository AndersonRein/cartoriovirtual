unit uCadOcorrencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFCadOcorrencia = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    Label1: TLabel;
    dbNome: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadOcorrencia: TFCadOcorrencia;

implementation

{$R *.dfm}

end.
