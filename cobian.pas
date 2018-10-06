program cobian;
uses crt;
        const max=30;
        type intarray=record
                tabint:array[1..max] of integer;
                n:integer;
                end;
var
        array1,array2:intarray;
        jud:boolean;
        procedure inputarray(var T:intarray);
        var
                i:integer;
        begin
                i:=1;
                repeat
                        write('Masukan angka ke-',i,' : ');
                        readln(T.tabint[i]);
                        i:=i+1;
                until((T.tabint[i-1]=0) or (i-1=max));
                T.n:=i-2;
        end;

        procedure sortarray(var T:intarray);
        var
                i,j,min,temp:integer;
        begin
                for i:=1 to T.n-1 do
                        begin
                        min:=i;
                        for j:=i+1 to T.n do
                                begin
                                if (T.tabint[j]<T.tabint[min]) then
                                        min:=j;
                                end;
                        temp:=T.tabint[min];
                        T.tabint[min]:=T.tabint[i];
                        T.tabint[i]:=temp;
                        end;
                for i:=1 to T.n do
                        begin
                        writeln(T.tabint[i]);
                        end;
        end;

        function issimilar(T1,T2:intarray):boolean;
        var
                i,j,k:integer;
        begin
                k:=1;
                if (T1.n=T2.n) then
                        begin
                        for i:=1 to T1.n do
                                begin
                                for j:=k to T2.n do
                                        begin
                                        if (T1.tabint[i]=T2.tabint[j]) then
                                                begin
                                                issimilar:=TRUE;
                                                end;
                                        k:=k+1;
                                        end;
                                end;
                        end
                else
                        issimilar:=FALSE;
        end;

begin
clrscr;
        writeln('ARRAY PERTAMA');
        inputarray(array1);
        writeln;
        writeln('ARRAY KEDUA');
        inputarray(array2);
        writeln;
        writeln('HASIL URUT ARRAY PERTAMA');
        sortarray(array1);
        writeln;
        writeln('HASIL URUT ARRAY KEDUA');
        sortarray(array2);
        writeln;
        jud:=issimilar(array1,array2);
        writeln(jud);

readln;
end.