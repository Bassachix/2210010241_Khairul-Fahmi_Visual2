unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    mniFILE1: TMenuItem;
    mniLOGIN1: TMenuItem;
    mniLOGOUT1: TMenuItem;
    mniDATAMASTER1: TMenuItem;
    mniKATEGORI1: TMenuItem;
    mniSATUAN1: TMenuItem;
    mniSUPPLIER1: TMenuItem;
    mniKUSTOMER1: TMenuItem;
    mniRANSAKSI1: TMenuItem;
    mniPENJUALAN1: TMenuItem;
    mniPEMBELIAN: TMenuItem;
    mniLAPORAN1: TMenuItem;
    mniLAPORANPENJUALAN1: TMenuItem;
    mniLAPORANSTOKBARANG1: TMenuItem;
    mniLAPORANBARANG1: TMenuItem;
    mniBARANG1: TMenuItem;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    mniUSER1: TMenuItem;
    procedure mniLOGIN1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniLOGOUT1Click(Sender: TObject);
    procedure mniKATEGORI1Click(Sender: TObject);
    procedure mniSATUAN1Click(Sender: TObject);
    procedure mniSUPPLIER1Click(Sender: TObject);
    procedure mniBARANG1Click(Sender: TObject);
    procedure mniKUSTOMER1Click(Sender: TObject);
    procedure mniUSER1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3, Unit5, Unit6, Unit7, Unit8, Unit4, Unit9;

{$R *.dfm}

procedure TForm1.mniLOGIN1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Form1.mm1.Items[1].Visible := False;
  Form1.mm1.Items[2].Visible := False;
  Form1.mm1.Items[3].Visible := False;
end;

procedure TForm1.mniLOGOUT1Click(Sender: TObject);
begin
  Form1.mm1.Items[1].Visible := False;
  Form1.mm1.Items[2].Visible := False;
  Form1.mm1.Items[3].Visible := False;
end;

procedure TForm1.mniKATEGORI1Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.mniSATUAN1Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.mniSUPPLIER1Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm1.mniBARANG1Click(Sender: TObject);
begin
  Form8.Show;
end;

procedure TForm1.mniKUSTOMER1Click(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm1.mniUSER1Click(Sender: TObject);
begin
  Form6.Show;
end;

end.
