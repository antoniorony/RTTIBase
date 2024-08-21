unit Rtti.Aula02.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Rtti.Aula02.Model.Pessoa,
  System.Rtti, Rtti.Aula01.View.Calculadora;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
    brnListar: TButton;
    Memo2: TMemo;
    btnListarMetodos: TButton;
    Memo3: TMemo;
    btnListarPropriedades: TButton;
    edtNome: TEdit;
    btnInvocarMetodo: TButton;
    Button1: TButton;
    edtUser: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    chkValidarCampos: TCheckBox;
    Button2: TButton;
    Button3: TButton;
    procedure brnListarClick(Sender: TObject);
    procedure btnListarMetodosClick(Sender: TObject);
    procedure btnListarPropriedadesClick(Sender: TObject);
    procedure btnInvocarMetodoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  protected

  public
    procedure ExibirMensagem;
    procedure ExibirMensagemValidacao(Campo: string);
    procedure ExibirOutraValidacao(Campo: string);
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Rtti.Aula02.Utils.RttiUtils, Rttti.Aula02.Utils.Validacoes;

{$R *.dfm}

procedure TForm3.brnListarClick(Sender: TObject);
begin
  TRttiUtils.ListarFields(Self);
end;

procedure TForm3.btnInvocarMetodoClick(Sender: TObject);
var
  Calculadora: TForm2;
begin
  Calculadora := TForm2.Create(Self);
  try
    TRttiUtils.InvocarMetodo(Calculadora, 'MeuMetodo');
  finally
    Calculadora.Free;
  end;
end;

procedure TForm3.btnListarMetodosClick(Sender: TObject);
begin
  TRttiUtils.ListarMetodos(Self);
end;

procedure TForm3.btnListarPropriedadesClick(Sender: TObject);
begin
  TRttiUtils.ListarPropriedades(Self);
end;

procedure TForm3.Button1Click(Sender: TObject);
var
  lMetodo: string;
begin
  lMetodo := 'ExibirOutraValidacao';

  if chkValidarCampos.Checked then
    lMetodo := 'ExibirMensagemValidacao';

  TRttiUtils.ExecutarMetodoValidacao<TForm3>(Self, lMetodo, [edtSenha, edtUser]);
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  lValidacoes: TUtilsValidacoes;
begin
  lValidacoes := TUtilsValidacoes.Create;
  try
    TRttiUtils.ExecutarMetodos(lValidacoes);
  finally
    lValidacoes.Free;
  end;

end;

procedure TForm3.Button3Click(Sender: TObject);
var
  lValidacoes: TUtilsValidacoes;
begin
  lValidacoes := TUtilsValidacoes.Create;
  try
    lValidacoes.Nome := 'Antonio';
    lValidacoes.CpfCnpj := '08594925000110';
    lValidacoes.Endereco := '';
    lValidacoes.EstadoCivil := 'C';

    TRttiUtils.ValidarPropriedades(lValidacoes);
  finally
    lValidacoes.Free;
  end;

end;

procedure TForm3.ExibirMensagem();
begin
  ShowMessage('Exibindo mensagem...');
end;

procedure TForm3.ExibirMensagemValidacao(Campo: string);
begin
  ShowMessage('O campo ' + Campo + ' está em branco.');
end;

procedure TForm3.ExibirOutraValidacao(Campo: string);
begin
  ShowMessage('Existem capos vazios!');
end;


end.
