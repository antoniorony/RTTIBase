program rttiAula01;

uses
  Vcl.Forms,
  Rtti.Aula01.View.Principal in 'view\Rtti.Aula01.View.Principal.pas' {Form1},
  Rtti.Aula01.View.Calculadora in 'view\Rtti.Aula01.View.Calculadora.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  ReportMemoryLeaksOnShutdown := True;
  Application.Run;
end.
