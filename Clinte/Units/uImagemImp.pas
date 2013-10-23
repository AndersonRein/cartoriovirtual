unit uImagemImp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Datasnap.DBClient;

type
  TFImagensImp = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure exibirImagem1();
    procedure exibirImagem2();
    procedure exibirImagem3();
    procedure exibirImagem4();
  public
    { Public declarations }
    procedure new(cdsImgens: TClientDataSet);
    function getImagem1:SmallInt;
    function getImagem2:SmallInt;
    function getImagem3:SmallInt;
    function getImagem4:SmallInt;
  end;

var
  FImagensImp: TFImagensImp;

implementation

{$R *.dfm}

procedure TFImagensImp.exibirImagem1;
begin
  Image1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'\temp\imagem1.jpg');
end;

procedure TFImagensImp.exibirImagem2;
begin
Image2.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'\temp\imagem2.jpg');
end;

procedure TFImagensImp.exibirImagem3;
begin
Image3.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'\temp\imagem3.jpg');
end;

procedure TFImagensImp.exibirImagem4;
begin
Image4.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'\temp\imagem4.jpg');
end;

procedure TFImagensImp.FormShow(Sender: TObject);
begin
  inherited;
 exibirImagem1;
 exibirImagem2;
 exibirImagem3;
 exibirImagem4;
end;

function TFImagensImp.getImagem1: SmallInt;
begin
  if CheckBox1.Checked then
    Result := 1
  else
    Result := 0;
end;

function TFImagensImp.getImagem2: SmallInt;
begin
  if CheckBox2.Checked then
    Result := 1
  else
    Result := 0;
end;

function TFImagensImp.getImagem3: SmallInt;
begin
  if CheckBox3.Checked then
    Result := 1
  else
    Result := 0;
end;

function TFImagensImp.getImagem4: SmallInt;
begin
  if CheckBox4.Checked then
    Result := 1
  else
    Result := 0;
end;

procedure TFImagensImp.new(cdsImgens: TClientDataSet);
begin
Self.ShowModal;
end;

end.
