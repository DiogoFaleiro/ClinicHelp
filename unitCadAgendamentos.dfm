object formCadAgendamentos: TformCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 700
  ClientWidth = 1111
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 109
    Width = 12
    Height = 16
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 128
    Top = 109
    Width = 103
    Height = 16
    Caption = 'Nome do Paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 128
    Top = 172
    Width = 26
    Height = 16
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 224
    Top = 172
    Width = 27
    Height = 16
    Caption = 'Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 352
    Top = 109
    Width = 77
    Height = 16
    Caption = 'Especialidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 352
    Top = 172
    Width = 95
    Height = 16
    Caption = 'Nome do M'#233'dico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 24
    Top = 232
    Width = 498
    Height = 460
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1111
    Height = 103
    Align = alTop
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 32
      Width = 202
      Height = 33
      Caption = 'Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 400
      Top = 15
      Width = 590
      Height = 57
      DataSource = DM.dsAgendamento
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 128
    Width = 41
    Height = 21
    Color = clInfoBk
    DataField = 'id'
    DataSource = DM.dsAgendamento
    Enabled = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 128
    Top = 192
    Width = 65
    Height = 21
    Color = clInfoBk
    DataField = 'data'
    DataSource = DM.dsAgendamento
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 224
    Top = 192
    Width = 65
    Height = 21
    Color = clInfoBk
    DataField = 'hora'
    DataSource = DM.dsAgendamento
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 352
    Top = 192
    Width = 161
    Height = 21
    Color = clInfoBk
    DataField = 'medico'
    DataSource = DM.dsAgendamento
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 128
    Top = 128
    Width = 209
    Height = 21
    Color = clInfoBk
    DataField = 'id_paciente'
    DataSource = DM.dsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPaciente
    TabOrder = 5
  end
  object DBComboBox1: TDBComboBox
    Left = 352
    Top = 128
    Width = 161
    Height = 21
    Color = clInfoBk
    DataField = 'especialidade'
    DataSource = DM.dsAgendamento
    Items.Strings = (
      'Odontologista'
      'Pediatra'
      'Cardiologista'
      'Ortopedista'
      'Nutricionista')
    TabOrder = 6
  end
  object CalendarView1: TCalendarView
    Left = 32
    Top = 240
    Width = 482
    Height = 441
    Date = 44592.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    HeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    HeaderInfo.DaysOfWeekFont.Color = clWindowText
    HeaderInfo.DaysOfWeekFont.Height = -13
    HeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    HeaderInfo.DaysOfWeekFont.Style = []
    HeaderInfo.Font.Charset = DEFAULT_CHARSET
    HeaderInfo.Font.Color = clWindowText
    HeaderInfo.Font.Height = -20
    HeaderInfo.Font.Name = 'Segoe UI'
    HeaderInfo.Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 528
    Top = 128
    Width = 553
    Height = 556
    Color = clInfoBk
    DataSource = DM.dsAgendamento
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Title.Caption = 'HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'ESPECIALIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'medico'
        Title.Caption = 'M'#201'DICO'
        Visible = True
      end>
  end
end
