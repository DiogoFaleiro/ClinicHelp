unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Conecxao: TFDConnection;
    tbPaciente: TFDTable;
    tbAgendamento: TFDTable;
    dsPaciente: TDataSource;
    dsAgendamento: TDataSource;
    tbUsuarios: TFDTable;
    dsUsuarios: TDataSource;
    tbAgendamentoid: TFDAutoIncField;
    tbAgendamentoid_paciente: TIntegerField;
    tbAgendamentodata: TDateField;
    tbAgendamentohora: TStringField;
    tbAgendamentoespecialidade: TStringField;
    tbAgendamentomedico: TStringField;
    tbUsuariosid: TFDAutoIncField;
    tbUsuariosusuario: TStringField;
    tbPacienteid: TFDAutoIncField;
    tbPacientenome: TStringField;
    tbPacientecelular: TStringField;
    tbPacientedata: TDateField;
    tbPacientecpf: TStringField;
    tbPacienteobservacoes: TMemoField;
    tbPacienteSexo: TStringField;
    tbPacienteRG: TStringField;
    tbPacienteOrgao_exp: TStringField;
    tbPacienteEnd: TStringField;
    tbPacienteDataNasc: TDateTimeField;
    tbPacienteEstCivil: TStringField;
    tbPacienteConvenio: TStringField;
    tbPacienteIndicacao: TStringField;
    tbPacienteProfis: TStringField;
    tbPacienteAnamnese: TMemoField;
    tbPacienteDataIni: TDateTimeField;
    tbPacienteDataFim: TDateTimeField;
    tbUsuariossenha: TStringField;
    procedure tbPacienteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function MD5String(const Value: string): string;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.tbPacienteAfterInsert(DataSet: TDataSet);
begin
  tbPacientedata.Value := Date();
end;

function TDM.MD5String(const Value: string): string;
var q:TFDQuery;
begin
  q := TFDQuery.Create(self);
  q.Connection := Conecxao;
  q.SQL.Add('Select md5(:var) as cripto');
  q.ParamByName('var').Value := Value;
  q.Open;
  result :=  q.FieldByName('cripto').AsString;
  q.free;
end;

end.
