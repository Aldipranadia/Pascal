uses crt;
var
a,b,c,d:integer;
e,f,g:real;

begin
clrscr;
repeat
textcolor(11);
writeln('Program Kalkulator');
writeln('******************************');
writeln;
writeln('Macam-macam program Kalkulator');
writeln('______________________________');
writeln('1.Tambah');
writeln('2.Kurang');
writeln('3.Kali');
writeln('4.Bagi');
writeln('5.Keluar');
writeln('______________________________');
writeln;
write('Silakan memilih yang anda inginkan : ');
readln(a);
case a of

1:begin
write('Masukkan angka pertama: ');readln(b);
write('Masukkan angka kedua: ');readln(c);
d:=b+c;
writeln('Hasil : ',d);readln;
end;

2:begin
write('Masukkan angka pertama: ');readln(b);
write('Masukkan angka kedua: ');readln(c);
d:=b-c;
writeln('Hasil : ',d);readln;
end;

3:begin
write('Masukkan angka pertama: ');readln(b);
write('Masukkan angka kedua: ');readln(c);
d:=b*c;
writeln('Hasil : ',d);readln;
end;

4:begin
write('Masukkan angka pertama: ');readln(e);
write('Masukkan angka kedua: ');readln(f);
g:=e/f;
writeln('Hasil : ',g);readln;
end;
end;
writeln('*****************');
writeln;
writeln('Thanks for trying :)');
writeln;
writeln('*****************');
readln;
clrscr;
until a=5
end.
