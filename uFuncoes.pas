unit uFuncoes;

interface
  uses vcl.forms;

  procedure centralizarForm (Formulario:Tform);


implementation

procedure centralizarForm (Formulario:TForm);
begin
  Formulario.left := trunc((screen.WorkAreaWidth - Formulario.Width)/2);
  Formulario.Top := trunc((Screen.WorkAreaHeight - Formulario.Height)/2);
end;
end.
