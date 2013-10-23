unit uCadRegBoleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPadrao, Data.DB, uTRegBoleto,
  Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFCadRegBoleto = class(TFCadastroPadrao)
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroSERIEINI: TLargeintField;
    cdsCadastroSERIEFIM: TLargeintField;
    cdsCadastroENTREGA: TDateField;
    cdsCadastroQUANTIDADE: TIntegerField;
    cdsCadastroTIPOBOLETO: TSmallintField;
    Label1: TLabel;
    dbSERIEINI: TDBEdit;
    Label2: TLabel;
    dbSerieFim: TDBEdit;
    lbl1: TLabel;
    dbEntrega: TDBEdit;
    lbl2: TLabel;
    dbQuantidade: TDBEdit;
    dbTipoBoleto: TDBRadioGroup;
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure dbSERIEINIKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    regBoleto: TRegBoleto;
  public
    { Public declarations }
  end;

var
  FCadRegBoleto: TFCadRegBoleto;

implementation

{$R *.dfm}

uses uDM;

procedure TFCadRegBoleto.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroTIPOBOLETO.AsInteger := 0;
end;

procedure TFCadRegBoleto.dbSERIEINIKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 cdsCadastroQUANTIDADE.AsInteger := regBoleto.calcularQuantidade(StrToInt64Def(dbSERIEINI.Text,0), StrToInt64Def(dbSerieFim.Text,0));
end;

procedure TFCadRegBoleto.FormCreate(Sender: TObject);
begin
  inherited;
 regBoleto := TRegBoleto.Create;
end;

end.
