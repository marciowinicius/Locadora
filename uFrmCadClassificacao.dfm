inherited frmCadClassificacao: TfrmCadClassificacao
  Caption = 'Cadastro Classifica'#231#245'es'
  ClientHeight = 372
  ClientWidth = 490
  ExplicitWidth = 506
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    Width = 490
    ExplicitWidth = 490
    inherited pnlTitulo: TPanel
      Width = 488
      Caption = 'Classifica'#231#245'es'
      ExplicitWidth = 488
      inherited pnlFechar: TPanel
        Left = 418
        ExplicitLeft = 418
        inherited btnFechar: TSpeedButton
          OnClick = btnFecharClick
        end
      end
    end
    inherited pnlPesquisa: TPanel
      Width = 488
      ExplicitWidth = 488
      object lblPesCodigo: TLabel [1]
        Left = 6
        Top = 22
        Width = 40
        Height = 13
        Caption = 'C'#243'digo :'
      end
      object lblPesClassificacao: TLabel [2]
        Left = 171
        Top = 22
        Width = 68
        Height = 13
        Caption = 'Classifica'#231#227'o :'
      end
      inherited pnlPes: TPanel
        Left = 418
        TabOrder = 2
        ExplicitLeft = 418
        inherited btnPesquisar: TButton
          OnClick = btnPesquisarClick
        end
      end
      object edtPesCodigo: TEdit
        Left = 52
        Top = 19
        Width = 90
        Height = 21
        MaxLength = 6
        NumbersOnly = True
        TabOrder = 0
      end
      object edtPesClassificacao: TEdit
        Left = 248
        Top = 19
        Width = 121
        Height = 21
        TabOrder = 1
      end
    end
    inherited grdPesquisa: TDBGrid
      Width = 488
    end
  end
  inherited pnlBotoes: TPanel
    Width = 490
    ExplicitWidth = 490
  end
  inherited pnlDados: TPanel
    Width = 490
    Height = 163
    ExplicitWidth = 490
    ExplicitHeight = 163
    object lblCodigo: TLabel
      Left = 7
      Top = 16
      Width = 40
      Height = 13
      Caption = 'C'#243'digo :'
    end
    object lblClassificacao: TLabel
      Left = 7
      Top = 43
      Width = 68
      Height = 13
      Caption = 'Classifica'#231#227'o :'
    end
    object lblIdadeMinima: TLabel
      Left = 7
      Top = 72
      Width = 70
      Height = 13
      Caption = 'Idade m'#237'nima :'
    end
    object edtCodigo: TDBEdit
      Left = 83
      Top = 13
      Width = 90
      Height = 21
      DataField = 'id'
      DataSource = dsMaster
      MaxLength = 6
      ReadOnly = True
      TabOrder = 0
    end
    object edtClassificacao: TDBEdit
      Left = 83
      Top = 40
      Width = 203
      Height = 21
      DataField = 'Classificacao'
      DataSource = dsMaster
      TabOrder = 1
    end
    object edtIdadeMinima: TDBEdit
      Left = 83
      Top = 67
      Width = 203
      Height = 21
      DataField = 'Idade_Minima'
      DataSource = dsMaster
      MaxLength = 11
      TabOrder = 2
    end
  end
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'select id, Classificacao, Idade_Minima from classificacao')
    object fdtncfldMasterid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldMasterClassificacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Classificacao'
      Origin = 'Classificacao'
      Size = 50
    end
    object intgrfldMasterIdade_Minima: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Idade_Minima'
      Origin = 'Idade_Minima'
    end
  end
end
