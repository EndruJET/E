unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  coa,cob:integer;
  mas:array[1..10,1..3] of integer;
  Form1: TForm1;
  procedure circle(x,y,r:integer);
  procedure minc(x,y,r:integer);
  procedure cir(x,y,r:integer);
  procedure pol(x,y,r:integer);
  procedure polk(x,y,r:integer);
  procedure pola(x,y,r:integer);
  procedure polc(x,y,r:integer);


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i,a,b,c:integer;     x,y,ang,r:real;

begin
i:=0;
With image1 Do
image1.Canvas.Brush.Color := clBlack;
image1.Canvas.Brush.Style := bsSolid;
//image1.FloodFill(x,y,color,fsSurFace);
image1.Canvas.Rectangle(0,0,ClientWidth,ClientHeight);
image1.Canvas.Pen.Color := clWhite;
for i:=1 to 9 do
  begin
    a:=i*80;
    image1.Canvas.MoveTo(a,0);
    image1.Canvas.LineTo(a,800);
    image1.Canvas.MoveTo(0,a);
    image1.Canvas.LineTo(800,a);
  end;
//image1.Canvas.Pixels[15,15];
a:=strtoint(edit1.Text);
b:=strtoint(edit2.Text);
c:=strtoint(edit3.Text);
//image1.Canvas.Create.Pen.Width := 2;
image1.Canvas.MoveTo(400-a,400-3*a);
mas[1,1]:=400-a;
mas[1,2]:=400-3*a;
mas[1,3]:=1;
                                        //    image1.Canvas.MoveTo(400-a+5,400-3*a);
                                        //    image1.Canvas.LineTo(400-a+5,400+3*a);



image1.Canvas.LineTo(400-a,400+3*a);
mas[2,1]:=400-a;
mas[2,2]:=400+3*a;
mas[2,3]:=2;
image1.Canvas.MoveTo(400+a,400-3*a);
mas[3,1]:=400+a;
mas[3,2]:=400-3*a;
mas[3,3]:=3;
image1.Canvas.LineTo(400+a,400+3*a);
mas[4,1]:=400+a;
mas[4,2]:=400+3*a;
mas[4,3]:=4;
circle(400, 400+3*a, a);         //   400, 400+3*a �������
mas[5,1]:=400;
mas[5,2]:=400+3*a;
mas[5,3]:=5;
minc(400, 400-3*a, a);
cir(400-4*a, 400-4*a, b);
mas[6,1]:=400-4*a;
mas[6,2]:=400-4*a;
mas[6,3]:=6;
cir(400+4*a, 400+4*a, b);
mas[7,1]:=400+4*a;
mas[7,2]:=400+4*a;
mas[7,3]:=7;
cir(400-4*a, 400+4*a, b);
mas[8,1]:=400-4*a;
mas[8,2]:=400+4*a;
mas[8,3]:=8;
cir(400+4*a, 400-4*a, b);
mas[9,1]:=400+4*a;
mas[9,2]:=400-4*a;
mas[9,3]:=9;
cir(400-4*a, 400, c);
cir(400+4*a, 400, c);
image1.Canvas.MoveTo(400,400+4*a);
image1.Canvas.LineTo(400+4*a,400+8*a);
image1.Canvas.MoveTo(400,400+4*a);
image1.Canvas.LineTo(400-4*a,400+8*a);
pol(400, 400, a*9);
polk(400, 400, a*9);
pola(400, 400-6*a, round(a*3));
polc(400, 400-6*a, round(a*3));
end;

procedure circle(x,y,r:integer);
 var alfa: integer;
 begin
  form1.image1.Canvas.moveto(x+r,y);
  for alfa:=1 to 360 do
  form1.image1.Canvas.lineto(round(x+r*cos(alfa*pi/360)), round(y+r*sin(alfa*pi/360)))
 end;

 procedure minc(x,y,r:integer);
 var alfa: integer;
 begin
  form1.image1.Canvas.moveto(x+r,y);
  for alfa:=1 downto -360 do
  form1.image1.Canvas.lineto(round(x+r*cos(alfa*pi/360)), round(y+r*sin(alfa*pi/360)))
 end;

 procedure cir(x,y,r:integer);
 var alfa: integer;
 begin
  form1.image1.Canvas.moveto(x+r,y);
  for alfa:=1 to 720 do
  form1.image1.Canvas.lineto(round(x+r*cos(alfa*pi/360)), round(y+r*sin(alfa*pi/360)))
 end;

 procedure pol(x,y,r:integer);
 var alfa: integer;
 begin
  alfa:=-175;
  form1.image1.Canvas.moveto((round(x+r*cos(alfa*pi/360))), round(y+r*sin(alfa*pi/360)));
  for alfa:=-175 to 128 do
  form1.image1.Canvas.lineto(round(x+r*cos(alfa*pi/360)), round(y+r*sin(alfa*pi/360)))
 end;

 procedure polk(x,y,r:integer);
 var alfa: integer;
 begin
  alfa:=-487;
  form1.image1.Canvas.moveto((round(x+r*cos(alfa*pi/360))), round(y+r*sin(alfa*pi/360)));
  for alfa:=-487 to -185 do
  form1.image1.Canvas.lineto(round(x+r*cos(alfa*pi/360)), round(y+r*sin(alfa*pi/360)))
 end;


 procedure pola(x,y,r:integer);
 var alfa: integer;
 begin
  alfa:=-165;
  form1.image1.Canvas.moveto((round(x+r*cos(alfa*pi/360))), round(y+r*sin(alfa*pi/360)));
  for alfa:=-165 to 141 do
  form1.image1.Canvas.lineto(round(x+r*cos(alfa*pi/360)), round(y+r*sin(alfa*pi/360)))
 end;

  procedure polc(x,y,r:integer);
 var alfa: integer;
 begin
  alfa:=220;
  form1.image1.Canvas.moveto((round(x+r*cos(alfa*pi/360))), round(y+r*sin(alfa*pi/360)));
  for alfa:=220 to 520 do
  form1.image1.Canvas.lineto(round(x+r*cos(alfa*pi/360)), round(y+r*sin(alfa*pi/360)))
 end;



procedure TForm1.Image1Click(Sender: TObject);
var
  pt: TPoint;  j:integer;
begin
  GetCursorPos(pt);
  pt := ScreenToClient(pt);
  coa:=pt.Y - Image1.Left;
  cob:=pt.X - Image1.Top;
  for j := 1 to 9 do

    if mas[j,1]=coa then
      if mas[j,2]=cob then
         ShowMessage('����������: X=' + IntToStr(coa) +
              ' Y=' + IntToStr(cob) +
              ' �=' + IntToStr(mas[j,3]));


end;

end.
