object Form5: TForm5
  Left = 604
  Top = 282
  Width = 384
  Height = 387
  Caption = 'SATUAN'
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
    Left = 32
    Top = 24
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object lbl2: TLabel
    Left = 32
    Top = 56
    Width = 52
    Height = 13
    Caption = 'DESKRIPSI'
  end
  object lbl3: TLabel
    Left = 32
    Top = 280
    Width = 79
    Height = 13
    Caption = 'MASUKAN NAME'
  end
  object edt1: TEdit
    Left = 128
    Top = 24
    Width = 225
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 128
    Top = 56
    Width = 225
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object btn1: TButton
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 96
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 192
    Top = 96
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 272
    Top = 96
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 136
    Width = 320
    Height = 129
    DataSource = DataModule4.ds_satuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 120
    Top = 280
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object btn5: TButton
    Left = 272
    Top = 280
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 272
    Top = 312
    Width = 75
    Height = 25
    Caption = 'REFRESH'
    TabOrder = 9
    OnClick = btn6Click
  end
end
