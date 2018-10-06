program operator_perbandingan;
uses crt;
var
  a,b:integer;
  hasil:boolean;
begin
  clrscr;
  a:=6;
  b:=8;
  writeln('a = ',a);
  writeln('b = ',b);

  writeln;

  hasil:= a = b;
  writeln('a = b  :',hasil);
  hasil:= a <> b;
  writeln('a <> b :',hasil);
  hasil:= a > b;
  writeln('a > b  :',hasil);
  hasil:= a < b;
  writeln('a < b  :',hasil);
  hasil:= a >= b;
  writeln('a >= b :',hasil);
  hasil:= a <= b;
  writeln('a <= b :',hasil);

  readln;
end.
