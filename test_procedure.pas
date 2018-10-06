program iseng;

uses crt;

var
        pil:integer;
        procedure menu(pil:integer);

        var
                s,t,L,K:real;
        begin
                case pil of
                        1:begin
                                write('Masukan sisi : ');
                                readln(s);
                                L:=s*s;
                                K:=4*s;
                          end;
                        2:begin
                                write('Masukan alas : ');
                                readln(s);
                                write('Masukan tinggi : ');
                                readln(t);
                                L:=s*t/2;
                                K:=s+t+(sqrt(s*s+t*t));
                          end;
                        3:begin
                                write('Masukan jari-jari : ');
                                readln(s);
                                L:=s*s*3.14;
                                K:=2*s*3.14;
                          end;
                          else
                                writeln('INVALID INPUT');
                          end;
                writeln('Luas : ',L:0:2);
                writeln('Keliling : ',K:0:2);
        end;
begin
clrscr;
        writeln('Nama bidang :');
        writeln('1.Persegi');
        writeln('2.Segitiga siku-siku');
        writeln('3.Lingkaran');
        write('Pilihan : ');
        readln(pil);
        menu(pil);
readln;
end.