object frmMasterCadastro: TfrmMasterCadastro
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmMasterCadastro'
  ClientHeight = 332
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 488
    Height = 169
    Align = alTop
    TabOrder = 0
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 486
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      Caption = 'T'#237'tulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object pnlFechar: TPanel
        Left = 416
        Top = 0
        Width = 70
        Height = 33
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object btnFechar: TSpeedButton
          Left = 0
          Top = -1
          Width = 70
          Height = 22
          Align = alCustom
          Caption = 'Fechar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object pnlPesquisa: TPanel
      Left = 1
      Top = 34
      Width = 486
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblPesquisar: TLabel
        Left = 6
        Top = 3
        Width = 50
        Height = 13
        Caption = 'Pesquisar:'
      end
      object pnlPes: TPanel
        Left = 416
        Top = 0
        Width = 70
        Height = 48
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object btnPesquisar: TButton
          Left = 0
          Top = 6
          Width = 70
          Height = 25
          Align = alCustom
          Caption = 'Pesquisar'
          TabOrder = 0
        end
      end
    end
    object grdPesquisa: TDBGrid
      Left = 1
      Top = 82
      Width = 486
      Height = 87
      Align = alTop
      DataSource = dsMaster
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 169
    Width = 488
    Height = 40
    Align = alTop
    TabOrder = 1
    object btnNovo: TSpeedButton
      Left = 1
      Top = 1
      Width = 57
      Height = 38
      Align = alLeft
      Caption = '&Novo'
      OnClick = btnNovoClick
      ExplicitLeft = -5
      ExplicitTop = 6
    end
    object btnAlterar: TSpeedButton
      Left = 58
      Top = 1
      Width = 57
      Height = 38
      Align = alLeft
      Caption = '&Alterar'
      OnClick = btnAlterarClick
      ExplicitLeft = 36
      ExplicitTop = 6
      ExplicitHeight = 39
    end
    object btnExcluir: TSpeedButton
      Left = 229
      Top = 1
      Width = 57
      Height = 38
      Align = alLeft
      Caption = '&Excluir'
      OnClick = btnExcluirClick
      ExplicitLeft = 35
      ExplicitHeight = 39
    end
    object btnGravar: TSpeedButton
      Left = 115
      Top = 1
      Width = 57
      Height = 38
      Align = alLeft
      Caption = '&Gravar'
      Enabled = False
      OnClick = btnGravarClick
      ExplicitLeft = 84
      ExplicitHeight = 39
    end
    object btnCancelar: TSpeedButton
      Left = 172
      Top = 1
      Width = 57
      Height = 38
      Align = alLeft
      Caption = '&Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
      ExplicitLeft = 166
      ExplicitTop = 6
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 209
    Width = 488
    Height = 123
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
  end
  object qryMaster: TFDQuery
    Connection = dm.conMysql
    Left = 217
    Top = 98
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = qryMaster
    Left = 289
    Top = 98
  end
end
