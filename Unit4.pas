unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TForm4 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    e6: TEdit;
    c1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    dtp1: TDateTimePicker;
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
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_riwayat_poin values(null, "'+e1.Text+'", "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'", "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'", "'+c1.Text+'", "'+e6.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_riwayat_poin');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_riwayat_poin set siswa_id="'+e1.Text+'", poin_id="'+e2.Text+'", wali_id="'+e3.Text+'", ortu_id="'+e4.Text+'", kelas_id="'+e5.Text+'", status="'+e6.Text+'" where id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_riwayat_poin');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_riwayat_poin where id ="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_riwayat_poin');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  c1.Clear;
  e6.Clear;
end;

end.
