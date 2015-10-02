unit uFrmCadFilmes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterCadastro, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, uDM;

type
  TfrmCadFilmes = class(TfrmMasterCadastro)
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblIdClassificacao: TLabel;
    lblIdGenero: TLabel;
    lblNumCopias: TLabel;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtNumCopias: TDBEdit;
    fdtncfldMasterID: TFDAutoIncField;
    strngfldMasterNome: TStringField;
    strngfldMasterClassificacao: TStringField;
    strngfldMasterGenero: TStringField;
    strngfldMasterTipo: TStringField;
    intgrfldMasterNum_Copias: TIntegerField;
    dtfldMasterData_Lancamento: TDateField;
    lblPesCodigo: TLabel;
    edtPesCodigo: TEdit;
    lblPesNome: TLabel;
    edtPesNome: TEdit;
    intgrfldMasterid_genero: TIntegerField;
    intgrfldMasterid_classificacao: TIntegerField;
    intgrfldMasterid_tipo: TIntegerField;
    lcbGenero: TDBLookupComboBox;
    qryGeneros: TFDQuery;
    dsGeneros: TDataSource;
    fdtncfldGenerosid: TFDAutoIncField;
    strngfldGenerosgenero: TStringField;
    edtDataLancamento: TDBEdit;
    lblDataLancamento: TLabel;
    lblTipo: TLabel;
    lcbClassificacao: TDBLookupComboBox;
    qryClassificacao: TFDQuery;
    dsClassificacao: TDataSource;
    lcbTipo: TDBLookupComboBox;
    qryTipo: TFDQuery;
    dsTipo: TDataSource;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFilmes: TfrmCadFilmes;

implementation

{$R *.dfm}

procedure TfrmCadFilmes.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
  lcbGenero.Enabled := True;
  lcbClassificacao.Enabled := True;
  lcbTipo.Enabled := True;
end;

procedure TfrmCadFilmes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  lcbGenero.Enabled := False;
  lcbClassificacao.Enabled := False;
  lcbTipo.Enabled := False;
end;

procedure TfrmCadFilmes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  lcbGenero.Enabled := False;
  lcbClassificacao.Enabled := False;
  lcbTipo.Enabled := False;
end;

procedure TfrmCadFilmes.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmCadFilmes);
  Close;
end;

procedure TfrmCadFilmes.btnGravarClick(Sender: TObject);
begin
  inherited;
  lcbGenero.Enabled := False;
  lcbClassificacao.Enabled := False;
  lcbTipo.Enabled := False;
end;

procedure TfrmCadFilmes.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
  lcbGenero.Enabled := True;
  lcbClassificacao.Enabled := True;
  lcbTipo.Enabled := True;
end;

procedure TfrmCadFilmes.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  if qryMaster.State in [dsInsert, dsEdit] then
    begin
      qryMaster.Cancel;
    end;
    qryMaster.Close;

    qryMaster.SQL.Clear;
    qryMaster.SQL.Add('select F.ID,');
    qryMaster.SQL.Add('F.Nome,');
    qryMaster.SQL.Add('F.Num_Copias, ');
    qryMaster.SQL.Add('F.Data_Lancamento, ');
    qryMaster.SQL.Add('F.id_genero,');
    qryMaster.SQL.Add('F.id_tipo,');
    qryMaster.SQL.Add('F.id_classificacao,');
    qryMaster.SQL.Add('C.Classificacao, ');
    qryMaster.SQL.Add('G.Genero,');
    qryMaster.SQL.Add('T.Tipo ');
    qryMaster.SQL.Add('from filmes F, ');
    qryMaster.SQL.Add('classificacao C, ');
    qryMaster.SQL.Add('generos G, ');
    qryMaster.SQL.Add('tipos T ');
    qryMaster.SQL.Add('where F.ID_classificacao = C.ID');
    qryMaster.SQL.Add('and F.ID_Genero = G.ID');
    qryMaster.SQL.Add('and F.ID_tipo = T.ID');

  if edtPesCodigo.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and F.id = '+edtPesCodigo.Text);
  end
  else
  if edtPesNome.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and F.Nome like '+quotedStr('%'+ edtPesNome.text +'%'));
  end;

  edtPesNome.Clear;
  edtPesCodigo.Clear;
  qryMaster.Open;
end;

procedure TfrmCadFilmes.FormShow(Sender: TObject);
begin
  inherited;
  qryGeneros.Open;
  qryClassificacao.Open;
  qryTipo.Open;
end;

end.
