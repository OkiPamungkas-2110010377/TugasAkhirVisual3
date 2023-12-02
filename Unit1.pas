unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    con: TZConnection;
    zqry: TZQuery;
    ds1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   username : string;
  password : string;
  level : string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
username := Edit1.Text;
password := Edit2.Text;

  zqry := TZQuery.Create(nil);
  try
    zqry.Connection := con;
    zqry.SQL.Text := 'SELECT level FROM tbl_login WHERE username = :username AND password = :password';
    zqry.ParamByName('username').AsString := username;
    zqry.ParamByName('password').AsString := password;
    zqry.Open;

    if not zqry.IsEmpty then
    begin
      level := zqry.FieldByName('level').AsString;
      if level = 'admin' then
      begin
        // Pengguna berhasil login sebagai admin
        ShowMessage('Admin login successful');
        Form2.Show;
      end;
    end
    else
    begin
      // Informasi login tidak valid
      ShowMessage('Invalid username or password');
    end;
  finally
    zqry.Free;
  end;
end;

end.
