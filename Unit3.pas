unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;
  searchText: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.btn3Click(Sender: TObject);
begin
  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('delete from kategori where id = "'+a+'"');
  DataModule4.ZQuery1.ExecSQL;

  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('select * from kategori');
  DataModule4.ZQuery1.Open;
  ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule4.ZQuery1.Fields[1].AsString;
  a := DataModule4.ZQuery1.Fields[0].AsString;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('update kategori set name = "'+edt1.Text+'" where id = "'+a+'"');
  DataModule4.ZQuery1.ExecSQL;

  edt1.Text := '';

  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('select * from kategori');
  DataModule4.ZQuery1.Open;
  ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  searchText := edt2.Text;

  if edt2.Text = '' then
    begin
      ShowMessage('Masukkan teks untuk melakukan pencarian');
      Exit;
    end;

  DataModule4.ZQuery1.Close;
  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Text := 'SELECT * FROM kategori WHERE name LIKE :searchText';
  DataModule4.ZQuery1.Params.ParamByName('searchText').AsString := '%' + searchText + '%';
  DataModule4.ZQuery1.Open;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('select * from kategori');
  DataModule4.ZQuery1.Open;

  edt2.Text := '';
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
  edt1.ReadOnly := False;
  edt1.Text := '';
end;

procedure TForm3.btn7Click(Sender: TObject);
begin
  edt1.Text := '';
  edt1.ReadOnly := True;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
  DataModule4.ZQuery1.ExecSQL;

  edt1.Text := '';
  edt1.ReadOnly := True;

  DataModule4.ZQuery1.SQL.Clear;
  DataModule4.ZQuery1.SQL.Add('select * from kategori');
  DataModule4.ZQuery1.Open;
  ShowMessage('Data Berhasil Diupdate');
end;

end.
