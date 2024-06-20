unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);
var a,b,d:real;
  c:integer;
begin

  if (Edit1.Text = '') and (Edit2.Text = '') and (Edit3.Text = '') then ShowMessage('Какая-то из строк не была заполнена')
  else
    begin
    a := StrToFloat(Edit3.Text);
  b := StrToFloat(Edit2.Text);
  c := StrToInt(Edit1.Text);
    if RadioButton1.Checked then begin d:= a + a*b/100*c; Edit4.Text := FloatToStrF(d,ffFixed,0,2)  end
    else begin d:= a*power((1+b/100),c); Edit4.Text := FloatToStrF(d,ffFixed,0,2); end;
end;
  end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage('Рассчёт простых процентов происходит по формуле:'+#13+
  'S = P + P*i/100*n'+#13+
  'Рассчёт сложных процентов происходит по формуле:'+#13+
  'S = P + (1+i/100)^n'+#13+
  'Где S - это итоговая сумма, Р - это исходная сумма, i - это проценты а, n - количество лет'+#13);
end;



end.

