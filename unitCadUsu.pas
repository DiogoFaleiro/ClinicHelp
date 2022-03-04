unit unitCadUsu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, uJKDialog, PngImage,
  Vcl.CheckLst;

type
  TFormCadUsu = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    name_usu: TDBEdit;
    senha_usu: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label4: TLabel;
    CheckListBox1: TCheckListBox;
    Label5: TLabel;
    procedure bt_gravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadUsu: TFormCadUsu;

implementation

{$R *.dfm}

uses unitDM, login, unit_principal, unitCadAgendamentos, unitCadPacientes;

//INSERT INTO `usuarios` (`id`, `usuario`, `senha`) VALUES (NULL, 'rafa', MD5('123'));

procedure TFormCadUsu.bt_gravarClick(Sender: TObject);
begin
  JKDialog('Atenção',
  'Usuário gravado com sucesso', tdSucesso);
end;

end.
