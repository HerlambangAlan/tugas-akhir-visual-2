object Form1: TForm1
  Left = 232
  Top = 175
  Width = 1070
  Height = 631
  Caption = 'Input Data Siswa'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 24
    Top = 56
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object l2: TLabel
    Left = 24
    Top = 88
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object l3: TLabel
    Left = 24
    Top = 120
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object l4: TLabel
    Left = 16
    Top = 152
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object l5: TLabel
    Left = 24
    Top = 224
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object l6: TLabel
    Left = 352
    Top = 24
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object l7: TLabel
    Left = 360
    Top = 56
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object l8: TLabel
    Left = 352
    Top = 88
    Width = 48
    Height = 13
    Caption = 'Wali Kelas'
  end
  object l9: TLabel
    Left = 360
    Top = 120
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object l10: TLabel
    Left = 360
    Top = 152
    Width = 38
    Height = 13
    Caption = 'Telepon'
  end
  object l11: TLabel
    Left = 360
    Top = 176
    Width = 13
    Height = 13
    Caption = 'Hp'
  end
  object l12: TLabel
    Left = 352
    Top = 208
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object l13: TLabel
    Left = 24
    Top = 24
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object l14: TLabel
    Left = 16
    Top = 184
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object b3: TButton
    Left = 104
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 0
    OnClick = b3Click
  end
  object b4: TButton
    Left = 184
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 1
    OnClick = b4Click
  end
  object b5: TButton
    Left = 264
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 2
    OnClick = b5Click
  end
  object b6: TButton
    Left = 344
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Clear Form'
    TabOrder = 3
    OnClick = b6Click
  end
  object b2: TButton
    Left = 432
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 4
    OnClick = b2Click
  end
  object e1: TEdit
    Left = 104
    Top = 16
    Width = 233
    Height = 21
    TabOrder = 5
  end
  object e2: TEdit
    Left = 104
    Top = 48
    Width = 233
    Height = 21
    TabOrder = 6
  end
  object e3: TEdit
    Left = 104
    Top = 80
    Width = 233
    Height = 21
    TabOrder = 7
  end
  object e4: TEdit
    Left = 104
    Top = 112
    Width = 233
    Height = 21
    TabOrder = 8
  end
  object e5: TEdit
    Left = 104
    Top = 144
    Width = 233
    Height = 21
    TabOrder = 9
  end
  object e6: TEdit
    Left = 432
    Top = 80
    Width = 233
    Height = 21
    TabOrder = 10
  end
  object e8: TEdit
    Left = 432
    Top = 144
    Width = 233
    Height = 21
    TabOrder = 11
  end
  object e9: TEdit
    Left = 432
    Top = 176
    Width = 233
    Height = 21
    TabOrder = 12
  end
  object dg1: TDBGrid
    Left = -8
    Top = 304
    Width = 1201
    Height = 145
    DataSource = d1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'siswa_id'
        Title.Alignment = taCenter
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nis'
        Title.Alignment = taCenter
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nisn'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_siswa'
        Title.Alignment = taCenter
        Width = 104
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nik'
        Title.Alignment = taCenter
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tempat_lahir'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tgl_lahir'
        Title.Alignment = taCenter
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis_kelamin'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tingkat_kelas'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jurusan'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'wali_kelas'
        Title.Alignment = taCenter
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'alamat'
        Title.Alignment = taCenter
        Width = 118
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'telp'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'hp'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object dtp1: TDateTimePicker
    Left = 104
    Top = 184
    Width = 233
    Height = 21
    Date = 45094.730822800930000000
    Time = 45094.730822800930000000
    TabOrder = 14
  end
  object c1: TComboBox
    Left = 104
    Top = 216
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object c2: TComboBox
    Left = 432
    Top = 16
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Items.Strings = (
      'X'
      'XI'
      'XII')
  end
  object c3: TComboBox
    Left = 432
    Top = 48
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 17
    Items.Strings = (
      'BAHASA'
      'IPA'
      'IPS')
  end
  object c4: TComboBox
    Left = 432
    Top = 208
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 18
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object e7: TEdit
    Left = 432
    Top = 112
    Width = 233
    Height = 21
    TabOrder = 19
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
    Left = 720
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_siswa')
    Params = <>
    Left = 760
    Top = 40
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 800
    Top = 40
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45114.832144537000000000
    ReportOptions.LastChange = 45114.832144537000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 848
    Top = 80
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo21: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Data Siswa')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 60.472480000000000000
        Top = 143.622140000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Siswa Id')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nis')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Nama_Siswa')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 226.771800000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Tempat_lahir')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 317.480520000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Jenis Kelamin')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 415.748300000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Tingkat Kelas')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 506.457020000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Jurusan')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 570.709030000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Telp')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 721.890230000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 86.929190000000000000
        Top = 226.771800000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'siswa_id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."siswa_id"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'nis'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nis"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'nama_siswa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nama_siswa"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 226.771800000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tempat_lahir'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."tempat_lahir"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 321.260050000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'jenis_kelamin'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."jenis_kelamin"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 419.527830000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'tingkat_kelas'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."tingkat_kelas"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 506.457020000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'jurusan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."jurusan"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 570.709030000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'telp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 721.890230000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'status'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 936
    Top = 136
  end
end
