program prjLocadora;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFuncoes in 'uFuncoes.pas',
  uFrmOutros in 'uFrmOutros.pas' {frmOutros},
  uFrmMasterCadastro in 'uFrmMasterCadastro.pas' {frmMasterCadastro},
  uDM in 'uDM.pas' {dm: TDataModule},
  uFrmCadGeneros in 'uFrmCadGeneros.pas' {frmCadGeneros},
  uFrmCadClassificacao in 'uFrmCadClassificacao.pas' {frmCadClassificacao},
  uFrmCadTipos in 'uFrmCadTipos.pas' {frmCadTipos},
  uFrmCadCliente in 'uFrmCadCliente.pas' {frmCadCliente},
  uFrmCadFilmes in 'uFrmCadFilmes.pas' {frmCadFilmes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
