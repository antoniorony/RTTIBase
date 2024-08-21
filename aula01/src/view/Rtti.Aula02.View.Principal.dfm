object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Aula 02 System.Rtti'
  ClientHeight = 456
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 275
    Width = 40
    Height = 15
    Caption = 'Usuario'
  end
  object Label2: TLabel
    Left = 8
    Top = 319
    Width = 32
    Height = 15
    Caption = 'Senha'
  end
  object Memo1: TMemo
    Left = 21
    Top = 8
    Width = 185
    Height = 137
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object brnListar: TButton
    Left = 21
    Top = 180
    Width = 185
    Height = 41
    Caption = 'Listar Fields'
    TabOrder = 1
    OnClick = brnListarClick
  end
  object Memo2: TMemo
    Left = 280
    Top = 8
    Width = 185
    Height = 137
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
  end
  object btnListarMetodos: TButton
    Left = 280
    Top = 160
    Width = 185
    Height = 41
    Caption = 'Listar Metodos'
    TabOrder = 3
    OnClick = btnListarMetodosClick
  end
  object Memo3: TMemo
    Left = 536
    Top = 8
    Width = 185
    Height = 137
    Lines.Strings = (
      'Memo2')
    TabOrder = 4
  end
  object btnListarPropriedades: TButton
    Left = 536
    Top = 160
    Width = 185
    Height = 41
    Caption = 'Listar Propriedades'
    TabOrder = 5
    OnClick = btnListarPropriedadesClick
  end
  object edtNome: TEdit
    Left = 21
    Top = 151
    Width = 185
    Height = 23
    TabOrder = 6
    Text = 'Antonio Rony'
  end
  object btnInvocarMetodo: TButton
    Left = 280
    Top = 216
    Width = 185
    Height = 41
    Caption = 'Chamando m'#233'todo'
    TabOrder = 7
    OnClick = btnInvocarMetodoClick
  end
  object Button1: TButton
    Left = 21
    Top = 386
    Width = 185
    Height = 57
    Caption = 'Chamando m'#233'todo gen'#233'rico'
    TabOrder = 8
    OnClick = Button1Click
  end
  object edtUser: TEdit
    Left = 21
    Top = 290
    Width = 185
    Height = 23
    TabOrder = 9
  end
  object edtSenha: TEdit
    Left = 21
    Top = 335
    Width = 185
    Height = 23
    TabOrder = 10
  end
  object chkValidarCampos: TCheckBox
    Left = 21
    Top = 364
    Width = 185
    Height = 17
    Caption = 'Validar campos'
    TabOrder = 11
  end
  object Button2: TButton
    Left = 520
    Top = 296
    Width = 201
    Height = 47
    Caption = 'Custom attributes'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 520
    Top = 349
    Width = 201
    Height = 47
    Caption = 'Custom attributes em Propriedades'
    TabOrder = 13
    OnClick = Button3Click
  end
end
