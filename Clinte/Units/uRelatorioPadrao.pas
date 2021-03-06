unit uRelatorioPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPadraoVazio, StdCtrls, ComCtrls, Buttons, frxClass, frxDBSet,
  frxExportPDF;

type
  TFRelatorioPadrao = class(TFPadraoVazio)
    gpbData: TGroupBox;
    dataInicio: TDateTimePicker;
    lblDataini: TLabel;
    dataFinal: TDateTimePicker;
    Label1: TLabel;
    spbImprimir: TSpeedButton;
    Relatorio: TfrxReport;
    dbRelatorio: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioPadrao: TFRelatorioPadrao;

implementation

{$R *.dfm}

procedure TFRelatorioPadrao.FormCreate(Sender: TObject);
begin
  inherited;
  dataInicio.Date := Date - 30;
  datafinal.Date := Date;
end;

end.
