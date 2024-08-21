unit AtributoExecutar;

interface

type
  EAtributoExecutar = class(TCustomAttribute)
    private
      FExecutarMetodo: Boolean;
    public
      constructor Create(pExecutarMetodo: Boolean);
      property ExecutarMetodo: Boolean read FExecutarMetodo write FExecutarMetodo;
  end;


implementation

{ TAtributoExecutar }

constructor EAtributoExecutar.Create(pExecutarMetodo: Boolean);
begin
  FExecutarMetodo := pExecutarMetodo;
end;

end.
