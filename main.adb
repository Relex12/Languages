with Hello;
with Fibonacci;
with Text_IO; use Text_IO;

procedure Main is
--   S : String := Integer'Image (Fibonacci(20));
begin
   Hello;
   Put_Line(Integer'Image (Fibonacci(-3)));
end Main;
