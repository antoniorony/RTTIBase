unit Rtti.Aula02.Utils.RttiUtils;

interface
uses
  System.Rtti,
  System.Classes,
  System.SysUtils,
  System.Variants,
  System.Generics.Collections,
  Vcl.StdCtrls, Rtti.Aula02.View.Principal;

type
  TRttiUtils = class
    private
    public
      class procedure ExecutarMetodoValidacao<T: class>(Sender: T;
        pMetodo: string; pParametro: Array of TComponent);
      class procedure ExecutarMetodos(Sender: TObject); static;
      class procedure ValidarPropriedades(Sender: TObject); static;
      class procedure ListarFields(Sender: TObject); static;
      class procedure ListarMetodos(Sender: TObject); static;
      class procedure ListarPropriedades(Sender: TObject); static;
      class procedure InvocarMetodo(Sender: TObject; NomeDoMetodo: string); static;
  end;

implementation

uses
  AtributoExecutar,
  AtributoNotNull, Vcl.Dialogs;

{ TRttiUtils }

class procedure TRttiUtils.ExecutarMetodoValidacao<T>(Sender: T; pMetodo: string;
  pParametro: Array of TComponent);
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Metodo: TRttiMethod;
  I: Integer;
begin
  Contexto := TRttiContext.Create;
  try
    Tipo := Contexto.GetType(Sender.ClassType);

    Metodo := Tipo.GetMethod(pMetodo);

    for I := 0 to Pred(Length(pParametro)) do
      if (pParametro[I] is TEdit) and
         (string(TEdit(pParametro[I]).Text).isEmpty) then
        Metodo.Invoke(Sender, [TEdit(pParametro[I]).Name]);
    //Metodo.GetParameters Ler os parâmetros do método
  finally
    Contexto.Free;
  end;

end;

class procedure TRttiUtils.InvocarMetodo(Sender: TObject; NomeDoMetodo: string);
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Metodo: TRttiMethod;
begin
  Contexto := TRttiContext.Create;
  try
    Tipo := Contexto.GetType(Sender.ClassInfo);
    Metodo := Tipo.GetMethod(NomeDoMetodo);
    Metodo.Invoke(Sender, [Sender]);
  finally
    Contexto.Free;
  end;
end;

class procedure TRttiUtils.ListarFields(Sender: TObject);
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Field: TRttiField;
  Componente: TComponent;
  Valor, ValorEdit: TValue;
  I: Integer;
begin
  Contexto := TRttiContext.Create;
  try
    Tipo := Contexto.GetType(Sender.ClassType);

    Field := Tipo.GetField('Memo1');
    Valor := Field.GetValue(Sender);

    for Field in Tipo.GetFields do
      begin
        if (Valor.IsObject) and (Valor.AsObject is TMemo) then
          TMemo(Valor.AsObject).Lines.Add(Field.Name);

        if Field.Name = 'edtNome' then
          begin
            ValorEdit := Field.GetValue(Sender);

            if ValorEdit.IsObject and (ValorEdit.AsObject is TEdit) then
              ShowMessage(TEdit(ValorEdit.AsObject).Text);
          end;
      end;
  finally
    Contexto.Free;
  end;
end;

class procedure TRttiUtils.ListarMetodos(Sender: TObject);
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Metodo: TRttiMethod;
  Field: TRttiField;
  Value: TValue;
begin
  Contexto := TRttiContext.Create;
  try
    Tipo := Contexto.GetType(Sender.ClassInfo);
    Field := Tipo.GetField('Memo2');
    Value := Field.GetValue(Sender);

    for Metodo in Tipo.GetMethods do
      begin
        if Metodo.Name = 'ExibirMensagem' then
          Metodo.Invoke(Sender, []);

        if (Value.IsObject) and (Value.AsObject is TMemo) then
          TMemo(Value.AsObject).Lines.Add(Metodo.Name);
      end;
  finally
    Contexto.Free;
  end;
end;

class procedure TRttiUtils.ListarPropriedades(Sender: TObject);
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Propriedade: TRttiProperty;
  Field: TRttiField;
  Value: TValue;
begin
  Contexto := TRttiContext.Create;
  try
    Tipo := Contexto.GetType(Sender.ClassInfo);
    Field := Tipo.GetField('Memo3');
    Value := Field.GetValue(Sender);

    for Propriedade in Tipo.GetProperties do
      if (Value.IsObject) and (Value.AsObject is TMemo) then
          TMemo(Value.AsObject).Lines.Add(Propriedade.Name);
  finally
    Contexto.Free;
  end;

end;

class procedure TRttiUtils.ExecutarMetodos(Sender: TObject);
var
  lContexto: TRttiContext;
  lTipo: TRttiType;
  Metodo: TRttiMethod;
  Atributo: TCustomAttribute;
  I: Integer;
begin
  lContexto := TRttiContext.Create;
  try
    lTipo := lContexto.GetType(Sender.ClassType);

    for Metodo in lTipo.GetMethods do
    begin
      for Atributo in Metodo.GetAttributes do
        begin
          if (Atributo is EAtributoExecutar) and
             (EAtributoExecutar(Atributo).ExecutarMetodo)  then
             Metodo.Invoke(Sender, []);
        end;
    end;
  finally
    lContexto.Free;
  end;

end;

class procedure TRttiUtils.ValidarPropriedades(Sender: TObject);
var
  lContexto: TRttiContext;
  lTipo: TRttiType;
  Propriedade: TRttiProperty;
  Atributo: TCustomAttribute;
  I: Integer;
begin
  lContexto := TRttiContext.Create;
  try
    lTipo := lContexto.GetType(Sender.ClassType);

    for Propriedade in lTipo.GetProperties do
    begin
      for Atributo in Propriedade.GetAttributes do
        begin
          if (Atributo is EAtributoNotNull) and
             (EAtributoNotNull(Atributo).IsNotNull)  then
            if (Propriedade.GetValue(Sender).ToString.Trim = '') then
              ShowMessage('Propriedade obrigatória ' + Propriedade.Name + ' Com valor vazio');
        end;
    end;
  finally
    lContexto.Free;
  end;

end;

end.
