unit uFrmCadTipos;

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
  TfrmCadTipos = class(TfrmMasterCadastro)
    lblCodigo: TLabel;
    lblTipo: TLabel;
    lblValorPadrao: TLabel;
    edtCodigo: TDBEdit;
    edtTipo: TDBEdit;
    edtValorPadrao: TDBEdit;
    lblPesCodigo: TLabel;
    edtPesCodigo: TEdit;
    lblPesTipo: TLabel;
    edtPesTipos: TEdit;
    fdtncfldMasterid: TFDAutoIncField;
    strngfldMastertipo: TStringField;
    snglfldMasterValor_Padrao: TSingleField;
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
  frmCadTipos: TfrmCadTipos;

implementation

{$R *.dfm}

procedure TfrmCadTipos.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edtTipo.SetFocus;
end;

procedure TfrmCadTipos.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmCadTipos);
  Close;
end;

procedure TfrmCadTipos.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtTipo.SetFocus;
end;

procedure TfrmCadTipos.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  if qryMaster.State in [dsInsert, dsEdit] then
    begin
      qryMaster.Cancel;
    end;
    qryMaster.Close;

    qryMaster.SQL.Clear;
    qryMaster.SQL.Add('select id, tipo, Valor_Padrao from tipos');
    qryMaster.SQL.Add('Where 1=1');

  if edtPesCodigo.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and id = '+edtPesCodigo.Text);
  end
  else
  if edtPesTipos.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and tipo like '+quotedStr('%'+ edtPesTipos.text +'%'));
  end;

  edtPesTipos.Clear;
  edtPesCodigo.Clear;
  qryMaster.Open;
end;

end.
