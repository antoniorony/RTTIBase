unit Rtti.Aula02.Model.Pessoa;

interface
uses
  SysUtils;

type
  IPessoa = interface
    ['{4034FEF3-A8B2-4FCF-AEFB-3DF4DBB7D5E7}']
  end;

  TPessoa = class(TInterfacedObject, IPessoa)
    private
    public
      constructor Create();
      class function New: IPessoa;
      destructor Destroy; override;
      procedure ExecutarException();
  end;

implementation

{ TPessoa }

constructor TPessoa.Create();
begin
  inherited;

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

procedure TPessoa.ExecutarException;
begin
  raise Exception.Create('Invocando método pelo rtti da classe pessoa');
end;

class function TPessoa.New: IPessoa;
begin
  Result := Self.Create;
end;

end.
