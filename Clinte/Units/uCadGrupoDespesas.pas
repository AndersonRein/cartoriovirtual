unit uCadGrupoDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFCadGrupoDespesas = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroSTATUS: TSmallintField;
    cdsCadastroCARNELEAO: TIntegerField;
    lbl1: TLabel;
    dbNOME: TDBEdit;
    lbl2: TLabel;
    dbCarneLeao: TDBEdit;
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadGrupoDespesas: TFCadGrupoDespesas;

implementation

{$R *.dfm}

uses uDM;

procedure TFCadGrupoDespesas.btSalvarClick(Sender: TObject);
begin
  inherited;
 dbNOME.SetFocus;
end;

end.
