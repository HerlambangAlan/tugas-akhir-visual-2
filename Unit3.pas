unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    InputDataSiswa1: TMenuItem;
    InputDataKelas1: TMenuItem;
    i1: TMenuItem;
    InputDataPoij1: TMenuItem;
    InputDataWaliKelas1: TMenuItem;
    InputDataWaliKelas2: TMenuItem;
    InputDataHubungan1: TMenuItem;
    InputDataUser1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure InputDataSiswa1Click(Sender: TObject);
    procedure InputDataKelas1Click(Sender: TObject);
    procedure i1Click(Sender: TObject);
    procedure InputDataPoij1Click(Sender: TObject);
    procedure InputDataWaliKelas1Click(Sender: TObject);
    procedure InputDataWaliKelas2Click(Sender: TObject);
    procedure InputDataHubungan1Click(Sender: TObject);
    procedure InputDataUser1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit9, Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm3.InputDataSiswa1Click(Sender: TObject);
begin
  if Form1=nil then
  Form1:=TForm1.Create(Application);
  Form1.Show;
end;

procedure TForm3.InputDataKelas1Click(Sender: TObject);
begin
  if Form2=nil then
  Form2:=TForm2.Create(Application);
  Form2.Show;
end;

procedure TForm3.i1Click(Sender: TObject);
begin
  if Form4=nil then
  Form4:=TForm4.Create(Application);
  Form4.Show;
end;

procedure TForm3.InputDataPoij1Click(Sender: TObject);
begin
if Form5=nil then
  Form5:=TForm5.Create(Application);
  Form5.Show;
end;

procedure TForm3.InputDataWaliKelas1Click(Sender: TObject);
begin
if Form6=nil then
  Form6:=TForm6.Create(Application);
  Form6.Show;
end;

procedure TForm3.InputDataWaliKelas2Click(Sender: TObject);
begin
if Form7=nil then
  Form7:=TForm7.Create(Application);
  Form7.Show;
end;

procedure TForm3.InputDataHubungan1Click(Sender: TObject);
begin
if Form8=nil then
  Form8:=TForm8.Create(Application);
  Form8.Show;
end;

procedure TForm3.InputDataUser1Click(Sender: TObject);
begin
if Form9=nil then
  Form9:=TForm9.Create(Application);
  Form9.Show;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
if Form1=nil then
  Form1:=TForm1.Create(Application);
  Form1.Show;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  if Form2=nil then
  Form2:=TForm2.Create(Application);
  Form2.Show;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  if Form4=nil then
  Form4:=TForm4.Create(Application);
  Form4.Show;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  if Form5=nil then
  Form5:=TForm5.Create(Application);
  Form5.Show;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  if Form6=nil then
  Form6:=TForm6.Create(Application);
  Form6.Show;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  if Form7=nil then
  Form7:=TForm7.Create(Application);
  Form7.Show;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
  if Form8=nil then
  Form8:=TForm8.Create(Application);
  Form8.Show;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
   if Form9=nil then
  Form9:=TForm9.Create(Application);
  Form9.Show;
end;

end.
