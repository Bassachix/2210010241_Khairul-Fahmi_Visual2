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
    btn6: TButton;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure posisiAwalSatuan;
    procedure bersihSatuan;
    procedure FormShow(Sender: TObject);
    procedure edt3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a: string;

implementation

uses
  Unit4, DB;

{$R *.dfm}

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule4.ZQuery2.Fields[1].AsString;
  edt2.Text := DataModule4.ZQuery2.Fields[2].AsString;
  a := DataModule4.ZQuery2.Fields[0].AsString;

  edt1.Text := UpperCase(edt1.Text);
  edt1.Enabled := True;
  edt2.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn6.Enabled := True;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  if (edt1.Text = '') or (edt2.Text = '') then // Validasi
    begin
      ShowMessage('Nama Satuan atau Deskripsi Tidak Boleh Kosong!');
    end
      else
      if DataModule4.ZQuery2.Locate('name', edt1.Text,[])then
        begin
          ShowMessage('Nama Satuan '+edt1.Text+' Sudah Ada di Dalam Sistem');
        end
          else
          begin // Simpan
            with DataModule4.ZQuery2 do
              begin
                 SQL.Clear;
                 SQL.Add('insert into satuan values(null, "'+edt1.Text+'", "'+edt2.Text+'")');
                 ExecSQL;

                 SQL.Clear;
                 SQL.Add('select * from satuan');
                 Open;
              end;
              ShowMessage('Data Berhasil Disimpan!');
          end;
  posisiAwalSatuan;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  if (edt1.text = '') or (edt2.text = '') then // Validasi
    begin
      ShowMessage('Nama Satuan atau Deskripsi Tidak Boleh Kosong!');
    end
      else
        begin // Ubah
          with DataModule4.ZQuery2 do
            begin
              SQL.Clear;
              SQL.Add('update satuan set name = "'+edt1.Text+'", deskripsi = "'+edt2.text+'" where id = "'+a+'"');
              ExecSQL;

              SQL.Clear;
              SQL.Add('select * from satuan');
              Open;
            end;
          ShowMessage('Data Berhasil Diubah!');
        end;
  posisiAwalSatuan;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
  bersihSatuan;
  posisiAwalSatuan;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
  bersihSatuan;
  edt1.Enabled := True;
  edt2.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btn4.Enabled := True;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data Ini', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin  // Hapus
      with DataModule4.ZQuery2 do
        begin
          SQL.Clear;
          SQL.Add('delete from satuan where id = "'+a+'"');
          ExecSQL;

          SQL.Clear;
          SQL.Add('select * from satuan');
          Open;
        end;
        ShowMessage('Data Berhasil Dihapus!');
    end
      else
        begin
          ShowMessage('Data Batal Dihapus');
        end;
  posisiAwalSatuan;
end;

procedure TForm5.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TForm5.posisiAwalSatuan;
begin
  bersihSatuan;
  edt1.Enabled := False;
  edt2.Enabled := False;

  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn6.Enabled := False;
end;

procedure TForm5.bersihSatuan;
begin
  edt1.Clear;
  edt2.Clear;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  posisiAwalSatuan;
end;

procedure TForm5.edt3Change(Sender: TObject);
begin
  with DataModule4.ZQuery2 do
    begin
      SQL.Clear;
      SQL.Add('select * from satuan where name like "%'+edt3.Text+'%"');
      Open;
    end;
end;

end.
