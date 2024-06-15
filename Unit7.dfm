object Form7: TForm7
  Left = 881
  Top = 262
  Width = 623
  Height = 374
  Caption = 'SUPPLIER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl3: TLabel
    Left = 16
    Top = 80
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl4: TLabel
    Left = 16
    Top = 112
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object lbl5: TLabel
    Left = 16
    Top = 144
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl6: TLabel
    Left = 16
    Top = 176
    Width = 67
    Height = 13
    Caption = 'PERUSAHAAN'
  end
  object lbl7: TLabel
    Left = 16
    Top = 208
    Width = 58
    Height = 13
    Caption = 'NAMA BANK'
  end
  object lbl8: TLabel
    Left = 16
    Top = 240
    Width = 88
    Height = 13
    Caption = 'NAMA AKUN BANK'
  end
  object lbl9: TLabel
    Left = 184
    Top = 304
    Width = 86
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object lbl10: TLabel
    Left = 16
    Top = 272
    Width = 74
    Height = 13
    Caption = 'NO AKUN BANK'
  end
  object edt1: TEdit
    Left = 112
    Top = 16
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 112
    Top = 48
    Width = 161
    Height = 21
    TabOrder = 1
    OnKeyPress = edt2KeyPress
  end
  object edt3: TEdit
    Left = 112
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 112
    Top = 112
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 112
    Top = 144
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 112
    Top = 176
    Width = 161
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 112
    Top = 208
    Width = 161
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 112
    Top = 240
    Width = 161
    Height = 21
    TabOrder = 7
  end
  object btn1: TButton
    Left = 520
    Top = 272
    Width = 75
    Height = 25
    Caption = '&BARU'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 280
    Top = 272
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 360
    Top = 272
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 10
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 280
    Top = 16
    Width = 313
    Height = 241
    DataSource = DataModule4.ds_supplier
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt9: TEdit
    Left = 112
    Top = 272
    Width = 161
    Height = 21
    TabOrder = 12
  end
  object edt10: TEdit
    Left = 280
    Top = 304
    Width = 233
    Height = 21
    TabOrder = 13
    OnChange = edt10Change
  end
  object btn5: TButton
    Left = 440
    Top = 272
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 14
    OnClick = btn5Click
  end
  object btn4: TButton
    Left = 520
    Top = 304
    Width = 75
    Height = 25
    Caption = '&BATAL'
    TabOrder = 15
    OnClick = btn4Click
  end
end
