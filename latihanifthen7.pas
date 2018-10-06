program konvert_int_ke_string;

uses crt;

var
        usia:integer;
        lulus:string;
        ipk:real;
        jkl:char;
begin
clrscr;
        write('Usia : ');
        readln(usia);
        write('Lulusan(S1/D3) : ');
        readln(lulus);
        write('IPK : ');
        readln(ipk);
        write('Jenis Kelamin(L/P) : ');
        readln(jkl);
        if((jkl='l')or(jkl='L'))then
                begin
                if((usia<28)and(lulus='D3')or(lulus='S1')and(ipk>=3.00))then
                        writeln('ANDA DI TERIMA')
                else
                        writeln('ANDA DI TOLAK');
                end
        else
                if((jkl='p')or(jkl='P'))then
                begin
                if((usia<25)and((lulus='S1')or(lulus='s1'))and(ipk>2.75))then
                        writeln('ANDA DI TERIMA')
                else
                        writeln('ANDA DI TOLAK');

                end;

readln;
end.