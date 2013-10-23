unit uBusca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoVazio, FMTBcd, StdCtrls, DB, SqlExpr, Grids, DBGrids,
  Provider, DBClient, ExtCtrls, pngimage, DSConnect;

type
  TFBusca = class(TFPadraoVazio)
    cdsBusca: TClientDataSet;
    dsBusca: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    lblBusca: TLabel;
    Image1: TImage;
    GroupBox3: TGroupBox;
    edBusca: TEdit;
    pcBusca: TDSProviderConnection;
    smSQS: TSqlServerMethod;
    procedure edBuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    codigo: Integer;
    grid: TDBGrid;
    nome: string;
    cancelou: Boolean;
    procedure busca;
  public
    { Public declarations }
    procedure new(titulo, stringSQL: string);
    function getCodigo: Integer;
    function getNome: string;
    procedure setPropriedades(gride: TDBGrid);
    function getCancelou: Boolean;
  end;

var
  FBusca: TFBusca;

implementation

uses uDM;
{$R *.dfm}
{ TFPadraoVazio1 }

procedure TFBusca.busca;
var
  I: Integer;
begin
  cdsBusca.Close;
  cdsBusca.FetchParams;
  for I := 0 to cdsBusca.Params.Count - 1 do
  cdsBusca.Params[I].AsString := '%' + edBusca.Text + '%';
  cdsBusca.Open;

  for I := 0 to grid.Columns.Count - 1 do
    DBGrid1.Columns[I].Width := grid.Columns[I].Width;
end;

procedure TFBusca.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  cancelou := False;
  Close;
end;

procedure TFBusca.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    cancelou := False;
    Close;
  end;
end;

procedure TFBusca.edBuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  busca;
end;

procedure TFBusca.FormCreate(Sender: TObject);
begin
  inherited;
  grid := TDBGrid.Create(nil);
  cancelou := True;
end;

procedure TFBusca.FormShow(Sender: TObject);
begin
  inherited;
  edBusca.SetFocus;
end;

procedure TFBusca.new(titulo, stringSQL: string);
begin
  Self.lblBusca.Caption := titulo;
  smSQS.Close;
  smSQS.Params[0].AsString := stringSQL;
  smSQS.ExecuteMethod;
  busca;
  Self.ShowModal;
end;

procedure TFBusca.setPropriedades(gride: TDBGrid);
begin
  grid := gride;
end;

function TFBusca.getCancelou: Boolean;
begin
Result := cancelou;
end;

function TFBusca.getCodigo: Integer;
begin
  Result := cdsBusca.Fields[0].AsInteger;
end;

function TFBusca.getNome: string;
begin
  Result := cdsBusca.Fields[1].AsString;
end;

end.
