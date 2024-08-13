object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 478
  ClientWidth = 1049
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 69
    Height = 21
    Caption = 'Type Cast.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 240
    Top = 24
    Width = 374
    Height = 21
    Caption = 'ComponentCount e Components - Limpando campos.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 693
    Top = 24
    Width = 142
    Height = 21
    Caption = 'Protegendo campos.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 656
    Top = 245
    Width = 385
    Height = 21
    Caption = 'GetProps e SetProps: Aperte F12, com o  campo clicado.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 245
    Width = 112
    Height = 21
    Caption = 'FindComponent'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 272
    Width = 87
    Height = 15
    Caption = 'Informe o Name'
  end
  object Button1: TButton
    Left = 16
    Top = 64
    Width = 81
    Height = 25
    Caption = 'Op'#231#227'o Bot'#227'o.'
    TabOrder = 0
    OnClick = Button1Click
  end
  object RadioButton1: TRadioButton
    Left = 120
    Top = 68
    Width = 113
    Height = 17
    Caption = 'Op'#231#227'o Radio'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 240
    Top = 65
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 240
    Top = 105
    Width = 121
    Height = 23
    TabOrder = 3
    Text = 'Edit2'
  end
  object btnLimpar: TButton
    Left = 480
    Top = 168
    Width = 131
    Height = 25
    Caption = 'Limpar campos'
    TabOrder = 4
    OnClick = btnLimparClick
  end
  object Memo1: TMemo
    Left = 426
    Top = 65
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object pnlValidacao: TPanel
    Left = 700
    Top = 64
    Width = 348
    Height = 129
    TabOrder = 6
    object Edit3: TEdit
      Left = 24
      Top = 16
      Width = 121
      Height = 23
      TabOrder = 0
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 24
      Top = 45
      Width = 121
      Height = 23
      TabOrder = 1
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 208
      Top = 16
      Width = 121
      Height = 23
      TabOrder = 2
      Text = 'Edit5'
    end
    object Edit6: TEdit
      Left = 208
      Top = 45
      Width = 121
      Height = 23
      TabOrder = 3
      Text = 'Edit6'
    end
    object Button2: TButton
      Left = 208
      Top = 88
      Width = 121
      Height = 25
      Caption = 'Validar'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object Edit7: TEdit
    Left = 656
    Top = 272
    Width = 385
    Height = 23
    TabOrder = 7
    Text = 'Edit7'
    OnKeyUp = Edit7KeyUp
  end
  object Edit8: TEdit
    Left = 120
    Top = 272
    Width = 121
    Height = 23
    TabOrder = 8
  end
  object Button3: TButton
    Left = 16
    Top = 312
    Width = 87
    Height = 25
    Caption = 'Buscar'
    TabOrder = 9
    OnClick = Button3Click
  end
end
