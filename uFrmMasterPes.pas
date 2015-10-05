unit uFrmMasterPes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, uDM, System.Actions, Vcl.ActnList, uFuncoes;

type
  TfrmMasterPes = class(TForm)
    pnlTitulo: TPanel;
    grdPesquisa: TDBGrid;
    pnlPesquisa: TPanel;
    lblPesquisar: TLabel;
    lblPesCodigo: TLabel;
    edtPesCodigo: TEdit;
    qryMaster: TFDQuery;
    dsMaster: TDataSource;
    actlstPesquisa: TActionList;
    actRetornar: TAction;
    actCancelar: TAction;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure preencheRetorno(id : Integer; texto: string);
    procedure actCancelarExecute(Sender: TObject);
    procedure grdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure grdPesquisaDblClick(Sender: TObject);
    procedure actRetornarExecute(Sender: TObject); virtual;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    id : Integer;
    texto : string;

    { Public declarations }
  end;

var
  frmMasterPes: TfrmMasterPes;

implementation

{$R *.dfm}

procedure TfrmMasterPes.actCancelarExecute(Sender: TObject);
begin
  qryMaster.Close;
  close;
end;

procedure TfrmMasterPes.actRetornarExecute(Sender: TObject);
begin
//retornar
end;

procedure TfrmMasterPes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) and (activeControl <> grdPesquisa)) then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
    Key := #0;
  end;
end;

procedure TfrmMasterPes.FormShow(Sender: TObject);
begin
  centralizarForm(self);
  qryMaster.Open();
  edtPesCodigo.SetFocus;
end;

procedure TfrmMasterPes.grdPesquisaDblClick(Sender: TObject);
begin
  actRetornar.Execute;
end;

procedure TfrmMasterPes.grdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    actRetornar.Execute;
  end;
end;

procedure TfrmMasterPes.preencheRetorno(id : Integer; texto: string);
begin
  self.id := id;
  Self.texto := texto;
end;

end.
