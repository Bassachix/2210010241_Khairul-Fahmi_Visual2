object Form8: TForm8
  Left = 483
  Top = 249
  Width = 659
  Height = 405
  Caption = 'BARANG'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 16
    Width = 48
    Height = 13
    Caption = 'BARCODE'
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object lbl3: TLabel
    Left = 16
    Top = 80
    Width = 62
    Height = 13
    Caption = 'HARGA JUAL'
  end
  object lbl4: TLabel
    Left = 16
    Top = 112
    Width = 59
    Height = 13
    Caption = 'HARGA BELI'
  end
  object lbl5: TLabel
    Left = 16
    Top = 144
    Width = 26
    Height = 13
    Caption = 'STOK'
  end
  object lbl6: TLabel
    Left = 16
    Top = 176
    Width = 51
    Height = 13
    Caption = 'KATEGORI'
  end
  object lbl7: TLabel
    Left = 16
    Top = 208
    Width = 40
    Height = 13
    Caption = 'SATUAN'
  end
  object lbl8: TLabel
    Left = 16
    Top = 240
    Width = 26
    Height = 13
    Caption = 'USER'
  end
  object lbl9: TLabel
    Left = 16
    Top = 272
    Width = 47
    Height = 13
    Caption = 'SUPPLIER'
  end
  object lbl10: TLabel
    Left = 16
    Top = 304
    Width = 85
    Height = 13
    Caption = 'MASUKKAN NAME'
  end
  object edt1: TEdit
    Left = 96
    Top = 16
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 96
    Top = 48
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 96
    Top = 80
    Width = 177
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 96
    Top = 112
    Width = 177
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 96
    Top = 144
    Width = 177
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 96
    Top = 176
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 5
  end
  object cbb2: TComboBox
    Left = 96
    Top = 208
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 6
  end
  object cbb3: TComboBox
    Left = 96
    Top = 240
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
  object cbb4: TComboBox
    Left = 96
    Top = 272
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 8
  end
  object btn1: TButton
    Left = 320
    Top = 304
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 400
    Top = 304
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 480
    Top = 304
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 560
    Top = 304
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 12
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 280
    Top = 16
    Width = 353
    Height = 273
    DataSource = DataModule4.ds_barang
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn5: TButton
    Left = 160
    Top = 336
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 14
    OnClick = btn5Click
  end
  object edt6: TEdit
    Left = 112
    Top = 304
    Width = 201
    Height = 21
    TabOrder = 15
  end
  object btn6: TButton
    Left = 240
    Top = 336
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 16
    OnClick = btn6Click
  end
end
