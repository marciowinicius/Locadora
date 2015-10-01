unit uFrmOutros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uFrmCadGeneros, uFrmCadTipos, uFrmCadClassificacao;

type
  TfrmOutros = class(TForm)
    pnlTopo: TPanel;
    btnGeneros: TButton;
    btnClassificacoes: TButton;
    btnTipos: TButton;
    procedure btnGenerosClick(Sender: TObject);
    procedure btnClassificacoesClick(Sender: TObject);
    procedure btnTiposClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOutros: TfrmOutros;

implementation

{$R *.dfm}

procedure TfrmOutros.btnClassificacoesClick(Sender: TObject);
begin
  if frmCadClassificacao = nil then
  begin
    frmCadClassificacao := TfrmCadClassificacao.Create(self);
  end;
  frmCadClassificacao.BringToFront;
end;

procedure TfrmOutros.btnGenerosClick(Sender: TObject);
begin
  if frmCadGeneros = nil then
  begin
    frmCadGeneros := TfrmCadGeneros.Create(self);
  end;
  frmCadGeneros.BringToFront;
end;

procedure TfrmOutros.btnTiposClick(Sender: TObject);
begin
  if frmCadTipos = nil then
  begin
    frmCadTipos := TfrmCadTipos.Create(self);
  end;
  frmCadTipos.BringToFront;

end;

end.
