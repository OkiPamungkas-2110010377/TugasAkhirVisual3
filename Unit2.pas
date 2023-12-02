unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    M1: TMenuItem;
    Jadwal1: TMenuItem;
    Regismember1: TMenuItem;
    LOGOUT1: TMenuItem;
    EXIT1: TMenuItem;
    SewaMember1: TMenuItem;
    SewaNonMember1: TMenuItem;
    procedure JadwalClick(Sender: TObject);
    procedure Jadwal1Click(Sender: TObject);
    procedure Regismember1Click(Sender: TObject);
    procedure SewaMember1Click(Sender: TObject);
    procedure SewaNonMember1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5, sewanonmember;

{$R *.dfm}

procedure TForm2.JadwalClick(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.Jadwal1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.Regismember1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm2.SewaMember1Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm2.SewaNonMember1Click(Sender: TObject);
begin
Form6.ShowModal;
end;

end.
