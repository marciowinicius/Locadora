unit uFrmCadClassificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterCadastro, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadClassificacao = class(TfrmMasterCadastro)
    lblCodigo: TLabel;
    lblClassificacao: TLabel;
    lblIdadeMinima: TLabel;
    edtCodigo: TDBEdit;
    edtClassificacao: TDBEdit;
    fdtncfldMasterid: TFDAutoIncField;
    strngfldMasterClassificacao: TStringField;
    intgrfldMasterIdade_Minima: TIntegerField;
    edtIdadeMinima: TDBEdit;
    lblPesCodigo: TLabel;
    edtPesCodigo: TEdit;
    lblPesClassificacao: TLabel;
    edtPesClassificacao: TEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadClassificacao: TfrmCadClassificacao;

implementation

{$R *.dfm}

procedure TfrmCadClassificacao.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edtClassificacao.SetFocus;
end;

procedure TfrmCadClassificacao.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmCadClassificacao);
  Close;
end;

procedure TfrmCadClassificacao.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtClassificacao.SetFocus;
end;

procedure TfrmCadClassificacao.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  if qryMaster.State in [dsInsert, dsEdit] then
    begin
      qryMaster.Cancel;
    end;
    qryMaster.Close;

    qryMaster.SQL.Clear;
    qryMaster.SQL.Add('select id, Classificacao, Idade_Minima from classificacao');
    qryMaster.SQL.Add('Where 1=1');

  if edtPesCodigo.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and id = '+edtPesCodigo.Text);
  end
  else
  if edtPesClassificacao.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and classificacao like '+quotedStr('%'+ edtPesClassificacao.text +'%'));
  end;

  edtPesClassificacao.Clear;
  edtPesCodigo.Clear;
  qryMaster.Open;
end;

end.
