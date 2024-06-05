unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    edt3: TEdit;
    btn5: TButton;
    btn6: TButton;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a: string;
  searchText: String;

implementation

uses
  Unit4, DB;

{$R *.dfm}

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule4.ZQuery2.Fields[1].AsString;
  edt2.Text := DataModule4.ZQuery2.Fields[2].AsString;
  a := DataModule4.ZQuery2.Fields[0].AsString;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  DataModule4.ZQuery2.SQL.Clear;
  DataModule4.ZQuery2.SQL.Add('insert into satuan values(null, "'+edt1.Text+'", "'+edt2.Text+'")');
  DataModule4.ZQuery2.ExecSQL;


  edt1.Text := '';
  edt2.Text := '';
  edt1.ReadOnly := True;
  edt2.ReadOnly := True;

  DataModule4.ZQuery2.SQL.Clear;
  DataModule4.ZQuery2.SQL.Add('select * from satuan');
  DataModule4.ZQuery2.Open;
  ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  DataModule4.ZQuery2.SQL.Clear;
  DataModule4.ZQuery2.SQL.Add('update satuan set name = "'+edt1.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery2.ExecSQL;

  DataModule4.ZQuery2.SQL.Clear;
  DataModule4.ZQuery2.SQL.Add('update satuan set deskripsi = "'+edt2.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery2.ExecSQL;

  edt1.Text := '';
  edt2.Text := '';

  DataModule4.ZQuery2.SQL.Clear;
  DataModule4.ZQuery2.SQL.Add('select * from satuan');
  DataModule4.ZQuery2.Open;
  ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
  edt1.Text := '';
  edt2.Text := '';
  edt1.SetFocus;

  edt1.ReadOnly := True;
  edt2.ReadOnly := True;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
  edt1.ReadOnly := False;
  edt2.ReadOnly := False;
  edt1.Text := '';
  edt2.Text := '';
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
  searchText := edt3.Text;

  if edt3.Text = '' then
    begin
      ShowMessage('Masukkan teks untuk melakukan pencarian');
      Exit;
    end;

  DataModule4.ZQuery2.Close;
  DataModule4.ZQuery2.SQL.Clear;
  DataModule4.ZQuery2.SQL.Text := 'SELECT * FROM satuan WHERE name LIKE :searchText';
  DataModule4.ZQuery2.Params.ParamByName('searchText').AsString := '%' + searchText + '%';
  DataModule4.ZQuery2.Open;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
  DataModule4.ZQuery3.SQL.Clear;
  DataModule4.ZQuery3.SQL.Add('select * from user');
  DataModule4.ZQuery3.Open;

  edt3.Text := '';
end;

end.
