unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm5 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Nama: TLabel;
    Bobot: TLabel;
    Jenis: TLabel;
    Status: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    c1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_poin values(null, "'+e1.Text+'", "'+e2.Text+'", "'+c1.Text+'", "'+e3.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_poin');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_poin set nama="'+e1.Text+'", bobot="'+e2.Text+'", jenis="'+c1.Text+'", status="'+e3.Text+'" where id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_siswa');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_poin where id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_poin');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  c1.Clear;
  e4.Clear;
end;

end.
