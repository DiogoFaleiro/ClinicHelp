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
      EditMask = '(##)#####-####;1;_'
      Size = 16
    end
    object tbPacientedata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      EditMask = '##/##/####;1;_'
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
    object tbPacienteanamnese: TMemoField
      FieldName = 'anamnese'
      Origin = 'anamnese'
      Required = True
      BlobType = ftMemo
    end
    object tbPacientedataini: TDateField
      FieldName = 'dataini'
      Origin = 'dataini'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbPacientedatafim: TDateField
      FieldName = 'datafim'
      Origin = 'datafim'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbPacienteprofis: TStringField
      FieldName = 'profis'
      Origin = 'profis'
      Required = True
      Size = 80
    end
    object tbPacienteindicacao: TStringField
      FieldName = 'indicacao'
      Origin = 'indicacao'
      Required = True
      Size = 80
    end
    object tbPacienteconvenio: TStringField
      FieldName = 'convenio'
      Origin = 'convenio'
      Required = True
    end
    object tbPacienteestcivil: TStringField
      FieldName = 'estcivil'
      Origin = 'estcivil'
      Required = True
    end
    object tbPacientedatanasc: TDateTimeField
      FieldName = 'datanasc'
      Origin = 'datanasc'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbPacienteend: TStringField
      FieldName = 'end'
      Origin = 'end'
      Required = True
      Size = 41
    end
    object tbPacienteOrgao_exp: TStringField
      FieldName = 'Orgao_exp'
      Origin = 'Orgao_exp'
      Required = True
      Size = 16
    end
    object tbPacienterg: TStringField
      FieldName = 'rg'
      Origin = 'rg'
      Required = True
      Size = 21
    end
    object tbPacientesexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      Required = True
      Size = 2
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
