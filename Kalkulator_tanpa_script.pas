program  kalkulator_sederhana_tanpa_script;

uses crt;

var
        Hasil:real;
        opt:char;
        bil:array [1..2] of real;

begin
clrscr;
        write('Masukan bilangan pertama:');
        readln(bil[1]);
        write('Masukan bilangan kedua:');
        readln(bil[2]);
        write('Operator[*][-][+][/]');
        readln(opt);


        if (opt='*') then
           begin
           Hasil:=bil[1]*bil[2];
           end
           else
                if(opt='-') then
                begin
                Hasil:=bil[1]-bil[2];
                end
                else
                        if(opt='+') then
                        begin
                        Hasil:=bil[1]+bil[2];
                        end
                        else
                                if(opt='/') then
                                begin
                                Hasil:=bil[1]/bil[2];
                                end;
        writeln('Hasilnya adalah ',Hasil:0:2);
        readln;

end.
