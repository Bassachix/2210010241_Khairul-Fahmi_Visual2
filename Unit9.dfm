object Form9: TForm9
  Left = 462
  Top = 288
  Width = 577
  Height = 278
  Caption = 'KUSTOMER'
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
    Top = 24
    Width = 17
    Height = 13
    Caption = 'NIK'
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
    Width = 85
    Height = 13
    Caption = 'MASUKKAN NAME'
  end
  object edt1: TEdit
    Left = 72
    Top = 16
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 72
    Top = 48
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 72
    Top = 80
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 72
    Top = 112
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 72
    Top = 144
    Width = 145
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object btn1: TButton
    Left = 240
    Top = 176
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 320
    Top = 176
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 400
    Top = 176
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 480
    Top = 176
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 224
    Top = 16
    Width = 329
    Height = 145
    DataSource = DataModule4.ds_kustomer
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt6: TEdit
    Left = 112
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object btn5: TButton
    Left = 160
    Top = 208
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 11
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 240
    Top = 208
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 12
    OnClick = btn6Click
  end
end
