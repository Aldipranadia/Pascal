uses crt;
const
 matrix : array [1..6] of string =
           ('##    ##    ##  ###### #####   ## ##    ##',
            '###  ###   ## # ###### ### ##  ## ##   ## ',
            '## ## ##  ##  #   ##   ### ##  ##  ## ##  ',
            '## ## ## ######   ##   #####   ##   ###   ',
            '##    ## ##   #   ##   ### ##  ##  ## ##  ',
            '##    ## ##   #   ##   ###  ## ## ##   ## ');
var
 x,y,i,j,x2,y2,k : byte;
 kar     : array[0..24] of char;
 bertemu : boolean;


procedure cek_benturan(var a,b : byte);
begin
 bertemu := ((((a >= x2) and (a <= x2 + 50))  and ((b >= y2) and (b <= y2 + 6)))
     and (matrix[b - y2 + 1][a - x2 + 1] = '#'));
end;

begin
 TextBackground(black);
 TextColor(green);
 clrscr;
 x2 := 20;
 y2 := 10;
  randomize;
  i := 1;
  repeat
   x := random(80);
  { if (x mod 2 <> 0) then x := x + 1;}
   for y := 1 to 24 do
    begin
     kar[y] := (char(random(512)));
     gotoxy(x,y);
     cek_benturan(x,y);
     if (bertemu = true) then
     begin
      TextColor(white);
      writeln('#');
     end
    else
     TextColor(green);
     write(kar[y]);
     delay(1000);
     bertemu := false;
    end;
    if ( i > 5 ) then
     begin
      for y := 1 to 24 do
       begin
        bertemu := false;
        j := random(80);
        k := random(24);
        {if (j mod 2 <> 0) then j := j + 1;}
        gotoxy(j, k);
        cek_benturan(j, k);
        if (bertemu <> true) then
        write(' ');
       end;
     end;
   inc(i);
  until keypressed;
  readln;
 end.
