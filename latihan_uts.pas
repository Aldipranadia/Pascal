program konsekutif;

uses crt;

var
        bil:integer;
        function iskon(x:integer):boolean;
        var
                a,b,c,d,i,j,k:integer;
        begin
        a:=x mod 10;
        i:=x div 10;
        b:=i mod 10;
        j:=i div 10;
        c:=j mod 10;
        k:=j div 10;
        d:=k;
        if ((a-b=1) and (b-c=1) and (c-d=1)) then
                iskon:=true
        else
                iskon:=false;
        end;
begin
clrscr;
        write('Masukan bilangan : ');
        readln(bil);
        while(bil>0)do
                begin
                        if(bil>9)then
                        begin
                                if(iskon(bil)=false)then
                                        write('Konsekutif')
                                else
                                        write('Tidak konsekutif');
                        end;
                        writeln;
                        write('Masukan bilangan : ');
                        readln(bil);
                end;
readln;
end.
