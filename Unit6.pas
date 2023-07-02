unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    con1: TZConnection;
    DataSource1: TDataSource;
    zqry1: TZQuery;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    e6: TEdit;
    c1: TComboBox;
    c2: TComboBox;
    c3: TComboBox;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure clClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_ortu values(null, "'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+c1.Text+'", "'+e4.Text+'", "'+e5.Text+'", "'+e6.Text+'", "'+c2.Text+'", "'+c3.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_ortu');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');

end;

procedure TForm6.Button2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_ortu set nik="'+e1.Text+'", nama="'+e2.Text+'", pendidikan="'+e3.Text+'", pendidikan="'+c1.Text+'", pekerjaan="'+e4.Text+'", telp="'+e5.Text+'", alamat="'+e6.Text+'", agama="'+e7.Text+'", jenis_kelamin="'+c2.Text+'", status="'+c3.Text+'" where ortu_id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_siswa');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm6.Button3Click(Sender: TObject);
begin

 zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_siswa where ortu_id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_ortu');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm6.clClick(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  c1.Clear;
  e4.Clear;
  e5.Clear;
  e6.Clear;
  e7.Clear;
  c2.Clear;
  c3.Clear;
end;

end.
