unit Rtti.Aula01.View.Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    FObjeto: TComponent;
    FVariante: Variant;
    procedure MeuMetodo(Sender: TObject);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    property Variante: Variant read FVariante write FVariante;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  System.TypInfo;

{$R *.dfm}
{ TForm2 }

procedure TForm2.Button10Click(Sender: TObject);
begin
  SetInt64Prop(FObjeto, 'Tag', 1234567890);
  ShowMessage('Tag: ' + IntToStr(GetInt64Prop(FObjeto, 'Tag')));
end;

procedure TForm2.MeuMetodo(Sender: TObject);
begin
  ShowMessage('Método chamado!');
end;

procedure TForm2.Button11Click(Sender: TObject);
var
  Metodo: TMethod;
begin
  Metodo.Code := @TForm2.MeuMetodo;
  Metodo.Data := Self;

  SetMethodProp(Button2, 'OnClick', Metodo);
end;

procedure TForm2.Button12Click(Sender: TObject);
begin
  SetVariantProp(Self, 'Variante', 'Valor dinâmico');
  ShowMessage('Text: ' + string(GetVariantProp(Self, 'Variante')));

end;

procedure TForm2.Button1Click(Sender: TObject);
var
  PropInfo: PPropInfo;
begin
  PropInfo := GetPropInfo(FObjeto.ClassInfo, 'Text');

  if PropInfo <> nil then
  begin
    SetPropValue(FObjeto, 'Text', Edit1.Text);
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  TEdit(FObjeto).Text := Edit1.Text;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  ShowMessage(string(GetPropValue(FObjeto, 'Text')));
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  PropList: PPropList;
  Count, I: Integer;
begin
  Count := GetPropList(FObjeto.ClassInfo, tkAny, nil);
  GetMem(PropList, Count * SizeOf(Pointer));
  try
    for I := 0 to Pred(Count) do
      Memo1.Lines.Add(string(PropList[I].Name));
  finally
    FreeMem(PropList);
  end;
end;

procedure TForm2.Button5Click(Sender: TObject);
var
  Valor: string;
begin
  Valor := GetEnumProp(FObjeto, 'Align');
  ShowMessage('Align: ' + Valor);
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  SetEnumProp(FObjeto, 'Align', 'alClient');
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  if IsPublishedProp(FObjeto, 'Text') then
    ShowMessage('A propriedade Text é publicada.');
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
  if IsStoredProp(FObjeto, 'Text') then
    ShowMessage('A propriedade Text é armazenada.');
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
  SetStrProp(Self, 'Caption', 'Novo Título');
  ShowMessage('Caption: ' + GetStrProp(Self, 'Caption'));
end;

constructor TForm2.Create(AOwner: TComponent);
begin
  inherited;

  FObjeto := AOwner;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  if FObjeto is TEdit then
    Edit1.Text := TEdit(FObjeto).Text;
end;

end.
