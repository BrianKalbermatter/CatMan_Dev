program buclefor;
var
    contador, x, salida : Integer; 
begin
    ReadLn(contador);
    For x:=0 to contador do 
        begin
            Write('Va por el:');
            WriteLn(x);
        end;
    WriteLn('Terminado');
// Cuenta Regresiva del 1 al 0
    ReadLn(contador);
    For x:=100 downto contador do
        begin
            Write('Va por el:');
            WriteLn(x);
        end;
// Bucle repite hasta que sea verdadera y se sale cuando es falso 
repeat
    Write('Introduce un numero entre el (0..9): ');
    ReadLn(salida);
until (salida>=0) and (salida<=9);
WriteLn('Por fin un valor correcto, terminado');


Write('Introduce un numero: '); ReadLn(contador);
x := 0;
while x <> contador do 
begin
    WriteLn(x);
    x := x + 1;
end;
end.




