object Form7: TForm7
  Left = 289
  Top = 200
  Width = 928
  Height = 480
  Caption = 'Data Wali Kelas'
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
    Left = 56
    Top = 16
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object Label2: TLabel
    Left = 56
    Top = 40
    Width = 15
    Height = 13
    Caption = 'Nip'
  end
  object Label3: TLabel
    Left = 56
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label4: TLabel
    Left = 56
    Top = 88
    Width = 61
    Height = 13
    Caption = 'jenis Kelamin'
  end
  object Label5: TLabel
    Left = 56
    Top = 112
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label6: TLabel
    Left = 408
    Top = 16
    Width = 18
    Height = 13
    Caption = 'telp'
  end
  object Label7: TLabel
    Left = 408
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Matpel'
  end
  object Label8: TLabel
    Left = 408
    Top = 64
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label9: TLabel
    Left = 408
    Top = 88
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 304
    Width = 873
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
    Left = 152
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e2: TEdit
    Left = 152
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e3: TEdit
    Left = 152
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object e4: TEdit
    Left = 152
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object e5: TEdit
    Left = 472
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object e6: TEdit
    Left = 472
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object e7: TEdit
    Left = 472
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object e8: TEdit
    Left = 472
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object c1: TComboBox
    Left = 152
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
  end
  object Button1: TButton
    Left = 88
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 10
  end
  object Button2: TButton
    Left = 184
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 11
  end
  object Button3: TButton
    Left = 280
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
  end
  object Button4: TButton
    Left = 376
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Clear From'
    TabOrder = 13
  end
  object Button5: TButton
    Left = 472
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 14
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
    Left = 752
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_walikelas')
    Params = <>
    Left = 792
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = zqry1
    Left = 856
    Top = 40
  end
end
