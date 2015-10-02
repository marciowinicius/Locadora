inherited frmCadCliente: TfrmCadCliente
  Caption = 'Cadastro Cliente'
  ClientHeight = 468
  ClientWidth = 556
  ExplicitWidth = 572
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    Width = 556
    ExplicitWidth = 556
    inherited pnlTitulo: TPanel
      Width = 554
      Caption = 'Cadastro Clientes'
      ExplicitWidth = 554
      inherited pnlFechar: TPanel
        Left = 484
        ExplicitLeft = 484
        inherited btnFechar: TSpeedButton
          Top = 5
          ExplicitTop = 5
        end
      end
    end
    inherited pnlPesquisa: TPanel
      Width = 554
      ExplicitWidth = 554
      object lblPesCodigo: TLabel [1]
        Left = 6
        Top = 22
        Width = 40
        Height = 13
        Caption = 'C'#243'digo :'
      end
      object lblPesNome: TLabel [2]
        Left = 152
        Top = 22
        Width = 34
        Height = 13
        Caption = 'Nome :'
      end
      inherited pnlPes: TPanel
        Left = 484
        TabOrder = 2
        ExplicitLeft = 484
        inherited btnPesquisar: TButton
          OnClick = btnPesquisarClick
        end
      end
      object edtPesCodigo: TEdit
        Left = 52
        Top = 19
        Width = 94
        Height = 21
        TabOrder = 0
      end
      object edtPesNome: TEdit
        Left = 192
        Top = 19
        Width = 121
        Height = 21
        TabOrder = 1
      end
    end
    inherited grdPesquisa: TDBGrid
      Width = 554
    end
  end
  inherited pnlBotoes: TPanel
    Width = 556
    ExplicitWidth = 556
    inherited btnNovo: TSpeedButton
      ExplicitTop = -4
    end
  end
  inherited pnlDados: TPanel
    Width = 556
    Height = 259
    ExplicitWidth = 556
    ExplicitHeight = 259
    object lblCodigo: TLabel
      Left = 7
      Top = 16
      Width = 40
      Height = 13
      Caption = 'C'#243'digo :'
    end
    object lblNome: TLabel
      Left = 7
      Top = 42
      Width = 34
      Height = 13
      Caption = 'Nome :'
    end
    object lblCPF: TLabel
      Left = 7
      Top = 65
      Width = 26
      Height = 13
      Caption = 'CPF :'
    end
    object lblDataNascimento: TLabel
      Left = 7
      Top = 90
      Width = 103
      Height = 13
      Caption = 'Data de Nascimento :'
    end
    object lblEndereco: TLabel
      Left = 7
      Top = 116
      Width = 52
      Height = 13
      Caption = 'Endere'#231'o :'
    end
    object lblIdTitular: TLabel
      Left = 7
      Top = 142
      Width = 37
      Height = 13
      Caption = 'Titular :'
    end
    object lblMsg: TLabel
      Left = 266
      Top = 142
      Width = 163
      Height = 13
      Caption = '(Pressione '#39'Delete'#39' para remover) '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtCodigo: TDBEdit
      Left = 115
      Top = 13
      Width = 121
      Height = 21
      DataField = 'id'
      DataSource = dsMaster
      MaxLength = 6
      ReadOnly = True
      TabOrder = 0
    end
    object edtNome: TDBEdit
      Left = 115
      Top = 37
      Width = 198
      Height = 21
      DataField = 'Nome'
      DataSource = dsMaster
      TabOrder = 1
    end
    object edtCPF: TDBEdit
      Left = 115
      Top = 63
      Width = 121
      Height = 21
      DataField = 'CPF'
      DataSource = dsMaster
      TabOrder = 2
    end
    object edtDataNascimento: TDBEdit
      Left = 116
      Top = 87
      Width = 121
      Height = 21
      DataField = 'Data_Nascimento'
      DataSource = dsMaster
      TabOrder = 3
    end
    object edtEndereco: TDBEdit
      Left = 115
      Top = 113
      Width = 326
      Height = 21
      DataField = 'Endere'#231'o'
      DataSource = dsMaster
      TabOrder = 4
    end
    object lcbTitular: TDBLookupComboBox
      Left = 115
      Top = 140
      Width = 145
      Height = 21
      DataField = 'ID_Titular'
      DataSource = dsMaster
      Enabled = False
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dsTitular
      NullValueKey = 46
      TabOrder = 5
    end
  end
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'select id, Nome, CPF, Data_Nascimento, Endere'#231'o,'
      'ID_Titular from cliente')
    object fdtncfldMasterid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldMasterNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 50
    end
    object strngfldMasterCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object dtfldMasterData_Nascimento: TDateField
      FieldName = 'Data_Nascimento'
      Origin = 'Data_Nascimento'
      Required = True
    end
    object strngfldMasterEndereço: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Endere'#231'o'
      Origin = '`Endere'#231'o`'
      Size = 200
    end
    object intgrfldMasterID_Titular: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Titular'
      Origin = 'ID_Titular'
    end
  end
  object qryTitular: TFDQuery
    Connection = dm.conMysql
    SQL.Strings = (
      'select id, nome from cliente where id_titular is null')
    Left = 400
    Top = 96
  end
  object dsTitular: TDataSource
    DataSet = qryTitular
    Left = 448
    Top = 96
  end
end
