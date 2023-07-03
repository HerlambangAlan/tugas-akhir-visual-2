object Form8: TForm8
  Left = 317
  Top = 206
  Width = 928
  Height = 480
  Caption = 'Data Hubungan'
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
    Top = 48
    Width = 40
    Height = 13
    Caption = 'Siswa Id'
  end
  object Label2: TLabel
    Left = 120
    Top = 80
    Width = 35
    Height = 13
    Caption = 'Ortu Id'
  end
  object Label3: TLabel
    Left = 120
    Top = 112
    Width = 83
    Height = 13
    Caption = 'Status Hubungan'
  end
  object Label4: TLabel
    Left = 120
    Top = 144
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 288
    Width = 473
    Height = 137
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object e1: TEdit
    Left = 224
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e2: TEdit
    Left = 224
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e3: TEdit
    Left = 224
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object e4: TEdit
    Left = 224
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 136
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 224
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
  end
  object Button3: TButton
    Left = 312
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
  end
  object Button4: TButton
    Left = 400
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Clear From'
    TabOrder = 8
  end
  object Button5: TButton
    Left = 488
    Top = 200
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
    Left = 760
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_hubungan')
    Params = <>
    Left = 808
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = zqry1
    Left = 864
    Top = 40
  end
end
