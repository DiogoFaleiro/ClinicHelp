unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.jpeg, ShellApi;


type
  TformPrincipal = class(TForm)
    Panel1: TPanel;
    bt_sair: TBitBtn;
    bt_pacientes: TBitBtn;
    Image1: TImage;
    bt_usu: TBitBtn;
    bt_relatorios: TBitBtn;
    bt_trocausu: TBitBtn;
    bt_agendamentos: TBitBtn;
    procedure bt_pacientesClick(Sender: TObject);
    procedure bt_agendamentosClick(Sender: TObject);
    procedure bt_usuClick(Sender: TObject);
    procedure bt_sairClick(Sender: TObject);
    procedure bt_trocausuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses unitCadPacientes, unitCadAgendamentos, unitCadUsu, login, unitDM,
  unitCadTratamentos;

procedure TformPrincipal.bt_usuClick(Sender: TObject);
begin
  formCadUsu.Showmodal;
end;

procedure TformPrincipal.bt_pacientesClick(Sender: TObject);
begin
 formCadPacientes.ShowModal;
end;

procedure TformPrincipal.bt_agendamentosClick(Sender: TObject);
begin
 formCadAgendamentos.ShowModal;
end;

procedure TformPrincipal.bt_trocausuClick(Sender: TObject);
begin
  form_login.edtSenha.Text := '';
  formPrincipal.Hide;
  formPrincipal.Close;
   form_login.Show;
end;

procedure TformPrincipal.bt_sairClick(Sender: TObject);
begin
 Application.Terminate;
end;

end.
