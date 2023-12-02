object Form2: TForm2
  Left = 283
  Top = 146
  Width = 1044
  Height = 540
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 112
    Top = 152
    object M1: TMenuItem
      Caption = 'Menu'
      object Jadwal1: TMenuItem
        Caption = 'Jadwal'
        OnClick = Jadwal1Click
      end
      object Regismember1: TMenuItem
        Caption = 'Regismember'
        OnClick = Regismember1Click
      end
      object SewaMember1: TMenuItem
        Caption = 'SewaMember'
        OnClick = SewaMember1Click
      end
      object SewaNonMember1: TMenuItem
        Caption = 'SewaNonMember'
        OnClick = SewaNonMember1Click
      end
    end
    object LOGOUT1: TMenuItem
      Caption = 'LOGOUT'
    end
    object EXIT1: TMenuItem
      Caption = 'EXIT'
    end
  end
end
