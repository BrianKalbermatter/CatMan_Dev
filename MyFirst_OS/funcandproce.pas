//  Ejercicio Nro1 | Procedimiento y Funciones
//A - Define claramente la diferencia entre un procedimiento y una funcion en el contexto de la programacion. Explica cuando es mas apropiado utukuzar uno u otro, y proporciona ejemplos concretos.

// - Procedimiento:
        // No devuelve un valor directamente.
        // Su uso principal es:  Ejecutar una secuencia de instrucciones.
        // Puede tener parametros SI.
        // Llamada dentro de expresiones. No suele usarse dentro de expresiones.
// - Funcion:
        // Devuelve un valor con return.
        // Uso principal es: Calcular y retornar un resultado.
        // Puede tener parametros SI.
        // LLamadas dentro de expresiones. Se puede usar dentro de expresiones.

// Ejemplo de Procedimiento en PASCAL:
program funcandproce;

procedure Saludar(nombre: string);

begin
    WriteLn(nombre);
end;

begin
    Saludar('Juan');
end.
