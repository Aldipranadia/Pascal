program konsekutif;

uses crt;

var
        bil:integer;
        function iskon(bil:integer):boolean;
        var
                digit,prev,sisa:integer;
        begin
                digit:=bil mod 10;
                sisa:=bil div 10;
                iskon:=true;
                repeat
                        prev:=digit;
                        digit:=sisa mod 10;
                        sisa:=sisa div 10;
                        if((prev-digit<>1)and(digit-prev<>1))then
                                iskon:=false;
                until(sisa=0);
        end;
begin
clrscr;
        write('Masukan bilangan : ');
        readln(bil);
        while bil>0 do
                begin
                        if bil>9 then
                                begin
                                if iskon(bil) then
                                        writeln('Konsekutif')
                                else
                                        writeln('Tidak konsekutif');
                                end;
                        write('Masukan bilangan : ');
                        readln(bil);
                end;
readln;
end.
