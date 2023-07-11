object Form3: TForm3
  Left = 429
  Top = 225
  Width = 471
  Height = 367
  Caption = 'Menu'
  Color = clBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 88
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Data Siswa'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Data Kelas'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Riwayat Poin'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 184
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Data Poin'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 272
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Data Ortu'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 88
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Wali Kelas'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 88
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Hubungan'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 184
    Top = 112
    Width = 75
    Height = 25
    Caption = 'User'
    TabOrder = 7
    OnClick = Button8Click
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 8
    object Menu1: TMenuItem
      Caption = 'Menu'
      object InputDataSiswa1: TMenuItem
        Caption = 'Input Data Siswa'
        OnClick = InputDataSiswa1Click
      end
      object InputDataKelas1: TMenuItem
        Caption = 'Input Data Kelas'
        OnClick = InputDataKelas1Click
      end
      object i1: TMenuItem
        Caption = 'Input  Data Riwayat Poin'
        OnClick = i1Click
      end
      object InputDataPoij1: TMenuItem
        Caption = 'Input Data Poin'
        OnClick = InputDataPoij1Click
      end
      object InputDataWaliKelas1: TMenuItem
        Caption = 'Input Data Ortu'
        OnClick = InputDataWaliKelas1Click
      end
      object InputDataWaliKelas2: TMenuItem
        Caption = 'Input Data Wali Kelas'
        OnClick = InputDataWaliKelas2Click
      end
      object InputDataHubungan1: TMenuItem
        Caption = 'Input Data Hubungan'
        OnClick = InputDataHubungan1Click
      end
      object InputDataUser1: TMenuItem
        Caption = 'Input Data User'
        OnClick = InputDataUser1Click
      end
    end
  end
end
