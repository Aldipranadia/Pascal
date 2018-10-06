program asal;

uses crt;
var
        nilai:array[0..1,0..1] of integer;

BEGIN
clrscr;

        nilai[0,0]:= 1;
        nilai[0,1]:= 2;
        nilai[1,0]:=3;
        nilai[1,1]:=4;

        writeln(nilai[0,0],' ');
        writeln(nilai[0,1]);
        writeln(nilai[1,0],' ');
        writeln(nilai[1,1]);

        readln;
END.

