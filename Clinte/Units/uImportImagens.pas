unit uImportImagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadraoVazio, Vcl.ExtDlgs, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, jpeg;

type
  TFImportImagens = class(TFPadraoVazio)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Imagem: TImage;
    spbAdd: TSpeedButton;
    OpenDialog: TOpenPictureDialog;
    spbSalvar: TSpeedButton;
    procedure spbAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
  private
    { Private declarations }
    cancelou:Boolean;
  public
    { Public declarations }
    procedure new(img: TJPEGImage);
    function getCancelou:Boolean;
    function getImagem():TMemoryStream;
  end;

var
  FImportImagens: TFImportImagens;

implementation

{$R *.dfm}

uses uPadrao;

procedure TFImportImagens.FormCreate(Sender: TObject);
begin
  inherited;
 cancelou := True;
end;

function TFImportImagens.getCancelou: Boolean;
begin
Result := cancelou;
end;

function TFImportImagens.getImagem: TMemoryStream;
var
stream: TMemoryStream;
begin
stream := TMemoryStream.Create;
Imagem.Picture.Graphic.SaveToStream(stream);
Result := stream;
end;

procedure TFImportImagens.new(img: TJPEGImage);
begin
Imagem.Picture.Assign(img);
Self.ShowModal;
end;

procedure TFImportImagens.spbAddClick(Sender: TObject);
begin
  inherited;
if OpenDialog.Execute() then
    Imagem.Picture.LoadFromFile(OpenDialog.FileName);
 end;

procedure TFImportImagens.spbSalvarClick(Sender: TObject);
begin
  inherited;
//  Imagem.Picture.SaveToFile(getEndImgTemp);
  cancelou := False;
  Close;
end;

end.
