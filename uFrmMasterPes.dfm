object frmMasterPes: TfrmMasterPes
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmMasterPes'
  ClientHeight = 240
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 25
    Align = alTop
    Caption = 'PESQUISAR'
    Color = 13750737
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object grdPesquisa: TDBGrid
    Left = 0
    Top = 57
    Width = 463
    Height = 183
    Align = alClient
    DataSource = dsMaster
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = grdPesquisaDblClick
    OnKeyPress = grdPesquisaKeyPress
  end
  object pnlPesquisa: TPanel
    Left = 0
    Top = 25
    Width = 463
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    TabOrder = 2
    object lblPesquisar: TLabel
      Left = 5
      Top = 0
      Width = 56
      Height = 26
      Caption = 'Pesquisar:  '#13#10'[F2]'
    end
    object lblPesCodigo: TLabel
      Left = 67
      Top = 9
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object edtPesCodigo: TEdit
      Left = 110
      Top = 6
      Width = 52
      Height = 21
      MaxLength = 6
      NumbersOnly = True
      TabOrder = 0
    end
  end
  object qryMaster: TFDQuery
    Connection = DM.conMysql
    Left = 176
    Top = 81
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = qryMaster
    Left = 264
    Top = 96
  end
  object actlstPesquisa: TActionList
    Left = 216
    Top = 152
    object actRetornar: TAction
      Caption = 'actRetornar'
      OnExecute = actRetornarExecute
    end
    object actCancelar: TAction
      Caption = 'actCancelar'
      ShortCut = 27
      OnExecute = actCancelarExecute
    end
  end
end
