unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, frxClass, frxDBSet,
  ComCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    con1: TZConnection;
    ds1: TDataSource;
    zqry: TZQuery;
    edt4: TEdit;
    edt5: TEdit;
    dbgrd1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cb1: TComboBox;
    date1: TDateTimePicker;
    procedure posisiawaal;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id:string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.bersih;
begin
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
cb1.text:= '';
end;

procedure TForm3.posisiawaal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
cb1.Enabled:= False;


end;

procedure TForm3.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
date1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
cb1.Enabled:= True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if edt2.Text ='' then
begin
ShowMessage('NAMA TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('KODE MEMBER TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('JAM SEWA TIDAK BOLEH KSOSNG');
end else
if cb1.Text ='' then
begin
ShowMessage('SEWA HABIS TIDAK BOLEH KSOSNG');
end else
if cb1.Text ='' then
begin
ShowMessage('LAPANGAN TIDAK BOLEH KSOSNG');
end else
begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into tbl_jadwal values(null,"'+FormatDateTime('yyyy-mm-dd',date1.Date)+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+cb1.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tbl_jadwal');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawaal;
end;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
if (edt2.Text ='') or(edt3.Text= '') or(edt4.Text= '') or(edt5.Text= '') or(cb1.Text= '')then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt2.Text = zqry.Fields[2].AsString) and (edt3.Text = zqry.Fields[3].AsString) and (edt4.Text = zqry.Fields[4].AsString) and (edt5.Text = zqry.Fields[5].AsString) and (cb1.Text = zqry.Fields[6].AsString) then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawaal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry.SQL.Clear;
zqry.SQL.Add('Update tbl_jadwal set tanggal= "'+FormatDateTime('yyyy-mm-dd',date1.Date)+'",nama="'+edt2.Text+'",kode_member="'+edt3.Text+'",jam_sewa="'+edt4.Text+'",sewa_habis="'+edt5.Text+'",lapangan="'+cb1.Text+'" where jadwal_id="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tbl_jadwal');
zqry.Open;

posisiawaal;
end;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from tbl_jadwal where jadwal_id="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from tbl_jadwal');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawaal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawaal;
end
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
posisiawaal;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
bersih;
btn1.Enabled:=true;
btn2.Enabled:=false;
btn3.Enabled:=false;
btn4.Enabled:=false;
btn5.Enabled:=false;
btn6.Enabled:=false;
date1.Enabled:=false;
edt2.Enabled:=false;
edt3.Enabled:=false;
edt4.Enabled:=false;
edt5.Enabled:=false;
cb1.Enabled:=false;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry.Fields[0].AsString;

edt2.Text:= zqry.Fields[2].AsString;
edt3.Text:= zqry.Fields[3].AsString;
edt4.Text:= zqry.Fields[4].AsString;
edt5.Text:= zqry.Fields[5].AsString;
cb1.Text:= zqry.Fields[6].AsString;


date1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
cb1.Enabled:= True;
btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
cb1.Enabled:= True;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.

