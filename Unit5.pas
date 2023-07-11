unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm5 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    dg1: TDBGrid;
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
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
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
  zqry1.Edit;
  zqry1.FieldByName('nama').Text := e1.Text;
  zqry1.FieldByName('bobot').Text := e2.Text;
  zqry1.FieldByName('jenis').Text := c1.Text;
  zqry1.FieldByName('status').Text := e3.Text;
  zqry1.Post;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
 if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  c1.Clear;
  e3.Clear;
end;

procedure TForm5.dg1CellClick(Column: TColumn);
begin
  e1.Text:=zqry1.Fields[1].AsString;
  e2.Text:=zqry1.Fields[2].AsString;
  c1.Text:=zqry1.Fields[3].AsString;
  e3.Text:=zqry1.Fields[4].AsString;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
