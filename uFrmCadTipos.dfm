inherited frmCadTipos: TfrmCadTipos
  Caption = 'Cadastro Tipos'
  ClientHeight = 342
  ClientWidth = 498
  ExplicitWidth = 514
  ExplicitHeight = 381
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    Width = 498
    ExplicitWidth = 498
    inherited pnlTitulo: TPanel
      Width = 496
      Caption = 'Tipos'
      ExplicitWidth = 496
      inherited pnlFechar: TPanel
        Left = 426
        ExplicitLeft = 426
        inherited btnFechar: TSpeedButton
          OnClick = btnFecharClick
        end
      end
    end
    inherited pnlPesquisa: TPanel
      Width = 496
      ExplicitWidth = 496
      object lblPesCodigo: TLabel [1]
        Left = 6
        Top = 24
        Width = 40
        Height = 13
        Caption = 'C'#243'digo :'
      end
      object lblPesTipo: TLabel [2]
        Left = 168
        Top = 24
        Width = 27
        Height = 13
        Caption = 'Tipo :'
      end
      inherited pnlPes: TPanel
        Left = 426
        TabOrder = 2
        ExplicitLeft = 426
        inherited btnPesquisar: TButton
          OnClick = btnPesquisarClick
        end
      end
      object edtPesCodigo: TEdit
        Left = 52
        Top = 22
        Width = 93
        Height = 21
        MaxLength = 6
        NumbersOnly = True
        TabOrder = 0
      end
      object edtPesTipos: TEdit
        Left = 200
        Top = 21
        Width = 137
        Height = 21
        MaxLength = 50
        TabOrder = 1
      end
    end
    inherited grdPesquisa: TDBGrid
      Width = 496
    end
  end
  inherited pnlBotoes: TPanel
    Width = 498
    ExplicitWidth = 498
  end
  inherited pnlDados: TPanel
    Width = 498
    Height = 133
    ExplicitWidth = 498
    ExplicitHeight = 133
    object lblCodigo: TLabel
      Left = 7
      Top = 24
      Width = 40
      Height = 13
      Caption = 'C'#243'digo :'
    end
    object lblTipo: TLabel
      Left = 7
      Top = 51
      Width = 27
      Height = 13
      Caption = 'Tipo :'
    end
    object lblValorPadrao: TLabel
      Left = 6
      Top = 78
      Width = 84
      Height = 13
      Caption = 'Valor Padr'#227'o R$ :'
    end
    object edtCodigo: TDBEdit
      Left = 96
      Top = 21
      Width = 100
      Height = 21
      DataField = 'id'
      DataSource = dsMaster
      MaxLength = 6
      ReadOnly = True
      TabOrder = 0
    end
    object edtTipo: TDBEdit
      Left = 96
      Top = 48
      Width = 156
      Height = 21
      DataField = 'tipo'
      DataSource = dsMaster
      TabOrder = 1
    end
    object edtValorPadrao: TDBEdit
      Left = 96
      Top = 75
      Width = 100
      Height = 21
      DataField = 'Valor_Padrao'
      DataSource = dsMaster
      TabOrder = 2
    end
  end
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'select id, tipo, Valor_Padrao from tipos')
    object fdtncfldMasterid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldMastertipo: TStringField
      FieldName = 'tipo'
      Origin = 'Tipo'
      Required = True
      Size = 50
    end
    object snglfldMasterValor_Padrao: TSingleField
      FieldName = 'Valor_Padrao'
      Origin = 'Valor_Padrao'
      Required = True
    end
  end
end
