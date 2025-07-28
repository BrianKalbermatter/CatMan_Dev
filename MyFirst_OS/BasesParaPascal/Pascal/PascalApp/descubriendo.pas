//Nombre del programa
program descubriendo;

//Uso de las librerias
uses crt

//Constantes Globales
const 
    PI = 3.14159265358979323846;
//Variables Globales
var
    nombre: string;
    edad: integer;

//Funciones Declaraciones, si hay algunos
//function Persona(Humano: boolean): string;
//begin
//    if Humano = True then
//        Persona := 'Soy un Humano';
//    else
//        Persona := 'No soy Humano';
//end;

//Procedimientos
procedure Saludar(nombre: string);
begin
    WriteLn(nombre);
end;

procedure Edad(edad: integer);
begin
    WriteLn(edad);
end;

begin//Inicio del programa principal
    WriteLn(Persona(Humano));
    Saludar('Juan');
    Edad(20);
    WriteLn(PI);
end.//Fin del programa principal

