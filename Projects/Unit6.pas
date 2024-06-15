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
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure posisiAwalUser;
    procedure bersihUser;
    procedure FormShow(Sender: TObject);
    procedure edt9Change(Sender: TObject);
    procedure edt3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  a: String;

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

  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  edt6.Enabled := True;
  edt7.Enabled := True;
  edt8.Enabled := True;

  edt3.Text := UpperCase(edt3.Text);

  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
  bersihUser;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  edt6.Enabled := True;
  edt7.Enabled := True;
  edt8.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := True;
  btn5.Enabled := False;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
  bersihUser;
  posisiAwalUser;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data Ini', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin  // Hapus
      with DataModule4.ZQuery3 do
        begin
          SQL.Clear;
          SQL.Add('delete from user where id = "'+a+'"');
          ExecSQL;

          SQL.Clear;
          SQL.Add('select * from user');
          Open;
        end;
        ShowMessage('Data Berhasil Dihapus!');
    end
  else
    begin
      ShowMessage('Data Batal Dihapus');
    end;
  posisiAwalUser;
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
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or
     (edt5.Text = '') or (edt6.Text = '') or (edt7.Text = '') or (edt8.Text = '') then // Validasi
    begin
      ShowMessage('Tidak Boleh Ada Kolom yang Kosong!');
    end
  else
    if DataModule4.ZQuery3.Locate('nik', edt1.Text,[]) then
      begin
        ShowMessage('NIK ' + edt1.Text + ' Sudah Ada di Dalam Sistem');
      end
    else
      begin
        with DataModule4.ZQuery3 do
          begin
            SQL.Clear;
            SQL.Add('insert into user values(null, "' + edt1.Text + '", "' + edt2.Text + '", "' + edt3.Text + '", "' + edt4.Text + '", "' + edt5.Text + '", "' + edt6.Text + '", "' + edt7.Text + '", "' + edt8.Text + '", null)');
            ExecSQL;

            SQL.Clear;
            SQL.Add('select * from user');
            Open;
          end;
          ShowMessage('Data Berhasil Disimpan!');
      end;
  posisiAwalUser;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '') or (edt4.Text = '') or
     (edt5.Text = '') or (edt6.Text = '') or (edt7.Text = '') or (edt8.Text = '') then // Validasi
    begin
      ShowMessage('Tidak Boleh Ada Kolom yang Kosong!');
    end
  else
    begin // Ubah
      with DataModule4.ZQuery3 do
        begin
          SQL.Clear;
          SQL.Add('update user set nik = "'+edt1.Text+'", username = "'+edt2.text+'", full_name = "'+edt3.text+'", password = "'+edt4.text+'", role = "'+edt5.text+'", email = "'+edt6.text+'", telp = "'+edt7.text+'", alamat = "'+edt8.text+'"where id = "'+a+'"');
          ExecSQL;

          SQL.Clear;
          SQL.Add('select * from user');
          Open;
        end;
          ShowMessage('Data Berhasil Diubah!');
    end;
  posisiAwalUser;
end;

procedure TForm6.posisiAwalUser;
begin
  bersihUser;
  edt1.Enabled := False;
  edt2.Enabled := False;
  edt3.Enabled := False;
  edt4.Enabled := False;
  edt5.Enabled := False;
  edt6.Enabled := False;
  edt7.Enabled := False;
  edt8.Enabled := False;

  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;
end;

procedure TForm6.bersihUser;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
  edt8.Clear;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  posisiAwalUser;
end;

procedure TForm6.edt9Change(Sender: TObject);
begin
  with DataModule4.ZQuery3 do
    begin
      SQL.Clear;
      SQL.Add('select * from user where full_name like "%'+edt9.Text+'%"');
      Open;
    end;
end;

procedure TForm6.edt3KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

end.
