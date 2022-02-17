unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Expr, FireDAC.Comp.Client, FireDAC.Stan.ExprFuncs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet;

type
  Tform_login = class(TForm)
    Image1: TImage;
    bt_cancelar: TBitBtn;
    bt_entrar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    edtUsu: TEdit;
    edtSenha: TEdit;
    procedure bt_entrarClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_login: Tform_login;

implementation

{$R *.dfm}

uses unitDM, unit_principal, unitCadAgendamentos, unitCadPacientes, unitCadUsu,
  unitCadTratamentos;

procedure Tform_login.bt_cancelarClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure Tform_login.bt_entrarClick(Sender: TObject);
begin
   edtSenha.Text := StringReplace(edtSenha.Text, ' ', '', [rfReplaceAll]);
   if edtusu.Text = '' then begin
     ShowMessage('Informe seu usu�rio!');
     edtusu.SetFocus;
     abort;
   end;
   if (edtSenha.Text = '') then begin
     ShowMessage('Informe uma senha');
     edtSenha.SetFocus;
     abort;
   end;
   if not dm.tbUsuarios.LocateEx('usuario',edtusu.Text,[lxoCaseInsensitive]) then begin
      ShowMessage('N�o localizei esse usu�rio! Confira o usu�rio no campo correspondente.');
      abort;
   end
   else if (dm.MD5String(edtSenha.Text) <> dm.tbUsuariossenha.AsString) then begin
      ShowMessage('A senha digitada n�o confere com a senha do usu�rio '+edtusu.Text+'!');
      abort;
   end
   else begin
     //passou o acesso
     form_login.Hide;
     form_login.Closemodal;
     formPrincipal.Show;
   end;
end;
end.
