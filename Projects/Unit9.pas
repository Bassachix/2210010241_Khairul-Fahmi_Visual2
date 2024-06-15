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
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure posisiAwalKustomer;
    procedure bersihKustomer;
    procedure edt6Change(Sender: TObject);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  a: string;

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

  edt2.Text := UpperCase(edt2.Text);

  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
end;

procedure TForm9.btn1Click(Sender: TObject);
begin
  bersihKustomer;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := True;
  btn5.Enabled := False;
end;

procedure TForm9.btn5Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data Ini', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin  // Hapus
      with DataModule4.ZQuery6 do
        begin
          SQL.Clear;
          SQL.Add('delete from kustomer where id = "'+a+'"');
          ExecSQL;

          SQL.Clear;
          SQL.Add('select * from kustomer');
          Open;
        end;
        ShowMessage('Data Berhasil Dihapus!');
    end
  else
    begin
      ShowMessage('Data Batal Dihapus');
    end;
  posisiAwalKustomer;
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
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') then // Validasi
    begin
      ShowMessage('Tidak Boleh Ada Kolom yang Kosong!');
    end
  else
    if DataModule4.ZQuery6.Locate('nik', edt1.Text,[]) then
      begin
        ShowMessage('NIK ' + edt1.Text + ' Sudah Ada di Dalam Sistem');
      end
    else
      begin
        with DataModule4.ZQuery6 do
          begin
            SQL.Clear;
            SQL.Add('insert into kustomer values(null, "' + edt1.Text + '", "' + edt2.Text + '", "' + edt3.Text + '", "' + edt4.Text + '", "' + edt5.Text + '")');
            ExecSQL;

            SQL.Clear;
            SQL.Add('select * from kustomer');
            Open;
          end;
          ShowMessage('Data Berhasil Disimpan!');
      end;
  posisiAwalKustomer;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or (edt5.Text = '') then // Validasi
    begin
      ShowMessage('Tidak Boleh Ada Kolom yang Kosong!');
    end
  else
     begin // Ubah
        with DataModule4.ZQuery6 do
          begin
            SQL.Clear;
            SQL.Add('update kustomer set nik = "'+edt1.Text+'", name = "'+edt2.text+'", telp = "'+edt3.text+'", email = "'+edt4.text+'", alamat = "'+edt5.text+'" where id = "'+a+'"');
            ExecSQL;

            SQL.Clear;
            SQL.Add('select * from kustomer');
            Open;
          end;
          ShowMessage('Data Berhasil Diubah!');
     end;
  posisiAwalKustomer;
end;

procedure TForm9.btn4Click(Sender: TObject);
begin
  bersihKustomer;
  posisiAwalKustomer;
end;

procedure TForm9.posisiAwalKustomer;
begin
  bersihKustomer;
  edt1.Enabled := False;
  edt2.Enabled := False;
  edt3.Enabled := False;
  edt4.Enabled := False;
  edt5.Enabled := False;

  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;
end;

procedure TForm9.bersihKustomer;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
end;

procedure TForm9.edt6Change(Sender: TObject);
begin
  with DataModule4.ZQuery6 do
    begin
      SQL.Clear;
      SQL.Add('select * from kustomer where name like "%'+edt6.Text+'%"');
      Open;
    end;
end;

procedure TForm9.edt2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TForm9.FormShow(Sender: TObject);
begin
  posisiAwalKustomer;
end;

end.
