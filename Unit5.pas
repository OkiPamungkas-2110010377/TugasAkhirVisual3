unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edt1: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    ds1: TDataSource;
    zqry: TZQuery;
    Label4: TLabel;
    Label5: TLabel;
    edt7: TEdit;
    edt8: TEdit;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id:string;

implementation

{$R *.dfm}



procedure TForm5.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;

end;

procedure TForm5.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;

end;

procedure TForm5.posisiawal;
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('TANGGAL TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('KODE MEMBER TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('NAMA TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('JAMSEWA TIDAK BOLEH KSOSNG');
end else
if edt5.Text ='' then
begin
ShowMessage('LAPANGAN TIDAK BOLEH KSOSNG');
end else
if edt6.Text ='' then
begin
ShowMessage('JUMLAH BERMAIN TIDAK BOLEH KSOSNG');
end else
if edt7.Text ='' then
begin
ShowMessage('BATAS BERMAIN TIDAK BOLEH KSOSNG');
end else
if edt8.Text ='' then
begin
ShowMessage('NO TRANSAKSI TIDAK BOLEH KSOSNG');
end else
begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into tbl_sewamember values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tbl_sewamember');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '') or(edt4.Text= '') or(edt5.Text= '') or(edt6.Text= '') or(edt7.Text= '') or(edt8.Text= '')then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = zqry.Fields[1].AsString) and (edt2.Text = zqry.Fields[2].AsString) and (edt3.Text = zqry.Fields[3].AsString) and (edt4.Text = zqry.Fields[4].AsString) and (edt5.Text = zqry.Fields[5].AsString) and (edt6.Text = zqry.Fields[6].AsString) and (edt7.Text = zqry.Fields[7].AsString) and (edt8.Text = zqry.Fields[8].AsString) then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry.SQL.Clear;
zqry.SQL.Add('Update tbl_sewamember set tanggal= "'+edt1.Text+'",kode_member="'+edt2.Text+'",nama="'+edt3.Text+'",jam_sewa="'+edt4.Text+'",lapangan="'+edt5.Text+'",jml_bermain="'+edt6.Text+'",batas_bermain="'+edt7.Text+'",no_transaksi="'+edt8.Text+'" where sewamember_id="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from tbl_sewamember');
zqry.Open;

posisiawal;
end;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from tbl_sewamember where sewamember_id="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from tbl_sewamember');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry.Fields[0].AsString;
edt1.Text:= zqry.Fields[1].AsString;
edt2.Text:= zqry.Fields[2].AsString;
edt3.Text:= zqry.Fields[3].AsString;
edt4.Text:= zqry.Fields[4].AsString;
edt5.Text:= zqry.Fields[5].AsString;
edt6.Text:= zqry.Fields[6].AsString;
edt7.Text:= zqry.Fields[7].AsString;
edt8.Text:= zqry.Fields[8].AsString;


edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
btn6.Enabled:= True;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
