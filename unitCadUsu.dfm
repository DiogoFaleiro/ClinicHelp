object FormCadUsu: TFormCadUsu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 441
  ClientWidth = 709
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
  object Label1: TLabel
    Left = 16
    Top = 181
    Width = 84
    Height = 13
    Caption = 'Pesquisar usu'#225'rio'
  end
  object Label2: TLabel
    Left = 16
    Top = 76
    Width = 33
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 123
    Width = 36
    Height = 16
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 408
    Top = 76
    Width = 105
    Height = 16
    Caption = 'Acesso do Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 65
    Align = alTop
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 5
    object Label4: TLabel
      Left = 16
      Top = 18
      Width = 203
      Height = 23
      Caption = 'Cadastro de Usu'#225'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 227
    Width = 185
    Height = 190
    Color = clInfoBk
    DataSource = DM.dsUsuarios
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'usuario'
        Title.Caption = 'Usu'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 166
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 16
    Top = 200
    Width = 185
    Height = 21
    Color = clInfoBk
    TabOrder = 1
  end
  object name_usu: TDBEdit
    Left = 16
    Top = 94
    Width = 185
    Height = 24
    Color = clInfoBk
    DataField = 'usuario'
    DataSource = DM.dsUsuarios
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object senha_usu: TDBEdit
    Left = 16
    Top = 141
    Width = 185
    Height = 24
    Color = clInfoBk
    DataField = 'senha'
    DataSource = DM.dsUsuarios
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 393
    Top = 16
    Width = 290
    Height = 34
    Cursor = crHandPoint
    DataSource = DM.dsUsuarios
    TabOrder = 4
  end
  object CheckListBox1: TCheckListBox
    Left = 408
    Top = 94
    Width = 275
    Height = 323
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Cadastro de Pacientes'
      'Agendamentos'
      'Usu'#225'rios'
      'Relat'#243'rios')
    ParentFont = False
    Style = lbOwnerDrawFixed
    TabOrder = 6
  end
end
