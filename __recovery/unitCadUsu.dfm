object FormCadUsu: TFormCadUsu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 441
  ClientWidth = 709
  Color = clBtnFace
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
  object Bevel1: TBevel
    Left = 8
    Top = 120
    Width = 201
    Height = 113
  end
  object Label1: TLabel
    Left = 393
    Top = 85
    Width = 84
    Height = 13
    Caption = 'Pesquisar usu'#225'rio'
  end
  object Label2: TLabel
    Left = 16
    Top = 125
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
    Top = 183
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 65
    Align = alTop
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
    Left = 393
    Top = 132
    Width = 296
    Height = 293
    DataSource = DM.dsUsuarios
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 393
    Top = 104
    Width = 296
    Height = 21
    TabOrder = 1
  end
  object name_usu: TDBEdit
    Left = 16
    Top = 143
    Width = 161
    Height = 24
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
    Top = 201
    Width = 161
    Height = 24
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
    OnDblClick = DBNavigator1DblClick
  end
  object bt_gravar: TButton
    Left = 8
    Top = 272
    Width = 129
    Height = 49
    Caption = 'Gravar'
    DoubleBuffered = False
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = bt_gravarClick
  end
end
