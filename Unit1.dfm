object Form1: TForm1
  Left = 452
  Top = 329
  Width = 407
  Height = 241
  Caption = 'MAIN MENU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 112
    Top = 48
    Width = 154
    Height = 19
    Caption = 'Nama : Khairul Fahmi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 112
    Top = 72
    Width = 138
    Height = 19
    Caption = 'NPM : 2210010241'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 112
    Top = 104
    Width = 197
    Height = 19
    Caption = 'Kelas : 4P Reguler Pagi BJM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object mm1: TMainMenu
    Left = 280
    Top = 40
    object mniFILE1: TMenuItem
      Caption = 'FILE'
      object mniLOGIN1: TMenuItem
        Caption = 'LOGIN'
        OnClick = mniLOGIN1Click
      end
      object mniLOGOUT1: TMenuItem
        Caption = 'LOGOUT'
        OnClick = mniLOGOUT1Click
      end
    end
    object mniDATAMASTER1: TMenuItem
      Caption = 'DATA MASTER'
      object mniKATEGORI1: TMenuItem
        Caption = 'KATEGORI'
        OnClick = mniKATEGORI1Click
      end
      object mniSATUAN1: TMenuItem
        Caption = 'SATUAN'
        OnClick = mniSATUAN1Click
      end
      object mniSUPPLIER1: TMenuItem
        Caption = 'SUPPLIER'
        OnClick = mniSUPPLIER1Click
      end
      object mniKUSTOMER1: TMenuItem
        Caption = 'KUSTOMER'
        OnClick = mniKUSTOMER1Click
      end
      object mniBARANG1: TMenuItem
        Caption = 'BARANG'
        OnClick = mniBARANG1Click
      end
      object mniUSER1: TMenuItem
        Caption = 'USER'
        OnClick = mniUSER1Click
      end
    end
    object mniRANSAKSI1: TMenuItem
      Caption = 'TRANSAKSI'
      object mniPENJUALAN1: TMenuItem
        Caption = 'PENJUALAN'
      end
      object mniPEMBELIAN: TMenuItem
        Caption = 'PEMBELIAN'
      end
    end
    object mniLAPORAN1: TMenuItem
      Caption = 'LAPORAN'
      object mniLAPORANPENJUALAN1: TMenuItem
        Caption = 'LAPORAN PENJUALAN'
      end
      object mniLAPORANSTOKBARANG1: TMenuItem
        Caption = 'LAPORAN STOK BARANG'
      end
      object mniLAPORANBARANG1: TMenuItem
        Caption = 'LAPORAN BARANG'
      end
    end
  end
end
