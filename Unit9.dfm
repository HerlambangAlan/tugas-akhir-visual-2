object Form9: TForm9
  Left = 229
  Top = 181
  Width = 928
  Height = 480
  Caption = 'Data user'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label2: TLabel
    Left = 120
    Top = 48
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 120
    Top = 72
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object Label4: TLabel
    Left = 120
    Top = 96
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object dg1: TDBGrid
    Left = 64
    Top = 296
    Width = 705
    Height = 120
    DataSource = d1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
  end
  object e1: TEdit
    Left = 216
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e2: TEdit
    Left = 216
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e3: TEdit
    Left = 216
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object e4: TEdit
    Left = 216
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 128
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 320
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 416
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Clear From'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 512
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 9
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_laporansiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ASUS\Documents\visual 2\Project-akhir\libmysql.dll'
    Left = 768
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_user')
    Params = <>
    Left = 808
    Top = 40
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 848
    Top = 40
  end
end
