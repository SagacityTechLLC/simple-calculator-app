unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    //procedure Edit3Change(Sender: TObject);
    //procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  num1, num2: integer;


implementation

{$R *.DFM}

procedure TForm1.Edit1Change(Sender: TObject);
begin
 num1 := StrToInt(Edit1.Text);

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
 num2 := StrToInt(Edit2.Text);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label3.Caption := inttostr(num1 + num2);    // Label changed when button pressed
end;


end.
