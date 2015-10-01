inherited frmCadGeneros: TfrmCadGeneros
  Caption = 'Cadastro Generos'
  ClientHeight = 323
  ClientWidth = 553
  ExplicitWidth = 569
  ExplicitHeight = 362
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    Width = 553
    ExplicitWidth = 553
    inherited pnlTitulo: TPanel
      Width = 551
      Caption = 'G'#234'neros'
      ExplicitWidth = 551
      inherited pnlFechar: TPanel
        Left = 481
        ExplicitLeft = 481
        inherited btnFechar: TSpeedButton
          OnClick = btnFecharClick
        end
      end
    end
    inherited pnlPesquisa: TPanel
      Width = 551
      ExplicitWidth = 551
      object lblPesCodigo: TLabel [1]
        Left = 7
        Top = 22
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object lblPesGenero: TLabel [2]
        Left = 139
        Top = 22
        Width = 39
        Height = 13
        Caption = 'G'#234'nero:'
      end
      inherited pnlPes: TPanel
        Left = 481
        TabOrder = 2
        ExplicitLeft = 481
        inherited btnPesquisar: TButton
          OnClick = btnPesquisarClick
        end
      end
      object edtPesCodigo: TEdit
        Left = 50
        Top = 19
        Width = 64
        Height = 21
        MaxLength = 6
        NumbersOnly = True
        TabOrder = 0
      end
      object edtPesGenero: TEdit
        Left = 184
        Top = 19
        Width = 129
        Height = 21
        MaxLength = 15
        TabOrder = 1
      end
    end
    inherited grdPesquisa: TDBGrid
      Width = 551
    end
  end
  inherited pnlBotoes: TPanel
    Width = 553
    ExplicitWidth = 553
  end
  inherited pnlDados: TPanel
    Width = 553
    Height = 114
    ExplicitWidth = 553
    ExplicitHeight = 114
    object lblCodigo: TLabel
      Left = 8
      Top = 12
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lblGenero: TLabel
      Left = 8
      Top = 44
      Width = 39
      Height = 13
      Caption = 'G'#234'nero:'
    end
    object TDBEdit
      Left = 51
      Top = 6
      Width = 64
      Height = 21
      DataField = 'ID'
      DataSource = dsMaster
      ReadOnly = True
      TabOrder = 0
    end
    object edtGenero: TDBEdit
      Left = 51
      Top = 41
      Width = 119
      Height = 21
      DataField = 'Genero'
      DataSource = dsMaster
      TabOrder = 1
    end
  end
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'select id, genero from generos')
    object fdtncfldMasterID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ReadOnly = True
    end
    object strngfldMasterGenero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Genero'
      Origin = 'Genero'
      Size = 15
    end
  end
end
