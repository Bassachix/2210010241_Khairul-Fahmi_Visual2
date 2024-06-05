unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
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
    btn6: TButton;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  a: String;
  searchText: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule4.ZQuery3.Fields[1].AsString;
  edt2.Text := DataModule4.ZQuery3.Fields[2].AsString;
  edt3.Text := DataModule4.ZQuery3.Fields[3].AsString;
  edt4.Text := DataModule4.ZQuery3.Fields[4].AsString;
  edt5.Text := DataModule4.ZQuery3.Fields[5].AsString;
  edt6.Text := DataModule4.ZQuery3.Fields[6].AsString;
  edt7.Text := DataModule4.ZQuery3.Fields[7].AsString;
  edt8.Text := DataModule4.ZQuery3.Fields[8].AsString;
  a := DataModule4.ZQuery3.Fields[0].AsString;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
  edt1.ReadOnly := False;
  edt2.ReadOnly := False;
  edt3.ReadOnly := False;
  edt4.ReadOnly := False;
  edt5.ReadOnly := False;
  edt6.ReadOnly := False;
  edt7.ReadOnly := False;
  edt8.ReadOnly := False;

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt6.Text := '';
  edt7.Text := '';
  edt8.Text := '';
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt6.Text := '';
  edt7.Text := '';
  edt8.Text := '';
  edt1.SetFocus;

  edt1.ReadOnly := True;
  edt2.ReadOnly := True;
  edt3.ReadOnly := True;
  edt4.ReadOnly := True;
  edt5.ReadOnly := True;
  edt6.ReadOnly := True;
  edt7.ReadOnly := True;
  edt8.ReadOnly := True;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
  searchText := edt9.Text;

  if edt9.Text = '' then
    begin
      ShowMessage('Masukkan teks untuk melakukan pencarian');
      Exit;
    end;

  DataModule4.ZQuery3.Close;
  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Text := 'SELECT * FROM user WHERE full_name LIKE :searchText';
  DataModule4.ZQuery3.Params.ParamByName('searchText').AsString := '%' + searchText + '%';
  DataModule4.ZQuery3.Open;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('select * from user');
  DataModule4.ZQuery3.Open;

  edt9.Text := '';
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('insert into user values(null, "'+edt1.Text+'", "'+edt2.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'", "'+edt6.Text+'", "'+edt7.Text+'", "'+edt8.Text+'")');
  DataModule4.ZQuery3.ExecSQL;

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt6.Text := '';
  edt7.Text := '';
  edt8.Text := '';

  edt1.ReadOnly := True;
  edt2.ReadOnly := True;
  edt3.ReadOnly := True;
  edt4.ReadOnly := True;
  edt5.ReadOnly := True;
  edt6.ReadOnly := True;
  edt7.ReadOnly := True;
  edt8.ReadOnly := True;

  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('select * from user');
  DataModule4.ZQuery3.Open;
  ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('update user set nik = "'+edt1.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery3.ExecSQL;

  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('update user set username = "'+edt2.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery3.ExecSQL;

  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('update user set full_name = "'+edt3.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery3.ExecSQL;

  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('update user set password = "'+edt4.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery3.ExecSQL;

  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('update user set role = "'+edt5.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery3.ExecSQL;

  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('update user set email = "'+edt6.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery3.ExecSQL;

  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('update user set telp = "'+edt7.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery3.ExecSQL;

  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('update user set alamat = "'+edt8.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery3.ExecSQL;

  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt6.Text := '';
  edt7.Text := '';
  edt8.Text := '';

  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('select * from user');
  DataModule4.ZQuery3.Open;
  ShowMessage('Data Berhasil Diupdate');
end;

end.
