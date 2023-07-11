unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, frxClass,
  frxDBSet;

type
  TForm6 = class(TForm)
    con1: TZConnection;
    d1: TDataSource;
    zqry1: TZQuery;
    dg1: TDBGrid;
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
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure clClick(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
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
  zqry1.SQL.Add('insert into tb_ortu values(null, "'+e1.Text+'", "'+e2.Text+'", "'+c1.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'", "'+e6.Text+'", "'+c2.Text+'", "'+c3.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_ortu');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');

end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('nik').Text := e1.Text;
  zqry1.FieldByName('nama').Text := e2.Text;
  zqry1.FieldByName('pendidikan').Text := c1.Text;
  zqry1.FieldByName('pekerjaan').Text := e3.Text;
  zqry1.FieldByName('telp').Text := e4.Text;
  zqry1.FieldByName('alamat').Text := e5.Text;
  zqry1.FieldByName('agama').Text := e6.Text;
  zqry1.FieldByName('pendidikan').Text := c2.Text;
  zqry1.FieldByName('pendidikan').Text := c3.Text;
  zqry1.Post;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
end;

procedure TForm6.clClick(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  c1.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  e6.Clear;
  c2.Clear;
  c3.Clear;
end;

procedure TForm6.dg1CellClick(Column: TColumn);
begin
  e1.Text:=zqry1.Fields[1].AsString;
  e2.Text:=zqry1.Fields[2].AsString;
  c1.Text:=zqry1.Fields[3].AsString;
  e3.Text:=zqry1.Fields[4].AsString;
  e4.Text:=zqry1.Fields[5].AsString;
  e5.Text:=zqry1.Fields[6].AsString;
  e6.Text:=zqry1.Fields[7].AsString;
  c2.Text:=zqry1.Fields[8].AsString;
  c3.Text:=zqry1.Fields[8].AsString;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
