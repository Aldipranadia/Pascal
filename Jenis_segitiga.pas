program segitiga;
uses crt;
var
sisi1,sisi2,sisi3: integer;
begin
clrscr;
repeat
write('masukan sisi 1:');
readln(sisi1);
write('masukan sisi 2:');
readln(sisi2);
write('masukan sisi 3:');
readln(sisi3);
if ((sisi1=sisi2) and (sisi3=sisi2)) then
        write('segitiga sama sisi')
else
        if ((sisi1<>sisi2)and(sisi2<>sisi3)and(sisi1<>sisi3)) then
                write('segitiga sembarang')
else
        write('segitiga sama kaki');
        writeln;
        writeln;
        writeln;
until((sisi1=0)and(sisi2=0)and(sisi3=0));
readln;
end.


