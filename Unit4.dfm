object Form4: TForm4
  Left = 190
  Top = 223
  Width = 928
  Height = 480
  Caption = 'Form4'
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
    Left = 64
    Top = 16
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object Label2: TLabel
    Left = 64
    Top = 40
    Width = 38
    Height = 13
    Caption = 'Siswa id'
  end
  object Label3: TLabel
    Left = 64
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Poin id'
  end
  object Label4: TLabel
    Left = 64
    Top = 88
    Width = 31
    Height = 13
    Caption = 'Wali id'
  end
  object Label5: TLabel
    Left = 64
    Top = 112
    Width = 31
    Height = 13
    Caption = 'ortu id'
  end
  object Label6: TLabel
    Left = 64
    Top = 136
    Width = 36
    Height = 13
    Caption = 'Kelas id'
  end
  object Label7: TLabel
    Left = 64
    Top = 160
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label8: TLabel
    Left = 64
    Top = 184
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object Label9: TLabel
    Left = 64
    Top = 208
    Width = 30
    Height = 13
    Caption = 'status'
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 296
    Width = 657
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
    Left = 216
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e2: TEdit
    Left = 216
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e3: TEdit
    Left = 216
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object e4: TEdit
    Left = 216
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object e5: TEdit
    Left = 216
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object e6: TEdit
    Left = 216
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object e7: TEdit
    Left = 216
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object c1: TComboBox
    Left = 216
    Top = 184
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      '1'
      '2')
  end
  object Button1: TButton
    Left = 88
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 360
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Clear Form'
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 448
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 13
  end
  object dtp1: TDateTimePicker
    Left = 216
    Top = 160
    Width = 186
    Height = 21
    Date = 45108.849277430560000000
    Time = 45108.849277430560000000
    TabOrder = 14
  end
  object ZConnection1: TZConnection
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
    Top = 24
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select  *  from tb_riwayat_poin')
    Params = <>
    Left = 688
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = zqry1
    Left = 744
    Top = 24
  end
end
