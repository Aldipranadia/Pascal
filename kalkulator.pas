uses crt;
var
b1, b2,i, operasi:integer;
hasil:real;

begin
clrscr;
write ('bilangan 1=');
readln (b1);
write ('bilangan 2=');
readln (b2);
write ('operasi = 1(+) 2(-) 3(/) 4(*) 5(^)');
readln (operasi);
hasil:=1;

if (operasi = 1) then
hasil := b1+b2
else if (operasi=2)then
hasil := b1-b2
else if (operasi=3) then
hasil := b1/b2
else if (operasi=4)then
hasil := b1*b2
else if (operasi=5) then
for i:=1 to b2 do
begin
hasil :=hasil*b1;
end;
writeln('hasilnya=',hasil:7:2);
readln;
end.
