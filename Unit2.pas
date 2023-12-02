unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Jadwal: TButton;
    procedure JadwalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm2.JadwalClick(Sender: TObject);
begin
Form3.ShowModal;
end;

end.
