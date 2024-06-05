object Form6: TForm6
  Left = 492
  Top = 273
  Width = 600
  Height = 359
  Caption = 'USER'
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
    Left = 24
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 24
    Top = 48
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl3: TLabel
    Left = 24
    Top = 80
    Width = 54
    Height = 13
    Caption = 'FULL NAME'
  end
  object lbl4: TLabel
    Left = 24
    Top = 112
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object lbl5: TLabel
    Left = 24
    Top = 144
    Width = 26
    Height = 13
    Caption = 'ROLE'
  end
  object lbl6: TLabel
    Left = 24
    Top = 176
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object lbl7: TLabel
    Left = 24
    Top = 208
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl8: TLabel
    Left = 24
    Top = 240
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl9: TLabel
    Left = 136
    Top = 280
    Width = 111
    Height = 13
    Caption = 'MASUKKAN FULL NAME'
  end
  object edt1: TEdit
    Left = 88
    Top = 16
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 88
    Top = 48
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 88
    Top = 80
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 88
    Top = 112
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 88
    Top = 144
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 88
    Top = 176
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 88
    Top = 208
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 88
    Top = 240
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 7
  end
  object btn1: TButton
    Left = 256
    Top = 240
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 336
    Top = 240
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 416
    Top = 240
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 496
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 11
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 256
    Top = 16
    Width = 313
    Height = 217
    DataSource = DataModule4.ds_user
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt9: TEdit
    Left = 256
    Top = 280
    Width = 153
    Height = 21
    TabOrder = 13
  end
  object btn5: TButton
    Left = 416
    Top = 280
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 14
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 496
    Top = 280
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 15
    OnClick = btn6Click
  end
end
