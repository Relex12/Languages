with Text_IO; use Text_IO;
function Fibonacci (n : Natural) return Natural is
begin
   if n = 0 then
      return 0;
   elsif n = 1 then
      return 1;
   else
      return Fibonacci(n-1) + Fibonacci(n-2);
   end if;
end Fibonacci;
