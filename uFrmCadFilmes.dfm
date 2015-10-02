inherited frmCadFilmes: TfrmCadFilmes
  Caption = 'Cadastro Filmes'
  ClientHeight = 451
  ClientWidth = 776
  ExplicitWidth = 792
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    Width = 776
    ExplicitWidth = 776
    inherited pnlTitulo: TPanel
      Width = 774
      Caption = 'Cadastro Filmes'
      ExplicitWidth = 774
      inherited pnlFechar: TPanel
        Left = 704
        ExplicitLeft = 704
      end
    end
    inherited pnlPesquisa: TPanel
      Width = 774
      ExplicitWidth = 774
      object lblPesCodigo: TLabel [1]
        Left = 6
        Top = 22
        Width = 40
        Height = 13
        Caption = 'C'#243'digo :'
      end
      object lblPesNome: TLabel [2]
        Left = 159
        Top = 22
        Width = 76
        Height = 13
        Caption = 'Nome do Filme :'
      end
      inherited pnlPes: TPanel
        Left = 704
        TabOrder = 2
        ExplicitLeft = 704
        inherited btnPesquisar: TButton
          OnClick = btnPesquisarClick
        end
      end
      object edtPesCodigo: TEdit
        Left = 62
        Top = 19
        Width = 83
        Height = 21
        MaxLength = 11
        TabOrder = 0
      end
      object edtPesNome: TEdit
        Left = 239
        Top = 19
        Width = 242
        Height = 21
        TabOrder = 1
      end
    end
    inherited grdPesquisa: TDBGrid
      Width = 774
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 235
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Classificacao'
          Width = 158
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Genero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo'
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Num_Copias'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Data_Lancamento'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'id_genero'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'id_classificacao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'id_tipo'
          Visible = False
        end>
    end
  end
  inherited pnlBotoes: TPanel
    Width = 776
    ExplicitWidth = 776
    inherited btnAlterar: TSpeedButton
      ExplicitLeft = 52
      ExplicitTop = -4
      ExplicitHeight = 38
    end
  end
  inherited pnlDados: TPanel
    Width = 776
    Height = 242
    ExplicitWidth = 776
    ExplicitHeight = 242
    object lblCodigo: TLabel
      Left = 16
      Top = 16
      Width = 40
      Height = 13
      Caption = 'C'#243'digo :'
    end
    object lblNome: TLabel
      Left = 16
      Top = 40
      Width = 74
      Height = 13
      Caption = 'Nome do filme :'
    end
    object lblIdClassificacao: TLabel
      Left = 16
      Top = 66
      Width = 68
      Height = 13
      Caption = 'Classifica'#231#227'o :'
    end
    object lblIdGenero: TLabel
      Left = 16
      Top = 91
      Width = 42
      Height = 13
      Caption = 'G'#234'nero :'
    end
    object lblNumCopias: TLabel
      Left = 16
      Top = 139
      Width = 94
      Height = 13
      Caption = 'N'#250'mero de C'#243'pias :'
    end
    object lblDataLancamento: TLabel
      Left = 16
      Top = 163
      Width = 106
      Height = 13
      Caption = 'Data de Lan'#231'amento :'
    end
    object lblTipo: TLabel
      Left = 16
      Top = 114
      Width = 27
      Height = 13
      Caption = 'Tipo :'
    end
    object edtCodigo: TDBEdit
      Left = 144
      Top = 13
      Width = 121
      Height = 21
      DataField = 'ID'
      DataSource = dsMaster
      MaxLength = 11
      ReadOnly = True
      TabOrder = 0
    end
    object edtNome: TDBEdit
      Left = 144
      Top = 37
      Width = 249
      Height = 21
      DataField = 'Nome'
      DataSource = dsMaster
      TabOrder = 1
    end
    object edtNumCopias: TDBEdit
      Left = 144
      Top = 136
      Width = 249
      Height = 21
      DataField = 'Num_Copias'
      DataSource = dsMaster
      MaxLength = 11
      TabOrder = 2
    end
    object lcbGenero: TDBLookupComboBox
      Left = 144
      Top = 86
      Width = 169
      Height = 21
      DataField = 'id_genero'
      DataSource = dsMaster
      Enabled = False
      KeyField = 'id'
      ListField = 'genero'
      ListSource = dsGeneros
      TabOrder = 3
    end
    object edtDataLancamento: TDBEdit
      Left = 144
      Top = 160
      Width = 121
      Height = 21
      DataField = 'Data_Lancamento'
      DataSource = dsMaster
      TabOrder = 4
    end
    object lcbClassificacao: TDBLookupComboBox
      Left = 144
      Top = 62
      Width = 145
      Height = 21
      DataField = 'id_classificacao'
      DataSource = dsMaster
      Enabled = False
      KeyField = 'id'
      ListField = 'classificacao'
      ListSource = dsClassificacao
      TabOrder = 5
    end
    object lcbTipo: TDBLookupComboBox
      Left = 144
      Top = 110
      Width = 145
      Height = 21
      DataField = 'id_tipo'
      DataSource = dsMaster
      Enabled = False
      KeyField = 'id'
      ListField = 'tipo'
      ListSource = dsTipo
      TabOrder = 6
    end
  end
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'SELECT F.id, '
      '       F.nome, '
      '       F.num_copias, '
      '       F.data_lancamento, '
      '       F.id_genero, '
      '       F.id_classificacao, '
      '       F.id_tipo, '
      '       C.classificacao, '
      '       G.genero, '
      '       T.tipo  '
      'FROM   filmes F, '
      '       classificacao C, '
      '       generos G, '
      '       tipos T '
      'WHERE  F.id_classificacao = C.id '
      '       AND F.id_genero = G.id '
      '       AND F.id_tipo = T.id; ')
    Left = 137
    object fdtncfldMasterID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldMasterNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 80
    end
    object strngfldMasterClassificacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Classificacao'
      Origin = 'Classificacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object strngfldMasterGenero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Genero'
      Origin = 'Genero'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object strngfldMasterTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = 'Tipo'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object intgrfldMasterNum_Copias: TIntegerField
      FieldName = 'Num_Copias'
      Origin = 'Num_Copias'
      Required = True
    end
    object dtfldMasterData_Lancamento: TDateField
      FieldName = 'Data_Lancamento'
      Origin = 'Data_Lancamento'
      Required = True
    end
    object intgrfldMasterid_genero: TIntegerField
      FieldName = 'id_genero'
      Origin = 'ID_Genero'
      Required = True
    end
    object intgrfldMasterid_classificacao: TIntegerField
      FieldName = 'id_classificacao'
      Origin = 'ID_Classificacao'
      Required = True
    end
    object intgrfldMasterid_tipo: TIntegerField
      FieldName = 'id_tipo'
      Origin = 'ID_Tipo'
      Required = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 193
  end
  object qryGeneros: TFDQuery
    Connection = dm.conMysql
    SQL.Strings = (
      'select id,'
      '       genero'
      'from   generos')
    Left = 288
    Top = 100
    object fdtncfldGenerosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldGenerosgenero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'genero'
      Origin = 'Genero'
      Size = 15
    end
  end
  object dsGeneros: TDataSource
    DataSet = qryGeneros
    Left = 352
    Top = 100
  end
  object qryClassificacao: TFDQuery
    Connection = dm.conMysql
    SQL.Strings = (
      'select id,'
      '       classificacao'
      'from   classificacao')
    Left = 432
    Top = 100
  end
  object dsClassificacao: TDataSource
    DataSet = qryClassificacao
    Left = 504
    Top = 100
  end
  object qryTipo: TFDQuery
    Connection = dm.conMysql
    SQL.Strings = (
      'select id,'
      '       tipo'
      'from tipos')
    Left = 584
    Top = 101
  end
  object dsTipo: TDataSource
    DataSet = qryTipo
    Left = 632
    Top = 104
  end
end
