unit unitCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.ComCtrls,
  Vcl.Buttons, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, JvDBControls, QuickRpt;

type
  TformCadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ID: TDBEdit;
    CPF: TDBEdit;
    Nome: TDBEdit;
    ed_cel: TDBEdit;
    Data: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cadastro: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    Label9: TLabel;
    ed_RG: TDBEdit;
    Label10: TLabel;
    ed_orgexp: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    ed_end: TDBEdit;
    ed_nasc: TDBEdit;
    ed_estcivil: TDBComboBox;
    Label13: TLabel;
    Label6: TLabel;
    ed_convenio: TDBEdit;
    Label14: TLabel;
    ed_indic: TDBEdit;
    ed_profis: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Imprimir: TBitBtn;
    Bevel1: TBevel;
    db_sexo: TDBComboBox;
    Label20: TLabel;
    db_anamnese: TDBMemo;
    db_obs: TDBMemo;
    txtBusca: TEdit;
    Label16: TLabel;
    db_dataini: TJvDBDatePickerEdit;
    db_datafim: TJvDBDatePickerEdit;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadPacientes: TformCadPacientes;

implementation

{$R *.dfm}

uses unitDM, unitCadAgendamentos;

procedure TformCadPacientes.txtBuscaChange(Sender: TObject);
begin
  DM.tbPaciente.Locate('nome', txtBusca.Text, [loPartialKey]);
end;

end.
