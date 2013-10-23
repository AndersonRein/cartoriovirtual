inherited FPermissao: TFPermissao
  Caption = 'Fast Otica'
  ClientHeight = 162
  ClientWidth = 259
  OnCreate = FormCreate
  ExplicitWidth = 265
  ExplicitHeight = 191
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 245
    Height = 33
    Caption = 'Permiss'#227'o de acesso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 47
    Width = 245
    Height = 50
    Caption = 'Usu'#225'rio'
    TabOrder = 0
    object edUsuario: TEdit
      Left = 2
      Top = 17
      Width = 241
      Height = 27
      Align = alCustom
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 105
    Width = 245
    Height = 50
    Caption = 'Senha'
    TabOrder = 1
    object edSenha: TEdit
      Left = 2
      Top = 17
      Width = 241
      Height = 27
      Align = alCustom
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edSenhaKeyPress
    end
  end
end
