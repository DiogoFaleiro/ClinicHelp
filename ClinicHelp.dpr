program ClinicHelp;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {formPrincipal},
  unitCadPacientes in 'unitCadPacientes.pas' {formCadPacientes},
  unitCadAgendamentos in 'unitCadAgendamentos.pas' {formCadAgendamentos},
  unitDM in 'unitDM.pas' {DM: TDataModule},
  login in 'login.pas' {form_login},
  unitCadUsu in 'unitCadUsu.pas' {FormCadUsu},
  Vcl.Themes,
  Vcl.Styles,
  unitCadTratamentos in 'unitCadTratamentos.pas' {formCadTratamentos},
  unitFicha in 'unitFicha.pas' {FormFicha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_login, form_login);
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadPacientes, formCadPacientes);
  Application.CreateForm(TformCadAgendamentos, formCadAgendamentos);
  Application.CreateForm(TFormCadUsu, FormCadUsu);
  Application.CreateForm(TformCadTratamentos, formCadTratamentos);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormFicha, FormFicha);
  Application.Run;
end.
