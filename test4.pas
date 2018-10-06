program test;

uses crt;

var
        i:integer;
        stat:boolean;

begin
clrscr;
        i:=7;
        stat:=false;
        repeat
                if(i mod 5=3)then
                        begin;
                        writeln('Halo');
                        stat:=true;
                        end;
                i:=i+1;
        until(stat=true);
readln;
end.