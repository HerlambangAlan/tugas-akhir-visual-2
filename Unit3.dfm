object Form3: TForm3
  Left = 550
  Top = 221
  Width = 471
  Height = 367
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
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
      end
    end
  end
end
