unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFuncoes, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, uFrmOutros, uFrmCadClassificacao, uFrmCadTipos, uFrmCadCliente,uFrmCadFilmes;

type
  TfrmPrincipal = class(TForm)
    pnlMenu: TPanel;
    btnClientes: TSpeedButton;
    btnFilmes: TSpeedButton;
    btnLocacoes: TSpeedButton;
    btnOutros: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btnOutrosClick(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure btnClientesClick(Sender: TObject);
    procedure btnFilmesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uFrmCadGeneros;

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin
  if frmCadCliente = nil then
  begin
    FrmCadCliente := TFrmCadCliente.Create(Self);
  end;
  FrmCadCliente.BringToFront;
end;

procedure TfrmPrincipal.btnFilmesClick(Sender: TObject);
begin
if FrmCadFilmes = nil then
  begin
    FrmCadFilmes := TFrmCadFilmes.Create(Self);
  end;
  FrmCadFilmes.BringToFront;
end;

procedure TfrmPrincipal.btnOutrosClick(Sender: TObject);
begin
  if frmOutros = nil then
  begin
    frmOutros := TfrmOutros.Create(Self);
  end;
  frmOutros.BringToFront;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  centralizarForm (self);
end;

procedure TfrmPrincipal.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
var
  i: SmallInt;
begin
if Msg.message = WM_MOUSEWHEEL then
  begin
    Msg.message := WM_KEYDOWN;
    Msg.lParam := 0;
    i := HiWord(Msg.wParam) ;
    if i > 0 then
      Msg.wParam := VK_UP
    else
      Msg.wParam := VK_DOWN;
      Handled := False;
  end;
end;

end.
