program jenis_segitiga;

uses crt;

var
        sisi1,sisi2,sisi3:integer;

begin
clrscr;
        write('Masukan sisi pertama : ');
        readln(sisi1);
        write('Masukan sisi kedua : ');
        readln(sisi2);
        write('Masukan sisi ketiga : ');
        readln(sisi3);
        if((sisi1=sisi2)and(sisi1=sisi3)and(sisi2=sisi3))then
                writeln('Segitiga sama sisi')
        else
                if((sisi1=sisi2) or (sisi1=sisi3)or(sisi2=sisi3))then
                        writeln('Segitiga sama kaki')
                else
                        writeln('Segitiga sembarang');

readln;
end.