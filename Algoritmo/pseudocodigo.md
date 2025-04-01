# ![https://github.com/BrianKalbermatter](Iconopunio.jpg) {Algoritmos y Estructura de Datos}
INDICE
[![Estructura del pseudocodigo]]()


## Clonar el Repositorio
```bash
git clone https://github.com/BrianKalbermatter/CatMan_Dev.git
```

## Notas importantes:
    Son solo pseudocodigos personales para la Facultad! Especiales solo para una materia.
    
    IVA: 0.21
    IVA mas: 0.21

![DOC Personal](internal_documentation_guide-1200x684.jpg)
# [DOC Personal]
## Estructura del pseudocodigo: 

``` bash
ACCION ejercicioCinco ES 
    AMBIENTE:
        ALFA, BETA: Real
        JOTA, I, L: Entero
    PROCESO
        ALFA := 2.5 
        JOTA := 2
        I := 2 * JOTA
        L := JOTA * I
        ALFA := ALFA + BETA
        ESCRIBIR('Estas son las variables que tenes que colocarle sus valores: ');
        ESCRIBIR('El valor de "I" es =', I);
        ESCRIBIR('El valor de "L" es =', L);
        ESCRIBIR('El valor de Beta es=', BETA);
        ESCRIBIR('El valor de "ALFA" y "BETA" es =', ALFA);
FIN ACCION
```

    ACCION [Nombre_de_la_Accion] ES
        AMBIENTES:
            [Datos/ Definidar/ Inicializar -> Constantes o Variables]
        PROCESO
            [Acciones: Proceso de ejecucion]
    FIN ACCION    
## Palabras Reservadas    
    VARIABLES -> :
    CONSTANTES -> =
    ASIGNACION -> :=
    ABSO
    BOOLEANO
    NUMERICO -> ENTERO, REAL N(10)
    ALFANUMERICO -> CARACTER -> AN(20)
    CONSTANTES
    VARIABLES
    REDOND
    TRUNC
    ASIGNAR
    CARACTER
    ACCION -> SERIA EL TODO DE UN ALGORITMO
    FUNCION -> SUBACCION 
    MODULO -> PROCESO
    ESCRIBIR -> ("IMPRIMIR ALGO POR PANTALLA")
    LEER -> (TOMAR UN OBJETO)

## - Consigna 1.1.6
**Escriba un algoritmo que permita ingresar 3 valores numéricos y determine cuál es el mayor, el medio y el menor. (era el 3 de los complementarios)**
```bash
```

## - Consigna 1.1.7
**Escriba un algoritmo que acepte dos números, calcule la suma e imprima el mensaje de acuerdo al resultado obtenido.**

**Suma <= 50**
**Suma > 50 y <= 100**
**Suma > 100 y <= 200**
**Suma > 200**
```bash

```


# Estructuras Secuenciales
## - Consigna 1.1.5.1

**Escribir un programa que permita calcular el precio de un artículo para un año dado, considerando que la inflación es del 4 por 100 anual. La fórmula del precio es: P = C * (1 + R) ^ (N - A). C - Precio actual. N - Año futuro. R - Tasa de Inflación. A - Año actual.**
```bash
    ACCION inflaciones_de_articulos ES
        AMBIENTE
            tasa_de_inflacion = 4 / 100
            precio_actual: N(10)
            año_futuro: Entero
            año_actual: Entero
        PROCESO
            ESCRIBIR("Coloque el precio actual de su artículo, porfavor: ");
            LEER(precio_actual);

            ESCRIBIR("Coloque el año actual y luego el año futuro: ");
            ESCRIBIR("Año Actual: ");
            LEER(año_actual);
            ESCRIBIR("Año Futuro: ");
            LEER(año_futuro);
            result := precio_actual * (1 + tasa_de_inflacion) ** (año_futuro - año_actual)
            ESCRIBIR("Resultado con el calculo final del articulo agregando la tasa de inflacion:", result);
    FIN ACCION
```

## - Consigna 1.1.5.2
**Las raíces de una ecuación de segundo grado ax2+bx+c=0 son reales si y sólo si el discriminante dado por (b2−4ac) no es negativo. Se desea leer el valor de los coeficientes a, b, c e imprimir el resultado del discriminante. Realizar prueba de escritorio.**
```bash
    ACCION ecuacion_segundo_grado ES
        AMBIENTE
            variable_a: Real
            variable_b: Real
            variable_c: Real
        PROCESO
            ESCRIBIR("Enunciado: Coloque las distintas variables de a, b, c para resolver la ecuacion de segundo grado (b2−4ac)")
            ESCRIBIR("Variable A: ");
            LEER(variable_a)
            ESCRIBIR("Variable B: ");
            LEER(variable_b);
            ESCRIBIR("Variable C: ");
            LEER(variable_c); 
            resultado_discriminante := variable_b**2 - 4 * variable_a * variable_c
            ESCRIBIR("Esta es la discriminante resultado: ", resultado_discriminante);
    FIN ACCION
```

