unit Rtti.Aula01.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ButtonStylesAttributes, Vcl.StyledButton, Rtti.Aula01.View.Calculadora;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btnLimpar: TButton;
    Memo1: TMemo;
    Label3: TLabel;
    pnlValidacao: TPanel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    Edit7: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit8: TEdit;
    Label6: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit7KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLimparClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Pred(ComponentCount) do
    begin
      if Components[I] is TEdit then
        TEdit(Components[I]).Clear;

      if Components[I] is TMemo then
        TMemo(Components[I]).Clear;

    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Sender is TButton) then
    (Sender as TButton).Caption := 'Alterado usando typecast';

  if (Sender is TRadioButton) then
    TRadioButton(Sender).Caption := 'Alterado com typecast';

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
  Objeto: TComponent;
begin
  for I := 0 to Pred(ComponentCount) do
    begin
      Objeto := Components[I];

      if (Objeto is TEdit) and
         (TEdit(Objeto).Parent.Name = 'pnlValidacao') then
        if (string(TEdit(Objeto).Text).IsEmpty) then
          ShowMessage('O campo: ' + TEdit(Objeto).Name + ' está vázio!');
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Componente: TComponent;
begin
  Componente := FindComponent(Edit8.Text);
  if Componente is TEdit then
    ShowMessage(TEdit(Componente).Text);
end;

procedure TForm1.Edit7KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  lCalculadora : TForm2;
begin
  if Key = VK_F12 then
    begin
      lCalculadora := TForm2.Create(ActiveControl);
      try
        lCalculadora.ShowModal();
      finally
        lCalculadora.Free;
      end;
    end;
end;

end.
