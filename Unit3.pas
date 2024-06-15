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
    btn6: TButton;
    btn7: TButton;
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);

    procedure posisiAwal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure edt2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit4, Math, ZDataset, DB;

{$R *.dfm}

procedure TForm3.btn3Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Ingin Menghapus Data Ini', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin  // Hapus
      with DataModule4.ZQuery1 do
        begin
          SQL.Clear;
          SQL.Add('delete from kategori where id = "'+a+'"');
          ExecSQL;
          
          SQL.Clear;
          SQL.Add('select * from kategori');
          Open;
        end;
        ShowMessage('Data Berhasil Dihapus!');
    end
      else
        begin
          ShowMessage('Data Batal Dihapus');
        end;
  posisiAwal;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule4.ZQuery1.Fields[1].AsString;
  a := DataModule4.ZQuery1.Fields[0].AsString;

  edt1.Text := UpperCase(edt1.Text);
  edt1.Enabled := True;
  
  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn6.Enabled := False;
  btn7.Enabled := True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then // Validasi
    begin
      ShowMessage('Nama Kategori Tidak Boleh Kosong!');
    end
      else
      if edt1.Text = DataModule4.ZQuery1.Fields[1].AsString then
      begin
        ShowMessage('Nama Kategori '+edt1.Text+' Tidak Ada Perubahan');
      end
        else
          begin // Ubah
            with DataModule4.ZQuery1 do
              begin
                SQL.Clear;
                SQL.Add('update kategori set name = "'+edt1.Text+'" where id = "'+a+'"');
                ExecSQL;
                
                SQL.Clear;
                SQL.Add('select * from kategori');
                Open;
              end;
              ShowMessage('Data Berhasil Diubah!');
          end;
  posisiAwal;
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
  posisiAwal;
  edt1.Enabled := True;
  edt1.Clear;

  btn6.Enabled := False;

  btn1.Enabled := True;
  btn7.Enabled := True;
end;

procedure TForm3.btn7Click(Sender: TObject);
begin
  edt1.Clear;
  edt1.Enabled := False;

  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn6.Enabled := True;
  btn7.Enabled := False;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  if edt1.Text = '' then // Validasi
    begin
      ShowMessage('Nama Kategori Tidak Boleh Kosong!');
    end
      else
      if DataModule4.ZQuery1.Locate('name', edt1.Text,[])then
        begin
          ShowMessage('Nama Kategori '+edt1.Text+' Sudah Ada di Dalam Sistem');
        end
          else
          begin // Simpan
            with DataModule4.ZQuery1 do
              begin
                 SQL.Clear;
                 SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
                 ExecSQL;

                 SQL.Clear;
                 SQL.Add('select * from kategori');
                 Open;
              end;
              ShowMessage('Data Berhasil Disimpan!');
          end;
  posisiAwal;
end;

procedure TForm3.bersih;
begin
  edt1.Clear;
end;

procedure TForm3.posisiAwal;
begin
  bersih;
  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn6.Enabled := True;
  btn7.Enabled := False;

  edt1.Enabled := False;
end;


procedure TForm3.FormShow(Sender: TObject);
begin
  posisiAwal;
end;





procedure TForm3.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TForm3.edt2Change(Sender: TObject);
begin
  with DataModule4.ZQuery1 do
    begin
      SQL.Clear;
      SQL.Add('select * from kategori where name like "%'+edt2.Text+'%"');
      Open;
    end;
end;

end.
