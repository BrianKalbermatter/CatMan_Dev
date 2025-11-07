program corte_control;(*El Encabezamiento*)
//Constructor de tipos
TYPE(*Es una palabra clave muy importante que se usa para definir tipos de datos personalizados.*)
// Estas son enumeraciones
colores = (rojo, verde, azul, violeta, amarillo, blanco, gris);
dias = (lunes, martes, miercoles, jueves, viernes, sabado, domingo);
// Estos son Subrangos
edad = 0..120;
letras = 'A'..'Z';
temperaturas = -50..50;
// Estos son arreglos
vector = array[1..10] of integer;
matriz = array[1..5, 1..5] of real;
// Records (estructuras)
persona = record
    nombre: string;
    edad: integer;
    altura: real;
end;

//Sets (conjuntos)
vocales = set of char;

var
color: colores;
//Para usar el record luego se usa
estudiante: persona;
numero1, numero2: integer;

// FUNCIONES
function sumar(a, b: integer): integer;
begin
    sumar := a + b;
end;

function multiplicar(x, y: integer): integer;
begin
    multiplicar := x * y;
end;

function es_par(n: integer): boolean;
begin
    es_par := (n mod 2) = 0;
end;

function obtener_pi: real;
begin
    obtener_pi := 3.14159;
end;

begin // No son sentencias
//Asigno estudiante .(el punto es el campo) edad 
estudiante.edad := 16;

// Ejemplos de uso de funciones
WriteLn('=== Ejemplos de Funciones ===');
WriteLn('Ingrese primer numero:');
ReadLn(numero1);
WriteLn('Ingrese segundo numero:');
ReadLn(numero2);

WriteLn('La suma es: ', sumar(numero1, numero2));
WriteLn('La multiplicacion es: ', multiplicar(numero1, numero2));
WriteLn('El numero ', numero1, ' es par? ', es_par(numero1));
WriteLn('El valor de PI es: ', obtener_pi:0:5);

WriteLn;
WriteLn('De que color esta ahora?(rojo o verde?)');
ReadLn(color);
    case color of
        verde: WriteLn('Esta Verde');
        rojo: WriteLn('Esta rojo');
    end;    
end. // No son sentencias


