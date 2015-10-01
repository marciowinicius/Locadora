object frmPrincipal: TfrmPrincipal
  Left = 439
  Top = 219
  Caption = 'Sistema Locadora'
  ClientHeight = 421
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object btnClientes: TSpeedButton
      Left = 0
      Top = 0
      Width = 70
      Height = 41
      Align = alLeft
      Caption = 'Clientes'
      OnClick = btnClientesClick
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 39
    end
    object btnFilmes: TSpeedButton
      Left = 70
      Top = 0
      Width = 70
      Height = 41
      Align = alLeft
      Caption = 'Filmes'
      OnClick = btnFilmesClick
      ExplicitLeft = 51
      ExplicitTop = 1
      ExplicitHeight = 39
    end
    object btnLocacoes: TSpeedButton
      Left = 140
      Top = 0
      Width = 70
      Height = 41
      Align = alLeft
      Caption = 'Loca'#231#245'es'
      ExplicitLeft = 101
      ExplicitTop = 1
      ExplicitHeight = 39
    end
    object btnOutros: TSpeedButton
      Left = 210
      Top = 0
      Width = 70
      Height = 41
      Align = alLeft
      Caption = 'Outros'
      OnClick = btnOutrosClick
      ExplicitLeft = 216
    end
  end
end
