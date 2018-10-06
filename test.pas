program naon;

uses crt;

var
        z,i:integer;

begin
clrscr;
        for i:=0 to 5 do
                begin
                z:=i+2;
                writeln(i,' ',z);
                end;
        for i:=0 to 5 do
                writeln(i + z);
readln;
end.
