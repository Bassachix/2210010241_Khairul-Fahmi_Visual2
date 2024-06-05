unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    cbb4: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    lbl10: TLabel;
    btn5: TButton;
    edt6: TEdit;
    btn6: TButton;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  a: String;
  searchText: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule4.ZQuery5.Fields[1].AsString;
  edt2.Text := DataModule4.ZQuery5.Fields[2].AsString;
  edt3.Text := DataModule4.ZQuery5.Fields[3].AsString;
  edt4.Text := DataModule4.ZQuery5.Fields[4].AsString;
  edt5.Text := DataModule4.ZQuery5.Fields[5].AsString;
  a := DataModule4.ZQuery5.Fields[0].AsString;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
  edt1.ReadOnly := False;
  edt2.ReadOnly := False;
  edt3.ReadOnly := False;
  edt4.ReadOnly := False;
  edt5.ReadOnly := False;

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt1.SetFocus;

  edt1.ReadOnly := True;
  edt2.ReadOnly := True;
  edt3.ReadOnly := True;
  edt4.ReadOnly := True;
  edt5.ReadOnly := True;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('insert into barang values(null, "'+edt1.Text+'", "'+edt2.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'")');
  DataModule4.ZQuery5.ExecSQL;

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';

  edt1.ReadOnly := True;
  edt2.ReadOnly := True;
  edt3.ReadOnly := True;
  edt4.ReadOnly := True;
  edt5.ReadOnly := True;

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('select * from barang');
  DataModule4.ZQuery5.Open;
  ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('update barang set barcode = "'+edt1.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery5.ExecSQL;

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('update barang set name = "'+edt2.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery5.ExecSQL;

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('update barang set harga_jual = "'+edt3.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery5.ExecSQL;

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('update barang set harga_beli = "'+edt4.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery5.ExecSQL;

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('update barang set stok = "'+edt5.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery5.ExecSQL;

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('select * from barang');
  DataModule4.ZQuery5.Open;
  ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
  searchText := edt6.Text;

  if edt6.Text = '' then
    begin
      ShowMessage('Masukkan teks untuk melakukan pencarian');
      Exit;
    end;

  DataModule4.ZQuery5.Close;
  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Text := 'SELECT * FROM barang WHERE name LIKE :searchText';
  DataModule4.ZQuery5.Params.ParamByName('searchText').AsString := '%' + searchText + '%';
  DataModule4.ZQuery5.Open;
end;

procedure TForm8.btn6Click(Sender: TObject);
begin
  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('select * from barang');
  DataModule4.ZQuery5.Open;

  edt6.Text := '';
end;

end.
