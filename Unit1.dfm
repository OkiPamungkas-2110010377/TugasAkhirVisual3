object Form1: TForm1
  Left = 196
  Top = 117
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 224
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 224
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 248
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = Button1Click
  end
  object con: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_futsal'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Zeos703\libmysql.dll'
    Left = 56
    Top = 272
  end
  object zqry: TZQuery
    Connection = con
    Active = True
    SQL.Strings = (
      'select * from tbl_login')
    Params = <>
    Left = 48
    Top = 184
  end
  object ds1: TDataSource
    DataSet = zqry
    Left = 64
    Top = 232
  end
end
