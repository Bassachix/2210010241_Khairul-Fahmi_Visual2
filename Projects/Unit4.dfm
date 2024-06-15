object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 216
  Top = 310
  Height = 201
  Width = 455
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Delphi7\Projects\libmysql.dll'
    Left = 24
    Top = 40
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 96
    Top = 40
  end
  object ds_kategori: TDataSource
    DataSet = ZQuery1
    Left = 96
    Top = 96
  end
  object ds_satuan: TDataSource
    DataSet = ZQuery2
    Left = 152
    Top = 96
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 152
    Top = 40
  end
  object ZQuery3: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 208
    Top = 40
  end
  object ds_user: TDataSource
    DataSet = ZQuery3
    Left = 208
    Top = 96
  end
  object ZQuery4: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 264
    Top = 40
  end
  object ds_supplier: TDataSource
    DataSet = ZQuery4
    Left = 264
    Top = 96
  end
  object ZQuery5: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 320
    Top = 40
  end
  object ds_barang: TDataSource
    DataSet = ZQuery5
    Left = 320
    Top = 96
  end
  object ds_kustomer: TDataSource
    DataSet = ZQuery6
    Left = 376
    Top = 96
  end
  object ZQuery6: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 376
    Top = 40
  end
end
