object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 347
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 347
    Align = alClient
    TabOrder = 0
    object Edit1: TEdit
      Left = 8
      Top = 2
      Width = 291
      Height = 23
      TabOrder = 0
      Text = 'Edit1'
    end
    object Button2: TButton
      Left = 8
      Top = 33
      Width = 97
      Height = 25
      Caption = 'Ok'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 202
      Top = 33
      Width = 97
      Height = 25
      Caption = 'SetPropValue'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 8
      Top = 80
      Width = 97
      Height = 25
      Caption = 'GetPropValue'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Memo1: TMemo
      Left = 360
      Top = 32
      Width = 185
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 4
    end
    object Button4: TButton
      Left = 360
      Top = 4
      Width = 75
      Height = 25
      Caption = 'GetPropList'
      TabOrder = 5
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 202
      Top = 80
      Width = 97
      Height = 25
      Caption = 'GetEnumProp'
      TabOrder = 6
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 8
      Top = 128
      Width = 97
      Height = 25
      Caption = 'SetEnumProp'
      TabOrder = 7
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 202
      Top = 128
      Width = 97
      Height = 25
      Caption = 'IsPublishedProp'
      TabOrder = 8
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 8
      Top = 176
      Width = 97
      Height = 25
      Caption = 'IsStoredProp'
      TabOrder = 9
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 202
      Top = 176
      Width = 151
      Height = 25
      Caption = 'SetStrProp e GetStrProp'
      TabOrder = 10
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 8
      Top = 232
      Width = 161
      Height = 25
      Caption = 'SetInt64Prop e GetInt64Prop'
      TabOrder = 11
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 200
      Top = 232
      Width = 193
      Height = 25
      Caption = 'SetMethodProp e GetMethodProp'
      TabOrder = 12
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 8
      Top = 288
      Width = 449
      Height = 25
      Caption = 'SetVariantProp e GetVariantProp - Estou pegando problemas neles.'
      TabOrder = 13
      OnClick = Button12Click
    end
  end
end
