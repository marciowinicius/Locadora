unit uFrmCadGeneros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterCadastro, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmCadGeneros = class(TfrmMasterCadastro)
    lblCodigo: TLabel;
    fdtncfldMasterID: TFDAutoIncField;
    strngfldMasterGenero: TStringField;
    lblGenero: TLabel;
    edtGenero: TDBEdit;
    lblPesCodigo: TLabel;
    edtPesCodigo: TEdit;
    lblPesGenero: TLabel;
    edtPesGenero: TEdit;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadGeneros: TfrmCadGeneros;

implementation

{$R *.dfm}

procedure TfrmCadGeneros.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edtGenero.SetFocus;
end;

procedure TfrmCadGeneros.btnFecharClick(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmCadGeneros);
  Close;
end;

procedure TfrmCadGeneros.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtGenero.setFocus;
end;

procedure TfrmCadGeneros.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  if qryMaster.State in [dsInsert, dsEdit] then
    begin
      qryMaster.Cancel;
    end;
    qryMaster.Close;

    qryMaster.SQL.Clear;
    qryMaster.SQL.Add('select id, genero from generos');
    qryMaster.SQL.Add('Where 1=1');

  if edtPesCodigo.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and id = '+edtPesCodigo.Text);
  end
  else
  if edtPesGenero.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and genero like '+quotedStr('%'+ edtPesGenero.text +'%'));
  end;

  edtPesGenero.Clear;
  edtPesCodigo.Clear;
  qryMaster.Open;

end;

end.
