object DM: TDM
  OldCreateOrder = False
  Height = 615
  Width = 698
  object Conecxao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'Password=tche1045734728'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 16
  end
  object tbPaciente: TFDTable
    Active = True
    AfterInsert = tbPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = Conecxao
    UpdateOptions.UpdateTableName = 'clinica.paciente'
    TableName = 'clinica.paciente'
    Left = 56
    Top = 80
    object tbPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbPacientenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object tbPacientecelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 16
    end
    object tbPacientedata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object tbPacientecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###-###-###-##;1;_'
      Size = 14
    end
    object tbPacienteobservacoes: TMemoField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      Required = True
      BlobType = ftMemo
    end
    object tbPacienteSexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sexo'
      Origin = 'Sexo'
      Size = 2
    end
    object tbPacienteRG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RG'
      Origin = 'RG'
      Size = 21
    end
    object tbPacienteOrgao_exp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Orgao_exp'
      Origin = 'Orgao_exp'
      Size = 10
    end
    object tbPacienteEnd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'End'
      Origin = 'End'
      Size = 51
    end
    object tbPacienteDataNasc: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DataNasc'
      Origin = 'DataNasc'
      EditMask = '!99/99/0000;1;_'
    end
    object tbPacienteEstCivil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EstCivil'
      Origin = 'EstCivil'
    end
    object tbPacienteConvenio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Convenio'
      Origin = 'Convenio'
      Size = 16
    end
    object tbPacienteIndicacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Indicacao'
      Origin = 'Indicacao'
    end
    object tbPacienteProfis: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Profis'
      Origin = 'Profis'
    end
    object tbPacienteAnamnese: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Anamnese'
      Origin = 'Anamnese'
      BlobType = ftMemo
    end
    object tbPacienteDataIni: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DataIni'
      Origin = 'DataIni'
      EditMask = '!99/99/0000;1;_'
    end
    object tbPacienteDataFim: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DataFim'
      Origin = 'DataFim'
      EditMask = '!99/99/0000;1;_'
    end
    object tbPacienteTratamentos: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Tratamentos'
      Origin = 'Tratamentos'
    end
  end
  object tbAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conecxao
    UpdateOptions.UpdateTableName = 'clinica.agendamento'
    TableName = 'clinica.agendamento'
    Left = 56
    Top = 168
    object tbAgendamentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbAgendamentoid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object tbAgendamentodata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object tbAgendamentohora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      Size = 8
    end
    object tbAgendamentoespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 25
    end
    object tbAgendamentomedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 30
    end
  end
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 144
    Top = 80
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 144
    Top = 168
  end
  object tbUsuarios: TFDTable
    Active = True
    IndexName = 'PRIMARY'
    Connection = Conecxao
    UpdateOptions.UpdateTableName = 'usuarios'
    CatalogName = 'clinica'
    TableName = 'usuarios'
    Left = 56
    Top = 248
    object tbUsuariosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object tbUsuariosusuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuario'
      Origin = 'usuario'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object tbUsuariossenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 32
    end
  end
  object dsUsuarios: TDataSource
    DataSet = tbUsuarios
    Left = 144
    Top = 248
  end
end
