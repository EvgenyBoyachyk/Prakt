Var
  x: Array [1..100] of Integer;
  i,n,otr,nul,pol: Byte;
BEGIN
otr:=0;
nul:=0;
pol:=0;
Write('Введите кол-во элементов: ');
Readln(n);
Randomize;
For i:=1 to n do
begin
  x[i]:=Random(11)-5;
  Write(x[i],' ');
  If x[i]<0 Then otr:=otr+1
  Else If x[i]=0 Then nul:=nul+1
  Else pol:=pol+1;
end;
Writeln;
Writeln('Отрицательных: ',otr);
Writeln('Нулевых: ',nul);
Writeln('Положительных: ',pol);
Readln
END.