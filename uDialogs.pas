unit uDialogs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uJKDialog, PngImage;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if JKDialog('Aten��o', 'Mensagem', tdMensagem) then
  else
    ShowMessage('Cancelar');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  JKDialog('Aten��o',
    'Alguns campos n�o foram preenchidos corretamente.', tdAlerta);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  JKDialog('Aten��o',
    'Alguma coisa errada n�o esta certa.', tdErro);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  JKDialog('Aten��o',
    'Os Dados foram importados com sucesso.', tdSucesso);
end;

end.
