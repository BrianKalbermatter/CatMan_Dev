# ![https://github.com/BrianKalbermatter](Iconopunio.jpg) {Algoritmos y Estructura de Datos}
INDICE
[![Estructura del pseudocodigo]]()


## Clonar el Repositorio
```bash
git clone https://github.com/BrianKalbermatter/CatMan_Dev.git
```

## Notas importantes:
**Son solo pseudocodigos personales para la Facultad! Especiales solo para una materia.**

![DOC Personal](internal_documentation_guide-1200x684.jpg)
# [DOC Personal]
IVA: 0.21
IVA mas: 0.21
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
    ACCION -> SERIA EL TODO DE UN ALGORITMO
    FUNCION -> SUBACCION 
    MODULO -> PROCESO
    ESCRIBIR -> ("IMPRIMIR ALGO POR PANTALLA")
    LEER -> (TOMAR UN OBJETO)




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
```bash
    ACCION numeros_complejos ES
        AMBIENTE:
            variable_a: Real
            variable_b: Real
            variable_c: Real
            variable_d: Real
            real: Real
            imaginaria: Real
        PROCESO
            ESCRIBIR("Numeros Complejos");

            ESCRIBIR("Escriba el primer valor: ");
            LEER(variable_a);
            ESCRIBIR("Escriba el segundo valor: ");
            LEER(variable_b);
            ESCRIBIR("Escriba el tercer valor:");
            LEER(variable_c);
            ESCRIBIR("Escriba el tercer valor");
            LEER(variable_d);
            real := variable_a * variable_c - variable_b * variable_d
            imaginaria := variable_primera * variable_d + variable_segundo * variable_c
            ESCRIBIR("El producto de los numeros complejos es: ", real, " + ", imaginaria, " i");
    Fin Accion
```

## - Consigna 1.1.5.7
**Escriba un algoritmo que halle la media geométrica de tres valores X, Y, Z. Este debe emitir los tres valores por separado y luego el valor medio. La media geométrica es igual a (X×Y×Z)/3**
```bash

```


# Estructuras condicionales y repetitivas 
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
## - Consigna 1.1.8
**Escriba un algoritmo que permita conocer la edad de una persona, con solo ingresar la fecha de nacimiento y la fecha actual, ambas en el formato: DIA, MES, AÑO**
```bash

```














# Decisiones en el Mundo Real
## 🔹 Objetivo:

**Trabajar en equipo para resolver un problema utilizando estructuras condicionales, asignándolo en función de los apellidos de los integrantes.**


## 🧩 Problemas a Resolver:
**🔹 Problema 1: 📦 Cálculo de Envío**


Una tienda en línea ofrece envíos gratuitos solo si el monto de la compra supera los $10,000. Si la compra es menor, el costo de envío es de $800. Escribe un programa que reciba el monto de una compra y determine si el envío es gratis 🚚💨 o si se debe pagar el costo adicional.
```bash
    ACCION tienda_linea ES
        AMBIENTE
            monto: Real
        PROCESO
            ESCRIBIR("Ingrese el precio total de la compra: ");
            LEER(monto);

            SI(monto > 10000)
                ESCRIBIR("El envio sera gratuito.");
            SINO
                ESCRIBIR("El envio costara $800");
                Fin SI
            Fin SI
            
    FIN ACCION
```


🔹 Problema 2: 🕐 Hora del Día

Pide al usuario que ingrese la hora actual en formato 24 horas (ejemplo: 15 para 3 PM). Luego, muestra un mensaje dependiendo de la franja horaria:




6 a 11 → "🌅 ¡Buenos días!"




12 a 17 → "🌞 ¡Buenas tardes!"




18 a 23 → "🌙 ¡Buenas noches!"




0 a 5 → "🌃 ¡Es de madrugada!"




🔹 Problema 3: 🎢 Acceso a una Atracción

Una montaña rusa tiene dos requisitos de seguridad:




La altura mínima para subir es de 1.50 metros.




La edad mínima es de 12 años.

Escribe un programa que reciba la altura y edad de una persona y determine si puede subir 🎟️ o si no cumple los requisitos 🚫.




🔹 Problema 4: 💳 Pago con Tarjeta

Un restaurante permite pagar con tarjeta solo si el monto total de la cuenta supera $2000. Si es menor, solo acepta efectivo. Escribe un programa que reciba el monto de la cuenta y muestre si se puede pagar con tarjeta o solo en efectivo.💡 Preguntas Finales:

1️⃣ ¿Cómo decidieron qué estructura de control era la más adecuada para resolver el problema? 🧐

2️⃣ ¿Qué dificultades tuvieron en el trabajo en equipo? 🤝

3️⃣ ¿Qué evaluarían ustedes para considerar el mejor algoritmo que resuelve un problema dado? 🏆


💡 Consejo: Trabajen en equipo, discutan las soluciones y revisen sus respuestas antes de entregarlas. ¡Buena suerte! 🚀🔥










