uses crt;
var a:array[1..20] of integer;
    i,j,k,n,c,sum,p,x,q:integer;
begin
ClrScr;
Randomize;
Write('n=');
Readln(n);
 for i:=1 to n do
  begin
   a[i]:=random(8)-2;
   Write(a[i]:4);
  end;
Writeln;
sum:=0;
p:=1;
 for i:=1 to n do
  if i mod 2=0 then
   p:=p*a[i];
 for i:=1 to n do
  if a[i]=0 then begin
   c:=i;
  break;
 end;
 for i:=n downto 1 do
  if a[i]=0 then begin
   k:=i;
   break;
  end;
sum:=0;
 for i:=c to k do
  sum:=sum+a[i];
 Writeln('Sum=',sum);
 Writeln('C=',c,' K=',k);
 Writeln('P=',p);
 for i:=1 to n do
   if (a[i]>0) then
    begin
     q:=q+1;
     x:=a[i];
     for j:=i downto q+1 do
     a[j]:=a[j-1];
     a[q]:=x;
    end;
Writeln;
 for i:=1 to n do
  Write(a[i]:4);
Readln;
end.