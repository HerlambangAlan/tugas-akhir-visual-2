object Form5: TForm5
  Left = 193
  Top = 172
  Width = 928
  Height = 480
  Caption = 'Data Poin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Nama: TLabel
    Left = 48
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Bobot: TLabel
    Left = 48
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Bobot'
  end
  object Jenis: TLabel
    Left = 48
    Top = 96
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object Status: TLabel
    Left = 48
    Top = 120
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 312
    Width = 633
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object e1: TEdit
    Left = 200
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e2: TEdit
    Left = 200
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e3: TEdit
    Left = 200
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 72
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 296
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 400
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Clear Form'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 496
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 8
  end
  object c1: TComboBox
    Left = 200
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'Pelanggaran'
      'Prestasi')
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
    Left = 632
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_poin')
    Params = <>
    Left = 688
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = zqry1
    Left = 752
    Top = 32
  end
end
