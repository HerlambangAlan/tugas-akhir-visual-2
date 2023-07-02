object Form6: TForm6
  Left = 296
  Top = 171
  Width = 928
  Height = 480
  Caption = 'Form6'
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
    Left = 40
    Top = 8
    Width = 35
    Height = 13
    Caption = 'Ortu Id'
  end
  object Label2: TLabel
    Left = 40
    Top = 40
    Width = 14
    Height = 13
    Caption = 'Nik'
  end
  object Label3: TLabel
    Left = 40
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label4: TLabel
    Left = 40
    Top = 104
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label5: TLabel
    Left = 40
    Top = 136
    Width = 48
    Height = 13
    Caption = 'Pekerjaan'
  end
  object Label6: TLabel
    Left = 368
    Top = 8
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object Label7: TLabel
    Left = 368
    Top = 40
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label8: TLabel
    Left = 368
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Agama'
  end
  object Label9: TLabel
    Left = 368
    Top = 104
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label10: TLabel
    Left = 368
    Top = 136
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 296
    Width = 769
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 88
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 328
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Clear from'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 408
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 5
  end
  object e1: TEdit
    Left = 112
    Top = 8
    Width = 153
    Height = 21
    TabOrder = 6
  end
  object e2: TEdit
    Left = 112
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 7
  end
  object e3: TEdit
    Left = 112
    Top = 72
    Width = 153
    Height = 21
    TabOrder = 8
  end
  object e4: TEdit
    Left = 112
    Top = 136
    Width = 153
    Height = 21
    TabOrder = 9
  end
  object e5: TEdit
    Left = 440
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object e6: TEdit
    Left = 448
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object e7: TEdit
    Left = 448
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object c1: TComboBox
    Left = 112
    Top = 104
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Items.Strings = (
      'SD'
      'SMP'
      'SMA'
      'Sarjana')
  end
  object c2: TComboBox
    Left = 448
    Top = 104
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 14
  end
  object c3: TComboBox
    Left = 456
    Top = 136
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'Kandung'
      'Wali')
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
    Left = 704
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = zqry1
    Left = 816
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_ortu')
    Params = <>
    Left = 760
    Top = 24
  end
end
