program tset3;

uses crt;

var
        i:integer;
        stat:boolean;

begin
clrscr;
        stat:=FALSE;
        repeat
                if(i mod 5=3)then
                        begin
                        writeln('HALO');
                        stat:=TRUE
                        end;
                i:=i+1;
        until(stat=TRUE);
readln;
end.