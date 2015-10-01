unit uFrmCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterCadastro, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadCliente = class(TfrmMasterCadastro)
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblCPF: TLabel;
    lblDataNascimento: TLabel;
    lblEndereco: TLabel;
    lblIdTitular: TLabel;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtCPF: TDBEdit;
    edtDataNascimento: TDBEdit;
    edtEndereco: TDBEdit;
    edtCodTitular: TDBEdit;
    fdtncfldMasterid: TFDAutoIncField;
    strngfldMasterNome: TStringField;
    strngfldMasterCPF: TStringField;
    dtfldMasterData_Nascimento: TDateField;
    strngfldMasterEndereço: TStringField;
    intgrfldMasterID_Titular: TIntegerField;
    lblPesCodigo: TLabel;
    lblPesNome: TLabel;
    edtPesCodigo: TEdit;
    edtPesNome: TEdit;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}


procedure TfrmCadCliente.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmCadCliente.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmCadCliente);
  Close;
end;

procedure TfrmCadCliente.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmCadCliente.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  if qryMaster.State in [dsInsert, dsEdit] then
    begin
      qryMaster.Cancel;
    end;
    qryMaster.Close;

    qryMaster.SQL.Clear;
    qryMaster.SQL.Add('select id, Nome, CPF, Data_Nascimento, Endereço, ID_Titular from cliente');
    qryMaster.SQL.Add('Where 1=1');

  if edtPesCodigo.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and id = '+edtPesCodigo.Text);
  end
  else
  if edtPesNome.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and cliente like '+quotedStr('%'+ edtPesNome.text +'%'));
  end;

  edtPesNome.Clear;
  edtPesCodigo.Clear;
  qryMaster.Open;
end;

end.
