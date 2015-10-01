unit uFrmMasterCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDM, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TfrmMasterCadastro = class(TForm)
    pnlTitulo: TPanel;
    pnlPesquisa: TPanel;
    pnlTopo: TPanel;
    lblPesquisar: TLabel;
    grdPesquisa: TDBGrid;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlBotoes: TPanel;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    qryMaster: TFDQuery;
    dsMaster: TDataSource;
    pnlPes: TPanel;
    btnPesquisar: TButton;
    pnlDados: TPanel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMasterCadastro: TfrmMasterCadastro;

implementation

{$R *.dfm}


procedure TfrmMasterCadastro.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnGravar.Enabled := True;
  btnAlterar.Enabled := False;
  btnCancelar.Enabled := True;
  btnExcluir.Enabled := False;

  qryMaster.Edit;
end;

procedure TfrmMasterCadastro.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnGravar.Enabled := False ;
  btnAlterar.Enabled := True;
  btnCancelar.Enabled := False ;
  btnExcluir.Enabled := True;

  qryMaster.Cancel;
end;

procedure TfrmMasterCadastro.btnExcluirClick(Sender: TObject);
begin
  if qryMaster.RecordCount < 1 then
  begin
    Application.MessageBox('Selecione um registro para excluir.', '', MB_OK +
      MB_ICONWARNING);
    Exit;
  end;
  if Application.MessageBox('Deseja realmente excluir este registro?', '',
    MB_YESNO + MB_ICONQUESTION) = 6 then
  begin
    btnNovo.Enabled := True;
    btnGravar.Enabled := False;
    btnAlterar.Enabled := false;
    btnCancelar.Enabled := false;
    btnExcluir.Enabled := true;
  end
  else
  begin
    Exit;
  end;
  Application.MessageBox('Exclusão realizada com sucesso!', '', MB_OK +
    MB_ICONINFORMATION);

end;

procedure TfrmMasterCadastro.btnGravarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnGravar.Enabled := False;
  btnAlterar.Enabled := True;
  btnCancelar.Enabled := False;
  btnExcluir.Enabled := True;

  qryMaster.Post;
  qryMaster.Refresh;
end;

procedure TfrmMasterCadastro.btnNovoClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnGravar.Enabled := True;
  btnAlterar.Enabled := False;
  btnCancelar.Enabled := True;
  btnExcluir.Enabled := False;

  if qryMaster.State = dsBrowse then
  begin
    qryMaster.Insert;
  end;

end;

procedure TfrmMasterCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmMasterCadastro.FormShow(Sender: TObject);
begin
  if not qryMaster.Active then
  begin
    qryMaster.Open;
  end;
end;

end.
