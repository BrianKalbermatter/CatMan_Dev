Ejercicio N° 1 

Una cadena de hoteles necesita un informe de ocupación y pagos para el mes de JUNIO. Para esto, se cuenta con dos secuencias de datos:

Secuencia de caracteres:
Estructura: Hotel (cantidad indeterminada de caracteres) & cantidad de reservas (3 caracteres) hotel & cantidad de reservas....FDS

Ejemplo: 

HotelAlas&340HotelBahia&999… FDS

Secuencia de enteros:
Estructura: Para cada reserva: Nro de reserva, tipo de habitación (1: single, 2: doble, 3: suite), cantidad de noches, importe.

Ejemplo: 

1234 | 1 | 3 | 120.000 | 2345 | 3 | 2 | 65.000 |...FDS

**Nota:** La función ConvertiraNumero(caracter) puede ser utilizada si se considera necesario para convertir un carácter a un dato entero.

# Se pide escribir un algoritmo que permita:

1. Generar una secuencia de salida de enteros que contenga el número de reserva y el importe, cuando el importe sea menor a 90.000.

2. Informe, para cada hotel, cuál fue la reserva (NroReserva) con mayor cantidad de noches (y la cantidad de noches).

RAZONAMIENTO:

HotelAlas&|340| HotelBahia&|999| … FDS
1234 | 1 | 3 | 120.000 | 2345 | 3 | 2 | 65.000 |...FDS

## Variables
