unit uRelSinteticoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uRelatorioPadrao, frxClass,
  frxExportPDF, frxDBSet, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, uTData,
  Data.DB, Datasnap.DBClient, Datasnap.DSConnect, uTBoletim, uTDespesas;

type
  TFRelSinteticoCaixa = class(TFRelatorioPadrao)
    GroupBox1: TGroupBox;
    cbbAno: TComboBox;
    dspEmpresa: TDSProviderConnection;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaCODIGO: TIntegerField;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaRESPONSAVEL: TStringField;
    cdsEmpresaREGISTRO: TStringField;
    cdsEmpresaCODFERF: TIntegerField;
    cdsEmpresaCODNACIONAL: TIntegerField;
    dbEmpresa: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure RelatorioGetValue(const VarName: string; var Value: Variant);
    procedure spbImprimirClick(Sender: TObject);
  private
    { Private declarations }
    datas: TData;
    boletim: TBoletim;
    despesa: TDespesas;
    r01, r02, r03, r04, r05, r06, r07, r08, r09, r10, r11, r12: Double;
    d01, d02, d03, d04, d05, d06, d07, d08, d09, d10, d11, d12: Double;
    tr, td:Double;
  public
    { Public declarations }
  end;

var
  FRelSinteticoCaixa: TFRelSinteticoCaixa;

implementation

{$R *.dfm}


procedure TFRelSinteticoCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  datas := TData.Create;
  boletim := TBoletim.Create;
  despesa := TDespesas.Create;
  cdsEmpresa.Close;
  cdsEmpresa.Params[0].AsInteger := 1;
  cdsEmpresa.Open;
  cbbAno.ItemIndex := (datas.getAno - 2001);
end;

procedure TFRelSinteticoCaixa.RelatorioGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
 if VarName = 'ANO' then
  Value := cbbAno.Text;
  //receitas
 if VarName = 'R01' then
    begin
      r01 := boletim.getTotalCaixaMes(1,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r01;
    end;
 if VarName = 'R02' then
    begin
      r02 := boletim.getTotalCaixaMes(2,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r02;
    end;
 if VarName = 'R03' then
    begin
      r03 := boletim.getTotalCaixaMes(3,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r03;
    end;
 if VarName = 'R04' then
    begin
      r04 := boletim.getTotalCaixaMes(4,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r04;
    end;
 if VarName = 'R05' then
    begin
      r05 := boletim.getTotalCaixaMes(5,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r05;
    end;
 if VarName = 'R06' then
    begin
      r06 := boletim.getTotalCaixaMes(6,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r06;
    end;
 if VarName = 'R07' then
    begin
      r07 := boletim.getTotalCaixaMes(7,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r07;
    end;
 if VarName = 'R08' then
    begin
      r08 := boletim.getTotalCaixaMes(8,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r08;
    end;
 if VarName = 'R09' then
    begin
      r09 := boletim.getTotalCaixaMes(9,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r09;
    end;
 if VarName = 'R10' then
    begin
      r10 := boletim.getTotalCaixaMes(10,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r10;
    end;
 if VarName = 'R11' then
    begin
      r11 := boletim.getTotalCaixaMes(11,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r11;
    end;
 if VarName = 'R12' then
    begin
      r12 := boletim.getTotalCaixaMes(12,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := r12;
    end;
    //Despesas
 if VarName = 'D01' then
    begin
      d01 := despesa.getTotalMes(1,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d01;
    end;
 if VarName = 'D02' then
    begin
      d02 := despesa.getTotalMes(2,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d02;
    end;
 if VarName = 'D03' then
    begin
      d03 := despesa.getTotalMes(3,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d03;
    end;
 if VarName = 'D04' then
    begin
      d04 := despesa.getTotalMes(4,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d04;
    end;
 if VarName = 'D05' then
    begin
      d05 := despesa.getTotalMes(5,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d05;
    end;
 if VarName = 'D06' then
    begin
      d06 := despesa.getTotalMes(6,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d06;
    end;
 if VarName = 'D07' then
    begin
      d07 := despesa.getTotalMes(7,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d07;
    end;
 if VarName = 'D08' then
    begin
      d08 := despesa.getTotalMes(8,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d08;
    end;
 if VarName = 'D09' then
    begin
      d09 := despesa.getTotalMes(9,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d09;
    end;
 if VarName = 'D10' then
    begin
      d10 := despesa.getTotalMes(10,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d10;
    end;
 if VarName = 'D11' then
    begin
      d11 := despesa.getTotalMes(11,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d11;
    end;
 if VarName = 'D12' then
    begin
      d12 := despesa.getTotalMes(12,StrToIntDef(cbbAno.Text,datas.getAno));
      Value := d12;
    end;
  //Total
 if VarName = 'T01' then
    begin
      Value := r01 - d01;
    end;
 if VarName = 'T02' then
    begin
      Value := r02 - d02;
    end;
 if VarName = 'T03' then
    begin
      Value := r03 - d03;
    end;
 if VarName = 'T04' then
    begin
      Value := r04 - d04;
    end;
 if VarName = 'T05' then
    begin
      Value := r05 - d05;
    end;
 if VarName = 'T06' then
    begin
      Value := r06 - d06;
    end;
 if VarName = 'T07' then
    begin
      Value := r07 - d07;
    end;
 if VarName = 'T08' then
    begin
      Value := r08 - d08;
    end;
 if VarName = 'T09' then
    begin
      Value := r09 - d09;
    end;
 if VarName = 'T10' then
    begin
      Value := r10 - d10;
    end;
 if VarName = 'T11' then
    begin
      Value := r11 - d11;
    end;
 if VarName = 'T12' then
    begin
      Value := r12 - d12;
    end;
  //Totalizadores
 if VarName = 'TR' then
    begin
      tr := r01 + r02 + r03 + r04 + r05 + r06 + r07 + r08 + r09 + r10 + r11 + r12;
      Value := tr;
    end;
 if VarName = 'TD' then
    begin
      td := d01 + d02 + d03 + d04 + d05 + d06 + d07 + d08 + d09 + d10 + d11 + d12;
      Value := td;
    end;
 if VarName = 'TT' then
    Value := tr - td;
end;

procedure TFRelSinteticoCaixa.spbImprimirClick(Sender: TObject);
begin
  inherited;
Relatorio.ShowReport();
end;

end.
