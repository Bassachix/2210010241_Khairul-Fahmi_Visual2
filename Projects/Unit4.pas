unit Unit4;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule4 = class(TDataModule)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds_kategori: TDataSource;
    ds_satuan: TDataSource;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    ds_user: TDataSource;
    ZQuery4: TZQuery;
    ds_supplier: TDataSource;
    ZQuery5: TZQuery;
    ds_barang: TDataSource;
    ds_kustomer: TDataSource;
    ZQuery6: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

uses
  Unit3, Unit5, Unit1, Unit2, Unit6, Unit7, Unit8;

{$R *.dfm}

end.
