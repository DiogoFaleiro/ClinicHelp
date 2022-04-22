unit unitFicha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt;

type
  TFormFicha = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFicha: TFormFicha;

implementation

{$R *.dfm}

uses unitCadPacientes, unitDM;

end.
