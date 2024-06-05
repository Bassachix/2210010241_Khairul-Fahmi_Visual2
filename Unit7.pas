unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    lbl9: TLabel;
    edt9: TEdit;
    btn5: TButton;
    edt10: TEdit;
    lbl10: TLabel;
    btn6: TButton;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  a: String;
  searchText: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule4.ZQuery4.Fields[1].AsString;
  edt2.Text := DataModule4.ZQuery4.Fields[2].AsString;
  edt3.Text := DataModule4.ZQuery4.Fields[3].AsString;
  edt4.Text := DataModule4.ZQuery4.Fields[4].AsString;
  edt5.Text := DataModule4.ZQuery4.Fields[5].AsString;
  edt6.Text := DataModule4.ZQuery4.Fields[6].AsString;
  edt7.Text := DataModule4.ZQuery4.Fields[7].AsString;
  edt8.Text := DataModule4.ZQuery4.Fields[8].AsString;
  a := DataModule4.ZQuery4.Fields[0].AsString;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
  edt1.ReadOnly := False;
  edt2.ReadOnly := False;
  edt3.ReadOnly := False;
  edt4.ReadOnly := False;
  edt5.ReadOnly := False;
  edt6.ReadOnly := False;
  edt7.ReadOnly := False;
  edt8.ReadOnly := False;
  edt9.ReadOnly := False;

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt6.Text := '';
  edt7.Text := '';
  edt8.Text := '';
  edt9.Text := '';
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt6.Text := '';
  edt7.Text := '';
  edt8.Text := '';
  edt9.Text := '';
  edt1.SetFocus;

  edt1.ReadOnly := True;
  edt2.ReadOnly := True;
  edt3.ReadOnly := True;
  edt4.ReadOnly := True;
  edt5.ReadOnly := True;
  edt6.ReadOnly := True;
  edt7.ReadOnly := True;
  edt8.ReadOnly := True;
  edt9.ReadOnly := True;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('insert into supplier values(null, "'+edt1.Text+'", "'+edt2.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'", "'+edt6.Text+'", "'+edt7.Text+'", "'+edt8.Text+'", "'+edt9.Text+'")');
  DataModule4.ZQuery4.ExecSQL;

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt6.Text := '';
  edt7.Text := '';
  edt8.Text := '';
  edt9.Text := '';

  edt1.ReadOnly := True;
  edt2.ReadOnly := True;
  edt3.ReadOnly := True;
  edt4.ReadOnly := True;
  edt5.ReadOnly := True;
  edt6.ReadOnly := True;
  edt7.ReadOnly := True;
  edt8.ReadOnly := True;
  edt9.ReadOnly := True;

  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('select * from supplier');
  DataModule4.ZQuery4.Open;
  ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('update supplier set nik = "'+edt1.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery4.ExecSQL;

  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('update supplier set name = "'+edt2.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery4.ExecSQL;

  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('update supplier set telp = "'+edt3.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery4.ExecSQL;

  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('update supplier set email = "'+edt4.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery4.ExecSQL;

  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('update supplier set alamat = "'+edt5.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery4.ExecSQL;

  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('update supplier set perusahaan = "'+edt6.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery4.ExecSQL;

  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('update supplier set nama_bank = "'+edt7.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery4.ExecSQL;

  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('update supplier set nama_akun_bank = "'+edt8.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery4.ExecSQL;

  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('update supplier set no_akun_bank = "'+edt9.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery4.ExecSQL;

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt6.Text := '';
  edt7.Text := '';
  edt8.Text := '';
  edt9.Text := '';

  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('select * from supplier');
  DataModule4.ZQuery4.Open;
  ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm7.btn6Click(Sender: TObject);
begin
  DataModule4.ZQuery4.SQL.Clear;
  DataModule4.ZQuery4.SQL.Add('select * from user');
  DataModule4.ZQuery4.Open;

  edt10.Text := '';
end;

procedure TForm7.btn5Click(Sender: TObject);
begin
  searchText := edt10.Text;

  if edt10.Text = '' then
    begin
      ShowMessage('Masukkan teks untuk melakukan pencarian');
      Exit;
    end;

  DataModule4.ZQuery3.Close;
  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Text := 'SELECT * FROM supplier WHERE full_name LIKE :searchText';
  DataModule4.ZQuery3.Params.ParamByName('searchText').AsString := '%' + searchText + '%';
  DataModule4.ZQuery3.Open;
end;

end.
