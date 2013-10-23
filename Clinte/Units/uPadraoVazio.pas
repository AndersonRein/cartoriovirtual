unit uPadraoVazio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFPadraoVazio = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPadraoVazio: TFPadraoVazio;

implementation

{$R *.dfm}

procedure TFPadraoVazio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_escape then
   Close;
end;

procedure TFPadraoVazio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
