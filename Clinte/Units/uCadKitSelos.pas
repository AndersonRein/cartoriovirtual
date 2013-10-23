unit uCadKitSelos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFCadKitSelos = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroQUANTIDADE: TIntegerField;
    Label1: TLabel;
    dbNOME: TDBEdit;
    Label2: TLabel;
    dbQuantidade: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadKitSelos: TFCadKitSelos;

implementation

{$R *.dfm}

end.
