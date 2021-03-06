unit uCadFormasPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFCadFormasPagamento = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroTIPO: TSmallintField;
    lbl1: TLabel;
    dbNome: TDBEdit;
    dbTipo: TDBCheckBox;
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadFormasPagamento: TFCadFormasPagamento;

implementation

{$R *.dfm}

procedure TFCadFormasPagamento.btSalvarClick(Sender: TObject);
begin
  inherited;
 dbNome.SetFocus;
end;

procedure TFCadFormasPagamento.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroTIPO.AsInteger := 0;
end;

end.
