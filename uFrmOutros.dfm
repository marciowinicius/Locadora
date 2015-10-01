object frmOutros: TfrmOutros
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Outros'
  ClientHeight = 356
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 575
    Height = 41
    Align = alTop
    Caption = 'Outros Cadastros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btnGeneros: TButton
    Left = 0
    Top = 40
    Width = 113
    Height = 40
    Caption = 'G'#234'neros'
    TabOrder = 1
    OnClick = btnGenerosClick
  end
  object btnClassificacoes: TButton
    Left = 0
    Top = 80
    Width = 113
    Height = 40
    Caption = 'Classifica'#231#245'es'
    TabOrder = 2
    OnClick = btnClassificacoesClick
  end
  object btnTipos: TButton
    Left = 0
    Top = 120
    Width = 113
    Height = 40
    Caption = 'Tipos'
    TabOrder = 3
    OnClick = btnTiposClick
  end
end
