unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    edt6: TEdit;
    lbl6: TLabel;
    btn5: TButton;
    btn6: TButton;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  a: string;
  searchText: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule4.ZQuery6.Fields[1].AsString;
  edt2.Text := DataModule4.ZQuery6.Fields[2].AsString;
  edt3.Text := DataModule4.ZQuery6.Fields[3].AsString;
  edt4.Text := DataModule4.ZQuery6.Fields[4].AsString;
  edt5.Text := DataModule4.ZQuery6.Fields[5].AsString;
  a := DataModule4.ZQuery6.Fields[0].AsString;
end;

procedure TForm9.btn1Click(Sender: TObject);
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

procedure TForm9.btn5Click(Sender: TObject);
begin
  searchText := edt6.Text;

  if edt6.Text = '' then
    begin
      ShowMessage('Masukkan teks untuk melakukan pencarian');
      Exit;
    end;

  DataModule4.ZQuery6.Close;
  DataModule4.ZQuery6.SQL.Clear;
  DataModule4.ZQuery6.SQL.Text := 'SELECT * FROM kustomer WHERE name LIKE :searchText';
  DataModule4.ZQuery6.Params.ParamByName('searchText').AsString := '%' + searchText + '%';
  DataModule4.ZQuery6.Open;
end;

procedure TForm9.btn6Click(Sender: TObject);
begin
  DataModule4.ZQuery6.SQL.Clear;
  DataModule4.ZQuery6.SQL.Add('select * from kustomer');
  DataModule4.ZQuery6.Open;

  edt6.Text := '';
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
  DataModule4.ZQuery6.SQL.Clear;
  DataModule4.ZQuery6.SQL.Add('insert into kustomer values(null, "'+edt1.Text+'", "'+edt2.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'")');
  DataModule4.ZQuery6.ExecSQL;

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

  DataModule4.ZQuery6.SQL.Clear;
  DataModule4.ZQuery6.SQL.Add('select * from kustomer');
  DataModule4.ZQuery6.Open;
  ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('update kustomer set nik = "'+edt1.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery5.ExecSQL;

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('update kustomer set name = "'+edt2.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery5.ExecSQL;

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('update kustomer set telp = "'+edt3.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery5.ExecSQL;

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('update kustomer set email = "'+edt4.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery5.ExecSQL;

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('update kustomer set alamat = "'+edt5.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery5.ExecSQL;

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';

  DataModule4.ZQuery5.SQL.Clear;
  DataModule4.ZQuery5.SQL.Add('select * from kustomer');
  DataModule4.ZQuery5.Open;
  ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm9.btn4Click(Sender: TObject);
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

end.
