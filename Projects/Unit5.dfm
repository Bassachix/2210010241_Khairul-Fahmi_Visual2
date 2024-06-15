object Form5: TForm5
  Left = 1055
  Top = 301
  Width = 383
  Height = 334
  Caption = 'SATUAN'
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
    Left = 32
    Top = 24
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl2: TLabel
    Left = 32
    Top = 56
    Width = 52
    Height = 13
    Caption = 'DEKSRIPSI'
  end
  object lbl3: TLabel
    Left = 32
    Top = 264
    Width = 80
    Height = 13
    Caption = 'MASUKAN NAMA'
  end
  object edt1: TEdit
    Left = 96
    Top = 24
    Width = 169
    Height = 21
    TabOrder = 0
    OnKeyPress = edt1KeyPress
  end
  object edt2: TEdit
    Left = 96
    Top = 56
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 272
    Top = 24
    Width = 75
    Height = 25
    Caption = '&BARU'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 32
    Top = 88
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 152
    Top = 88
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 272
    Top = 56
    Width = 75
    Height = 25
    Caption = '&BATAL'
    TabOrder = 5
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 120
    Width = 313
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
    Top = 264
    Width = 225
    Height = 21
    TabOrder = 7
    OnChange = edt3Change
  end
  object btn6: TButton
    Left = 272
    Top = 88
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn6Click
  end
end
