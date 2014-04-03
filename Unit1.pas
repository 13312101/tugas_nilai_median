unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
nilai1, nilai2, nilai3 : integer;
begin
//masukan edit1-edit3
nilai1:=StrToInt(Edit1.Text);
nilai2:=StrToInt(Edit2.Text);
nilai3:=StrToInt(Edit3.Text);
//deskripsi
if((nilai1>nilai2)and(nilai1<nilai3))or((nilai1<nilai2)and(nilai1>nilai3))then
begin
Edit4.Text:=FloatToStr(nilai1);
end
else if((nilai2>nilai1)and(nilai2<nilai3))or((nilai2<nilai1)and(nilai2>nilai3))then
begin
Edit4.Text:=FloatToStr(nilai2);
end
else
begin
Edit4.Text:=FloatToStr(nilai3);
end
end;

end.
