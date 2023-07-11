unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm7 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    dg1: TDBGrid;
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
    e7: TEdit;
    c1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button3: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure dg1CellClik(Column: TColumn);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_walikelas values(null, "'+e1.Text+'", "'+e2.Text+'", "'+c1.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'", "'+e6.Text+'", "'+e7.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_walikelas');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
 zqry1.Edit;
  zqry1.FieldByName('nip').Text := e1.Text;
  zqry1.FieldByName('nama').Text := e2.Text;
  zqry1.FieldByName('jenis_kelamin').Text := c1.Text;
  zqry1.FieldByName('alamat').Text := e3.Text;
  zqry1.FieldByName('telp').Text := e4.Text;
  zqry1.FieldByName('matpel').Text := e5.Text;
  zqry1.FieldByName('pendidikan').Text := e6.Text;
  zqry1.FieldByName('status').Text := e7.Text;
  zqry1.Post;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
 if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  c1.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  e6.Clear;
  e7.Clear;
end;

procedure TForm7.dg1CellClik(Column: TColumn);
begin
  e1.Text:=zqry1.Fields[1].AsString;
  e2.Text:=zqry1.Fields[2].AsString;
  c1.Text:=zqry1.Fields[3].AsString;
  e3.Text:=zqry1.Fields[4].AsString;
  e4.Text:=zqry1.Fields[5].AsString;
  e5.Text:=zqry1.Fields[6].AsString;
  e6.Text:=zqry1.Fields[7].AsString;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
