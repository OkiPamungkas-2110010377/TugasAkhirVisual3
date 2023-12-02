object Form3: TForm3
  Left = 189
  Top = 173
  Width = 1044
  Height = 540
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 192
    Width = 39
    Height = 13
    Caption = 'Tanggal'
  end
  object lbl2: TLabel
    Left = 20
    Top = 224
    Width = 28
    Height = 13
    Caption = 'Nama'
  end
  object lbl3: TLabel
    Left = 12
    Top = 252
    Width = 65
    Height = 13
    Caption = 'Kode member'
  end
  object Label1: TLabel
    Left = 16
    Top = 280
    Width = 49
    Height = 13
    Caption = 'Jam Sewa'
  end
  object Label2: TLabel
    Left = 16
    Top = 312
    Width = 57
    Height = 13
    Caption = 'Sewa Habis'
  end
  object Label3: TLabel
    Left = 24
    Top = 336
    Width = 48
    Height = 13
    Caption = 'Lapangan'
  end
  object edt2: TEdit
    Left = 112
    Top = 220
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt3: TEdit
    Left = 112
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 260
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 260
    Top = 228
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 260
    Top = 260
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 260
    Top = 292
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 352
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 352
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 7
  end
  object edt1: TEdit
    Left = 112
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object edt4: TEdit
    Left = 112
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object edt5: TEdit
    Left = 112
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object edt6: TEdit
    Left = 112
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 56
    Width = 809
    Height = 120
    DataSource = ds1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object con1: TZConnection
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
    Left = 96
    Top = 12
  end
  object ds1: TDataSource
    DataSet = zqry
    Left = 184
    Top = 12
  end
  object zqry: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_jadwal')
    Params = <>
    Left = 140
    Top = 12
  end
end
