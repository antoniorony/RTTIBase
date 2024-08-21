unit AtributoNotNull;

interface

type
  EAtributoNotNull = class(TCustomAttribute)
    private
      FIsNotNull: Boolean;
    public
      constructor Create(IsNotNull: Boolean);
      property IsNotNull: Boolean read FIsNotNull write FIsNotNull;
  end;

implementation

{ EAtributoNotNull }

constructor EAtributoNotNull.Create(IsNotNull: Boolean);
begin
  FIsNotNull := IsNotNull;
end;

end.
