unit uCadCNDProtesto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFCadCNDProtesto = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroSELO: TStringField;
    cdsCadastroAUTOGRAFO: TIntegerField;
    cdsCadastroUSUARIO: TIntegerField;
    cdsCadastroFERC: TFMTBCDField;
    cdsCadastroDATA: TDateField;
    Label1: TLabel;
    dbAutografo: TDBEdit;
    Edit1: TEdit;
    Label2: TLabel;
    dbSelo: TDBEdit;
    Label3: TLabel;
    dbFerc: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCNDProtesto: TFCadCNDProtesto;

implementation

{$R *.dfm}

end.
