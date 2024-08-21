unit Rttti.Aula02.Utils.Validacoes;

interface

uses
  System.SysUtils, System.Generics.Collections, 
  AtributoExecutar, 
  AtributoNotNull;

type
  TUtilsValidacoes = class
    private
      FNome: string;
      FCpfCnpj: string;
      FEndereco: string;
      FEstadoCivil: string;
      function GetNome(): string;
      function GetCpfCnpj(): string;
      function GetEndereco(): string;
      function GetEstadoCivil(): string;
      procedure SetNome(Value: string);
      procedure SetCpfCnpj(Value: string);
      procedure SetEndereco(Value: string);
      procedure SetEstadoCivil(Value: string);
    public
      [EAtributoExecutar(True)]
      procedure ExibirMensagemWeekly();

      [EAtributoExecutar(True)]
      procedure ExibirMensagemOlaMundo();
      
      [EAtributoExecutar(False)]
      procedure ExibirMensagemCalculo();

      [EAtributoNotNull(True)]
      property Nome: string read GetNome write SetNome;

      [EAtributoNotNull(True)]
      property CpfCnpj: string read GetCpfCnpj write SetCpfCnpj;

      [EAtributoNotNull(False)]
      property Endereco: string read GetEndereco write SetEndereco;
      
      [EAtributoNotNull(False)]
      property EstadoCivil: string read GetEstadoCivil write SetEstadoCivil;
  end;

implementation

uses
  Vcl.Dialogs;

{ TUtilsValidacoes }

procedure TUtilsValidacoes.ExibirMensagemCalculo;
var
  lV1, lV2: Double;
begin
  lV1 := 25;
  lV2 := 35;
  ShowMessage((lV1 + lV2).ToString);
end;

procedure TUtilsValidacoes.ExibirMensagemOlaMundo;
begin
  ShowMessage('Ola Mundo!');
end;

procedure TUtilsValidacoes.ExibirMensagemWeekly;
begin
  ShowMessage('Mensagem para weekly');
end;

function TUtilsValidacoes.GetCpfCnpj: string;
begin
  Result := FCpfCnpj;
end;

function TUtilsValidacoes.GetEndereco: string;
begin
  Result := FEndereco;
end;

function TUtilsValidacoes.GetEstadoCivil: string;
begin
  Result := FEstadoCivil;
end;

function TUtilsValidacoes.GetNome: string;
begin
  Result := FNome;
end;

procedure TUtilsValidacoes.SetCpfCnpj(Value: string);
begin
  FCpfCnpj := Value;
end;

procedure TUtilsValidacoes.SetEndereco(Value: string);
begin
  FEndereco := Value;
end;

procedure TUtilsValidacoes.SetEstadoCivil(Value: string);
begin
  FEstadoCivil := Value;
end;

procedure TUtilsValidacoes.SetNome(Value: string);
begin
  FNome := Value;
end;

end.
