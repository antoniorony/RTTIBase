program rttiAula01;

uses
  Vcl.Forms,
  Rtti.Aula01.View.Principal in 'view\Rtti.Aula01.View.Principal.pas' {Form1},
  Rtti.Aula01.View.Calculadora in 'view\Rtti.Aula01.View.Calculadora.pas' {Form2},
  Rtti.Aula02.View.Principal in 'view\Rtti.Aula02.View.Principal.pas' {Form3},
  Rtti.Aula02.Model.Pessoa in 'model\Rtti.Aula02.Model.Pessoa.pas',
  Rtti.Aula02.Utils.RttiUtils in 'utils\Rtti.Aula02.Utils.RttiUtils.pas',
  Rttti.Aula02.Utils.Validacoes in 'utils\Rttti.Aula02.Utils.Validacoes.pas',
  AtributoExecutar in 'utils\atributos\AtributoExecutar.pas',
  AtributoNotNull in 'utils\atributos\AtributoNotNull.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  ReportMemoryLeaksOnShutdown := True;
  Application.Run;
end.