## - Consigna 1.1.5.3

**Se desea comprar una PC y una impresora. Calcular el precio total: el cual está dado por la suma de los precios de costos, los porcentajes de ganancia del vendedor y un 21% de IVA. Supóngase una ganancia del vendedor del 12% por la PC y 7% por la impresora. Se leen los costos y se imprimen el precio total de ventas.**
```bash
    ACCION PcAndImpresoras ES
        AMBIENTE
            //COMENTARIO: Costo de los electrodomesticos
            costo_impresora: 20000
            costo_PC: 90000
            //COMENTARIO: Mas el iva y su ganancia del vendedor
            mas_12_ganancia= 1.12
            mas_7_ganancia= 1.07 
            costo_iva= 1.21
        PROCESO
            //COMENTARIO: resultado con el IVA solo de las dos compras
            resultado_compra := costo_iva * costo_impresora + costo_PC
            
            //COMENTARIO: resultado con las ganancias mas el IVA
            resultado_con_ganancia := resultado_compra * mas_12_ganancia * mas_7_ganancia

            ESCRIBIR("Este es el costo de su impresora:", costo_impresora);
            
            ESCRIBIR("Este es el costo de su PC: ", costo_PC);
            
            //COMENTARIO: resultado de la compra con el IVA
            ESCRIBIR("Cantidad con IVA: ", resultado_compra);
            
            //COMENTARIO: resultado con las ganancias mas el IVA
            ESCRIBIR("Cantidad Final: ", resultado_con_ganancia);
    FIN ACCION
```

## - Consigna 1.1.5.4:

**Se desea calcular la superficie de un trapecio, para la cual se ingresa la longitud de ambas bases y la altura. En base a la fórmula: S = (Bmay + Bmen) × h sobre 2. Finalizando el proceso, emitir dicha superficie y los valores ingresados.**

```bash
    ACCION ejercicio_1.1.5.4 ES
        AMBIENTE:
            base_mayor:Real
            base_menor:Real
            altura:Real
            superficie_trapecio:Real
        PROCESO
            ESCRIBIR('Base Mayor: ');
            LEER(base_mayor);

            ESCRIBIR('Base Menor: '); 
            LEER(base_menor);

            ESCRIBIR('Altura: '); 
            LEER(altura);

            superficie_trapecio:= (base_mayor + base_menor) * altura / 2
            ESCRIBIR('La superficie es igual a: ', superficie_trapecio);
    FIN ACCION
```

## - Consigna 1.1.5.5

**Se desea calcular el valor de la sección (S) de un conductor, la cual se determina en función de la corriente eléctrica I y de la conductividad C del material (C=I/S). Además, a la sección así obtenida se le incrementa un 25% por razones de seguridad.**

```bash
    ACCION actividad_Dos ES
        AMBIENTE:
            s:Real
            i:Real
            //COMENTARIO: c=i/s
        PROCESO
            ESCRIBIR('El valor de la sección (S) de un conductor es: ');
            LEER(s);

            ESCRIBIR('El valor de la corriente electrica I es: ');
            LEER(i);

            //COMENTARIO: Incremento del 25%
            c := i/s
            resultado := c + (c * 25/100)
            ESCRIBIR('Mas el 25% es: ', resultado);
    FIN ACCION
```

## - Consigna 1.1.5.6

**Realizar un programa que lea dos número complejos, (a,b) y (c,d), y calcule su producto:(a,b)∗(c,d)=(ac−db,ad+ bc)**


## - Consigna 1.1.5.7

// Escriba un algoritmo que halle la media geométrica de tres valores X, Y, Z. Este debe emitir los tres valores por separado y luego el valor medio. La media geométrica es igual a (X×Y×Z)/3

# Estructuras condicionales y repetitivas
## - Consigna 1.1.6
Escriba un algoritmo que permita ingresar 3 valores numéricos y determine cuál es el mayor, el medio y el menor. (era el 3 de los complementarios)

Ejercicio 1.1.8
Escriba un algoritmo que permita conocer la edad de una persona, con solo ingresar la fecha de nacimiento y la fecha actual, ambas en el formato: DIA, MES, AÑO












