object mainF: TmainF
  Left = 193
  Top = 131
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Etiquetas'
  ClientHeight = 434
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 920
    Height = 434
    Align = alClient
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 56
    object Etiqueta1: TMenuItem
      Caption = 'Cadastro'
      Visible = False
      object Etiqueta2: TMenuItem
        Caption = 'Etiqueta'
        OnClick = Etiqueta2Click
      end
    end
    object Etiquetas1: TMenuItem
      Caption = 'Etiquetas'
      object Etiqueta3117961: TMenuItem
        Caption = 'Etiqueta 3117/96 - Formato A4'
        OnClick = Etiqueta3117961Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
