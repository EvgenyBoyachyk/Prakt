Var
  i,j,n,m,min,ind: Integer;
  x: Array[1..10,1..10] of Integer;
  b: Array[1..10] of Integer;
BEGIN
Writeln('Введите размеры массива:');
Readln(n,m);
Writeln('Введите элементы массива:');
For i:=1 to n do
For j:=1 to m do
Readln(x[i,j]);
For i:=1 to n do
begin
  min:=+min;
  For j:=1 to m do
  begin
    If x[i,j]>min Then
    begin
      min:=x[i,j];
      ind:=j;
    end;
    Write(x[i,j]:2);
    b[i]:=ind
  end;
  Writeln
end;
Writeln('Массив B:');
For i:=1 to n do
Write(b[i],' ');
END.