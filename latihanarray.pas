program no1;

uses crt;

type
        tab=array[1..10] of char;
var
        i:integer;
        b:tab;

        function cekpalindrom(a:tab ; n:integer):boolean;
        var
                i,y,t:integer;
        begin
                t:=0;
                y:=n;
                for i:=1 to n do
                        begin
                                writeln(a[y]);
                                        if(a[i]=a[y]) then
                                                begin
                                                        t:=t+1;
                                                end;
                                y:=y-1;
                        end;
                if (t=n) then
                        cekpalindrom:=TRUE
                else
                        cekpalindrom:=FALSE;
        end;

begin
clrscr;
        for i:=1 to 5 do
                begin
                        write('Masukan huruf ke-',i,' : ');
                        readln(b[i]);
                end;
        writeln(cekpalindrom(b,i));
readln;
end.