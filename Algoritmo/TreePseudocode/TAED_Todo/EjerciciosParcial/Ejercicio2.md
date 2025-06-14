# Ejercicio 0
Una importante empresa de renombre internacional se ha enterado de su gran capacidad para trabajar con secuencias de datos elementales, y ha decidido contrarlo para encomendarle un trabajo sumamente importante.

La empresa posee informacion de las ventas realizadas durante el año 2023 a sus clientes en una secuencia de datos, con el siguiente formato:

FechaCompra (ddmm) | ID CLIENTE (4 caracteres)| Apellido y Nombre |#| CantidadProductosComprados (2 Caracteres) 

Nota: Los ID CLIENTE son únicos (aparecen una sola vez por cliente, ya que corresponde a la última venta que se le realizó a dicho cliente)

El de cada compra se encuentra en otra secuencia (pero esta vez de enteros) con el siguiente formato
PRECIO

Se le solicita:
Generar una secuencia de salida con el apellido y nombre de todos los clientes que han realizado compras en un mes en particular (que ingresa el usuario), y cuyos montos superen los $50.000
Si existen más compras que clientes o viceversa, informar error y cuantos

Una importante empresa de renombre internacional se ha enterado de su gran capacidad para trabajar con secuencias de datos elementales, y ha decidido contrarlo para encomendarle un trabajo sumamente importante.

# Ejercicio Completo por Fila
La empresa posee información de las ventas realizadas durante el año 2023 a sus clientes en una secuencia de datos, con el siguiente formato:

FechaCompra (ddmm) | ID CLIENTE (4 caracteres)| CantidadProductosComprados (2 Caracteres) | Apellido y Nombre |#| 

Nota: Los ID CLIENTE son únicos (aparecen una sola vez por cliente, ya que corresponde a la última venta que se le realizó a dicho cliente)

El detalle de cada compra se encuentra en otra secuencia (pero esta vez de enteros) con el siguiente formato
ID CATEGORIA PRODUCTO | PRECIO

Donde el ID CATEGORÍA se corresponde a alguno de los siguientes valores: (1) Carniceria (2) Limpieza (3) Farmacia (4) Bazar

Nota: Considerar además, que la segunda secuencia tendrá tantos productos como indique CantidadProductos comprados por cliente

Se le solicita:
## FILA 1
Generar una secuencia de salida con el apellido y nombre de todos los clientes que han realizado compras en un mes en particular (que ingresa el usuario), y cuyos montos superen los $50.000
Informar además, la cantidad de productos vendidos que corresponden a la Categoría de "Farmacia"
	
## FILA 2
Mostrar un listado con el siguiente formato.
	ID CLIENTE | FECHA COMPRA | IMPORTE TOTAL
Indicar al final la cantidad de productos comprados por categoría
	
## FILA 3
Generar dos secuencias de enteros de salidas: 
Una secuencia de enteros con los id de los clientes que superan un monto dado (ingresado por el usuario).
La otra con los id de los clientes que no cumplieron la condición.
Informar al final el ID CLIENTE que más gasto. 


# Ejercicio 1:
Dada un secuencia de caracteres con la información de los alumnos que se encuentran cursando la materia de Algoritmos y Estructura de datos , con la siguiente estructura:
**LEGAJO (4 caracteres)** Edad (2 caracteres) Apellido Y Nombre (#)

a) Generar una secuencia de salida con los Apellidos y Nombre de de todos los alumnos cuya edad sea mayor a un valor que ingrese un usuario. Separar cada apellido con un caracter "&"
b) Al final, determinar el promedio de edad de los alumnos que cursan Algoritmos.
```bash
//PURA, DEFINIDA 
    ACCION eje_1 ES
        AMBIENTE:
            sec1: secuencia de caracteres;// NOMBRES Y APELLIDOS
            sec3: secuencia de caracteres;// 
            v1: caracteres;
            v2: caracteres;
            v3: caracteres;
            contador: entero;
            user_var: entero;
        PROCESO:

            ARR(SEC1,SEC2,SEC3);
            AVZ(SEC1,V1);
            CREAR(SALIDA);
            contador := 0;
            MIENTRAS NFDS(sec1) HACER 
                SI V1 > user_var ENTONCES
                    
                AVZ();








```

# Ejercicio 2
Dada un secuencia de caracteres con la información de los alumnos que se encuentran cursando la materia de Algoritmos y Estructura de datos , con la siguiente estructura:
LEGAJO (4 caracteres) Edad (2 caracteres) Apellido Y Nombre (#)

a) Generar una secuencia de salida con los Apellido y Nombre de de todos los alumnos cuya edad sea mayor a un valor que ingrese un usuario. Separar cada apellido con un caracter "#"
b) Al final, determinar el porcentaje de alumnos que cumplen la condición.

# Ejercicio 3
Dada un secuencia de caracteres con la información de los alumnos que se encuentran cursando la materia de Algoritmos y Estructura de datos , con la siguiente estructura:
COMISION (1caracter) CantidadDeAlumnos(2 caracter) [LEGAJO (4 caracteres) Apellido Y Nombre (#) … ]

Nota: La cantidad de alumnos que figuran en [] es la que se indica en CantidadDeAlumnos, el “[“ y ”]” no se incluyen

a) Generar una secuencia de salida con el nombre y apellido de todos los alumnos cuyo legajo sea PAR.
b) Indicar por comisión, la cantidad de alumnos que cumplen la condición anterior.

