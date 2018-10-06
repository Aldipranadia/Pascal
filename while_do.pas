program while_do;

uses crt;

var
        i:integer;

begin
clrscr;
        i:=3;
        writeln('Berikut deret untuk kelipatan 3: ');
        while (i<= 30) do
          begin
            write(i,' ');
            i:=i + 3;
          end;

readln;
end.