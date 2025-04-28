# ![https://github.com/BrianKalbermatter](Iconopunio.jpg) {Algoritmos y Estructura de Datos}

![Portada](39t58hlgr7nd1.png)

# INDICE
- [Repo](#clonar-el-repositorio)
- [Introduccion](#introduccion)
- [Estructura](#estructura)
- [Estructura del Pseudocodigo](#estructura-del-pseudocodigo)
- [Ejercicios](#ejercicios-de-algoritmo)
- [Estructura Secuencial](#estructuras-secuenciales)
- [Ej: 1.1.5.1](#consigna-1151)
- [Ej: 1.1.5.2](#consigna-1152)
- [Ej: 1.1.5.3](#consigna-1153)
- [Ej: 1.1.5.4](#consigna-1154)
- [Ej: 1.1.5.5](#consigna-1155)
- [Ej: 1.1.5.6](#consigna-1156)
- [Ej: 1.1.5.7](#consigna-1157)
- [Ej: 1.1.6](#--consigna-116)
- [Ej: 1.1.7](#--consigna-117)
- [Ej: 1.1.8](#--consigna-118)
- [Desiciones del Mundo Real: Parte I](#decisiones-en-el-mundo-real-parte-i)
- [Desiciones del Mundo Real: Parte II](#ejercicios-del-mundo-real-parte-ii)
- [Algoritmos de Repaso](#algoritmo-para-repasar)


---
- [Pascal](/MyFirst_OS/pascal.pas)
---

![logo](logo-GitHub.jpg)

---

# Clonar el Repositorio
```bash
git clone https://github.com/BrianKalbermatter/CatMan_Dev.git
```

## Notas importantes:
**Son solo pseudocodigos personales para la Facultad! Especiales solo para una materia.**
**Antes de realizar cada ejercicio siempre leer primero bien la consigna y luego realizarla.**

Primero las constantes y luego las variables.















![Imagen_Doc](internal_documentation_guide-1200x684.jpg)

# Introduccion
## Palabras Reservadas - Pascal  
    VARIABLES -> :
    CONSTANTES -> = Para definir una constante se debe colocar primero en la estructura el type.
    ASIGNACION -> :=
    ABSO
    BOOLEANO
    ENTERO - Integer
    NUMERICO -> Entero, Real, N(10)
    ALFANUMERICO -> CARACTER -> AN(20)
    CONSTANTES
    VARIABLES
    REDOND
    TRUNC
    ASIGNAR
    ACCION -> SERIA EL TODO DE UN ALGORITMO -> program
    AMBIENTE -> var
    FUNCION -> SUBACCION, Procedimiento
    MODULO -> PROCESO
    ESCRIBIR -> ("IMPRIMIR ALGO POR PANTALLA") - WriteLn('');
    LEER -> (TOMAR UN OBJETO) - ReadLn();
# Estructura
# Estructura del Proceso:
    begin
    end. (fin punto final)

# Numeros o cantidad de numeros de variables
    Shortint = -128..127
    Integer
    Longint
    Byte
    Word
    Cardinal
    Real
    Single
    Double
    Extended
    Comp

# Ejecuciones en la bash:
''' bash
    Tengo que estar en la carpeta del archivo donde se encuentra mi .o .exe
    fpc nombre_del_archivo.pas
    ./pascal.pas
'''

Bits - Binarios
0   0
1	1
2	10
3	11
4	100
5	101
6	110
7	111
8   1000

# Variables:
Las variables se definen dentro de:
``` bash
var 
    num1 : Integer;
    num2 : Integer;
    resultado : Integer
```
# PARADIGMA ESTRUCTURAL
## Estructura del pseudocodigo:
**Estructura original para la facu:**
``` bash
    ACCION [Nombre_de_la_Accion] ES
        AMBIENTES:
            [Datos/ Definidar/ Inicializar -> Constantes o Variables]
        PROCESO
            [Acciones: Proceso de ejecucion]
    FIN ACCION 
```

--------------------------------------------------------------------------


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

--------------------------------------------------------------------------
# EJERCICIOS DE ALGORITMO

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
            result: Real 
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
            resultado_discriminante: Real
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
            resultado_compra: Real
            resultado_con_ganancia: Real
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
    ACCION algoritmo_media_geometrica ES
        AMBIENTE:
            variable_x: Real
            variable_y: Real
            variable_z: Real
        PROCESO
            ESCRIBIR("Ingrese el primer valor de la variable X: ");
            LEER(variable_x);
            ESCRIBIR("Ingrese el segundo valor de la variable Y: ");
            LEER(variable_y);
            ESCRIBIR("Ingrese el tercer valor de la variable Z: ");
            LEER(variable_z);
            ESCRIBIR("Estos son los valores que ingreso", variable_x, variable_y, variable_z);
            resultado_medio := variable_x * variable_y * variable_z / 3
            ESCRIBIR("Este es el valor medio: ", resultado_medio);
    FIN ACCION
```


# Estructuras condicionales y repetitivas 
## - Consigna 1.1.6
**Escriba un algoritmo que permita ingresar 3 valores numéricos y determine cuál es el mayor, el medio y el menor. (era el 3 de los complementarios)**
```bash
ACCION ES
    AMBIENTE:
        num_uno, num_dos, num_tres : N(3);
        menor, medio, mayor : N(3);
    PROCESO:
        ESCRIBIR('Coloque 3 numeros para determinar cual es el mas grande');
        ESCRIBIR('Coloque el valor Uno:');
        LEER(num_uno);
        ESCRIBIR('Coloque el valor Dos:');
        LEER(num_dos);
        ESCRIBIR('Coloque el valor Tres:');
        LEER(num_tres);

        //Comentario: Se determina el mayor, medio, menor
        Si (num_uno >= num_dos) Y (num_uno >= num_tres) ENTONCES
            mayor := num_uno;
            Si (num_dos >= num_tres) Entonces
                medio := num_dos;
                menor := num_tres;
            Sino
                medio := num_tres;
                menor := num_dos;
            Fin Si
            //ESCRIBIR('El primer numero es mayor que los tres : ', num_uno);
        Fin Si

        //Comentario: Segunda ocacion de mayor, medio, menor
        Sino 
            Si (num_dos >= num_uno) Y (num_dos >= num_tres) ENTONCES
                mayor := num_dos;
                Si (num_uno >= num_tres) Entonces
                    medio := num_uno;
                    menor := num_tres;
                Sino
                    medio := num_tres;
                    menor := num_uno;
                FinSi
                //ESCRIBIR('El segundo numero es mayor que los tres :', num_dos);
            FinSi
        Fin Si

        //Comentario: Tercera ocacion de mayor, medio, menor
        Sino
            mayor := num_tres;
            Si (num_uno >= num_dos) Entonces
                medio := num_uno;
                menor := num_dos;
            Sino
                medio := num_dos;
                menor := num_uno;
            FinSi
            //ESCRIBIR('El mayor es el tercer numero :', num_tres);
        Fin Si
        ESCRIBIR("Mayor: ", mayor);
        ESCRIBIR("Medio: ", medio);
        ESCRIBIR("Menor: ", menor);
FIN ACCION
```

## - Consigna 1.1.7
**Escriba un algoritmo que acepte dos números, calcule la suma e imprima el mensaje de acuerdo al resultado obtenido.**
**Suma <= 50**
**Suma > 50 y <= 100**
**Suma > 100 y <= 200**
**Suma > 200**
```bash
    //Aca hay que utilizar un Segun, comparacion de valores
```
## - Consigna 1.1.8
**Escriba un algoritmo que permita conocer la edad de una persona, con solo ingresar la fecha de nacimiento y la fecha actual, ambas en el formato: DIA, MES, AÑO**
```bash

```
Ejercicio 1.1.9
Una persona decide realizar un viaje a Europa, para lo cual necesita una determinada cantidad de euros. La persona tiene ahorrada una cierta suma en dólares y desea saber si es suficiente y, en caso de haber diferencia (de más o de menos) a cuantos pesos equivale. Realice un algoritmo que solucione el problema, para lo cual deberá prever que se ingresen las equivalencias de monedas que considere necesarias (por ejemplo la cotizacion en pesos de dólar y/o del euro, o a cuantos euros equivale un dólar).

Ejercicio 1.1.10
Dados dos números enteros A y B generar un algoritmo que permita determinar si A es divisor de B o B es divisor de A.





# Decisiones en el Mundo Real: Parte I
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
---
**🔹 Problema 2: 🕐 Hora del Día**
**Pide al usuario que ingrese la hora actual en formato 24 horas (ejemplo: 15 para 3 PM). Luego, muestra un mensaje dependiendo de la franja horaria:**
6 a 11 → "🌅 ¡Buenos días!"
12 a 17 → "🌞 ¡Buenas tardes!"
18 a 23 → "🌙 ¡Buenas noches!"
0 a 5 → "🌃 ¡Es de madrugada!"
**🔹 Problema 3: 🎢 Acceso a una Atracción**
Una montaña rusa tiene dos requisitos de seguridad: La altura mínima para subir es de 1.50 metros. La edad mínima es de 12 años. Escribe un programa que reciba la altura y edad de una persona y determine si puede subir 🎟️ o si no cumple los requisitos 🚫.




🔹 Problema 4: 💳 Pago con Tarjeta

Un restaurante permite pagar con tarjeta solo si el monto total de la cuenta supera $2000. Si es menor, solo acepta efectivo. Escribe un programa que reciba el monto de la cuenta y muestre si se puede pagar con tarjeta o solo en efectivo.💡 Preguntas Finales:

1️⃣ ¿Cómo decidieron qué estructura de control era la más adecuada para resolver el problema? 🧐

2️⃣ ¿Qué dificultades tuvieron en el trabajo en equipo? 🤝

3️⃣ ¿Qué evaluarían ustedes para considerar el mejor algoritmo que resuelve un problema dado? 🏆


💡 Consejo: Trabajen en equipo, discutan las soluciones y revisen sus respuestas antes de entregarlas. ¡Buena suerte! 🚀🔥

# Ejercicios del mundo Real: Parte II

1. Calculadora de Tarifa de Taxi 🚕
📌 Problema: Diseña un algoritmo que calcule la tarifa de un taxi basado en la distancia recorrida y el tiempo de espera.

Tarifa base: $5

Costo por kilómetro: $1.50

Costo por minuto de espera: $0.50

📌 Entrada: Distancia en km, tiempo de espera en minutos.
📌 Salida: Costo total del viaje.
```bash

```

2. Cajero Automático 💰
📌 Problema: Escribe un algoritmo que simule un cajero automático.

El usuario ingresa su PIN (3 intentos máximo).

Luego elige entre retirar dinero, consultar saldo o salir.

Si retira dinero, el saldo debe actualizarse y verificarse que haya suficiente.

📌 Entrada: PIN, opción del menú, cantidad a retirar.
📌 Salida: Mensajes sobre transacción exitosa o error.
```bash

```

3. Conversor de Monedas 💱
📌 Problema: Diseña un conversor de monedas que permita convertir entre USD, EUR y MXN según una tasa de cambio fija.

📌 Entrada: Cantidad, moneda origen, moneda destino.
📌 Salida: Monto convertido.
```bash

```

4. Sistema de Notas y Promedios 📚
📌 Problema: Un profesor necesita un algoritmo que reciba las notas de 5 estudiantes y determine:

Promedio de la clase

Quién obtuvo la nota más alta y quién la más baja

📌 Entrada: Lista de 5 calificaciones.
📌 Salida: Promedio, nota más alta y más baja.
```bash

```

5. Control de Inventario de Tienda 🏪
📌 Problema: Un negocio tiene un inventario con productos. Cada vez que un cliente compra algo, el stock debe actualizarse.

Si el producto se agota, mostrar "Producto agotado".

📌 Entrada: Nombre del producto, cantidad comprada.
📌 Salida: Stock actualizado o mensaje de agotado.
```bash

```

6. Simulador de Semáforo 🚦
📌 Problema: Simula un semáforo que cambia de color cada X segundos en este orden:
🔴 Rojo → 🟡 Amarillo → 🟢 Verde → 🔴 Rojo

📌 Entrada: Tiempo que permanece en cada color.
📌 Salida: Mostrar el color actual según el tiempo.
```bash

```

7. Control de Temperatura en un Invernadero 🌱
📌 Problema: Diseña un algoritmo que controle la temperatura en un invernadero.

Si la temperatura es menor a 18°C, encender calefacción.

Si es mayor a 25°C, encender ventilador.

Si está entre 18°C y 25°C, mantener estable.

📌 Entrada: Temperatura actual.
📌 Salida: Acción a tomar.
```bash

```

8. Sistema de Registro de Estacionamiento 🚗
📌 Problema: Un estacionamiento cobra así:

1ra hora: $10

Horas siguientes: $5 c/u

Si el coche es eléctrico, tiene 50% de descuento.

📌 Entrada: Horas estacionado, tipo de auto.
📌 Salida: Costo total a pagar.
```bash

```

9. Detector de Números Primos 🔢
📌 Problema: Crea un algoritmo que determine si un número ingresado es primo o no.

📌 Entrada: Número entero positivo.
📌 Salida: "Es primo" o "No es primo".
```bash

```

10. Generador de Contraseñas Seguras 🔐
📌 Problema: Diseña un algoritmo que genere una contraseña aleatoria con:

8 caracteres

Letras mayúsculas, minúsculas, números y símbolos.

📌 Salida: Contraseña generada.
```bash

```


# Algoritmo para repasar
**Consignas:**
## Hacer un algoritmo que indique que calificacion tiene un alumno dada su nota numerica segun el siguiente criterio.

- Suspenso, si la nota es inferior a 5.
- Aprobado, si la nota esta en el intervalo [5, 7].
- Notable, si la nota esta en el intervalo [7, 9].
- Sobresaliente, si la nota esta en el intervalo [9, 10].
- Matricula de Honor, si la nota es un 10.

## Escribe un algoritmo que determine el signo del zodiaco basado en el dia y mes de nacimiento ingresado por el usuario.


# ALGORITMOS NUEVOS PARA PRACTICAR DE UN TP

Este es el link para acceder al TP: [Link](https://linktr.ee/aed.2025.c)

---
## Escriba un algoritmo que acepte un número entero mayor a 100 y menor a 1000, y muestre cómo está compuesto (unidades, decenas y centenas) y si es múltiplo de 3.
```bash
Accion numero ES
    Ambiente
        valorInicial, numero: N(3);
    Proceso
        valorInicial := 0;
        ESCRIBIR("Este algoritmo define si es multiplo de 3, y desglosa el num en Unidad, Decena, Centena");
        ESCRIBIR("Ingrese un valor entre 100 y 1000");
        LEER(numero);

        Si (numero > 100) y (numero < 1000) ENTONCES
            ESCRIBIR("Unidad: ", numero MOD 10);
            valorInicial := numero DIV 10;
            ESCRIBIR("Decena: ", valorInicial MOD 10);
            ESCRIBIR("Centena: ", valorInicial DIV 10);
            
            Si (numero MOD 3 = 0) ENTONCES
                ESCRIBIR("Es multiplo de 3");
            Sino
                ESCRIBIR("No es multiplo");
            Finsi
        Sino
            ESCRIBIR("no cumple la condicion de estar entre 100 y 1000");
        Finsi
FinAccion
```
---











# EJERCICIO DE DICORD DE ALGORITMO
## Ejercicio 1.1.9 
```bash
    ACCION ViajeEuropa ES
        AMBIENTE:
            PrecioViaje, cotiz_eu_a_dol, cotiz_eu_a_pesos: real;
            dolares, euros_disponibles, diferencia, pesos: real;
    
        PROCESO
            ESCRIBIR('Con este algoritmo sabra si cuenta con dinero para el viaje a Europa.');
            ESCRIBIR('Ingrese el monto que dispone en dolares (USD): ');
            LEER(dolares);
            
            ESCRIBIR('Ingrese el valor del viaje en euros (EUR): ');
            LEER(PrecioViaje);
            
            ESCRIBIR('Ingrese la cotizacion del euro respecto al dolar (1 EUR = ? USD): ');
            LEER(cotiz_eu_a_dol);
            
            ESCRIBIR('Ingrese la cotizacion del euro respecto al peso (1 EUR = ? ARS): ');
            LEER(cotiz_eu_a_pesos);
    
            euros_disponibles := dolares / cotiz_eu_a_dol;
            diferencia := euros_disponibles - PrecioViaje;
    
            SI diferencia = 0 ENTONCES
                ESCRIBIR('¡Felicidades! Tiene el dinero justo para el viaje.')
            SINO
                SI diferencia > 0 ENTONCES
                    pesos := diferencia * cotiz_eu_a_pesos;
                    ESCRIBIR('¡Felicidades! Le sobra dinero. Sobrante: ',pesos, ' pesos.');
                SINO
                    pesos := abso(diferencia) * cotiz_eu_a_pesos;
                    ESCRIBIR('Aun no alcanza. Le faltan: ',pesos, ' pesos.');
                FIN_SI
            FIN_SI
    FIN ACCION
```
# Ejercicio 11:
Dados dos **numeros enteros** A y B generar un algoritmo que permita determinar si A es divisor de B o B es divisor de A.
```bash
    ACCION numeros_divisores ES
        AMBIENTE
            numero_entero_A: ENTERO;
            numero_entero_B: ENTERO;
            resto_AyB: ENTERO;
        PROCESO
            ESCRIBIR("Se determinara si A es divisor de B o B es divisor de A colocando los valores que coloques.");
            ESCRIBIR("Escribe dos valores: Uno para A y otro para B.");
            LEER(numero_entero_A);
            ESCRIBIR("Numero A asignado es: ", numero_entero_A);
            LEER(numero_entero_B);
            ESCRIBIR("Numero B asignado es: ", numero_entero_B);
            SI numero_entero_A % numero_entero_B = 0 ENTONCES
                ESCRIBIR("A es divisor de B");
                SINO
                    SI numero_entero_B % numero_entero_A
                        ESCRIBIR("B es divisor de A");
                    FIN SI
                SINO
                    ESCRIBIR("No son divisores");
            FIN SI
    FIN ACCION
```













---
# LIBRO DE ESTRUCTURA DE DATOS 
chrome-extension://gfbliohnnapiefjpjlpjnehglfpaknnc/pages/pdf_viewer.html?file=https://eduarmandov.wordpress.com/wp-content/uploads/2017/05/datastructures-estructuras-de-datos-osvaldo-cairo.pdf
---













file:///C:/Users/Usuario/Downloads/Desaf%C3%ADo%20en%20clases%20-%20Estructuras%20de%20Control%20(1).pdf
---
---
# TRABAJO PRACTICO

## DESAFIO #1
Preguntas:
- 1. ¿Cuál es la diferencia entre una estructura de control secuencial y una
repetitiva?
**Respuesta:** 
**Estructura De Control Secuencial:**
- En la estructura de control secuencial los pasos se ejecutan uno tras otros. Esto quiere decir que no es posible acelerar el proceso ejecutando mas pasos al mismo tiempo, porque cada paso tiene lugar desde el estado dejando por el paso anterior. Es decir que se hace de forma paso por paso sin saltarse ninguno. 
- Se almacenan en la misma memoria. 
- Se forma el famoso "cuello de botella" es una de las principales limitaciones de la estructura secuencial. 
Esta limitacion ha llevado al desarrollo de **Procesamiento Parelelo, arquitectura multicore, computacion distribuida**.
Por ejemplo:
```bash
    estado_actual :='INICIO';
    //Comentario: No se puede saltar directamente a 'FINAL'
    //Comentario: Debe pasar por 'PROCESO' primero
    estado_actual :='PROCESO';
    estado_actual :='FINAL';
```
**Estructura De Control Repetitivo:**
Es un conjunto de instrucciones que se repite mientras se cumpla una condicion. Se almacena en la misma memoria. La principal diferencia esta en el flujo de ejecucion no en el almacenamiento.
Es decir que, La principal diferencia **NO** esta en donde se almacenan, sino en **COMO** se ejecutan.
La diferencia entre esta y el secuencial esta en el patron de ejecucion.
```bash
   MIENTRAS condicion HACER
       instruccion1;
       instruccion2;
   FIN MIENTRAS
```

- 2. ¿En qué casos es más conveniente usar un ciclo Pre-test en lugar de uno manejado por contador?
Respuesta: 
Se usaria un pre-test cuando no sabes el numero exacto de iteraciones. Podes saltar el bucle completamente si la condicion es falsa desde el inicio.
Pero para un manejador de contadores usarias cuando sabes exactamente cuantas iteraciones necesitas. Y se termina el bucle cuando termina la cantidad de iteraciones.

**Escenario:** Una academia necesita llevar el control de asistencia de estudiantes durante una semana. Cada dia se registra cuantos estudiantes asistieron y al final se quiere saber el promedio de asistencia semanal.
### Respuesta:
Lo que se pide es llevar un control de asistencia de estudiantes durante una semana(5 dias) Se utilizaria un segun
Cada dia 
se registra cuantos estudiantes asistieron 
---

```bash
    ACCION asistencias_estudiantes ES
    
    AMBIENTE:
        total_de_asistencias_semanal: ENTERO;
        numero_estudiantes: ENTERO;
        dia: ENTERO;
        promedio_semanal: REAL;
    PROCESO:
        total_de_asistencias_semanal:=0;
        
        PARA dia DESDE 1 HASTA 5 HACER
            ESCRIBIR('Ingrese la cantidad de estudiantes que asistieron el dia ', dia, ": ");
            LEER(numero_estudiantes)
            total_de_asistencias:= total_de_asistencias_semanal + numero_estudiantes;
        FIN_PARA;
        promedio_semanal:= total_de_asistencias_semanal/ 5;
        ESCRIBIR("El numero de asistencias de la semana es ", total_de_asistencias);
        ESCRIBIR("El promedio de asistencia semanal es: ", promedio_semanal);
    FIN ACCION

```
---
# CON UN PARA
```bash
DESDE 1 HASTA 7
```
# CON UN MIENTRAS

# CON UN REPETIR



## DESAFIO #2
Preguntas:
- 1. ¿Qué papel juega la variable de control en los bucles manejados por contador?

- 2. ¿Qué sucede si no se actualiza la condición de corte en un ciclo Pretest?

**Escenario:** Un almacen desea registrar el stock inicial de 10 productos y simular la venta diaria de cada uno durante 5 dias. Se debe informar cuantos productos quedaron sin stock al final de la semana.

# CON UN SEGUN

# CON UN PARA
```bash
    ACCION almacen ES
    AMBIENTE:
        stock_productos: ENTERO;
        cinco_dias: ENTERO;
        venta_productos: ENTERO;
        cantidad_producto_totales: ENTERO;
    PROCESO:
        stock_productos:= 10;
        PARA cinco_dias DESDE 1 HASTA 5 HACER
            ESCRIBIR('Cuantos productos quiere llevar tengo 10. Coloque un valor: ');
            LEER(venta_productos);
            SI venta_productos <= stock_productos ENTONCES
                cantidad_producto_totales:= stock_productos - venta_productos

            FIN SI
        FIN PARA;
        ESCRIBIR('Cantidad de producto que quedan en stock son:', cantidad_producto_totales);
    FIN ACCION
```

# Control de Asistencia Semanal con PARA
```bash
    ACCION control_asistencia_semanal ES
        AMBIENTE:
            asistencia_diaria: ENTERO;
            total_asistencias: ENTERO;
            promedio_semanal: REAL;
            dia: ENTERO;
        PROCESO:
            total_asistencias := 0;
            
            PARA dia DESDE 1 HASTA 7 HACER
                ESCRIBIR("Ingrese la cantidad de estudiantes que asistieron el día ", dia, ": ");
                LEER(asistencia_diaria);
                total_asistencias := total_asistencias + asistencia_diaria;
            FIN PARA;
            
            promedio_semanal := total_asistencias / 7;
            ESCRIBIR("El total de asistencias de la semana es: ", total_asistencias);
            ESCRIBIR("El promedio de asistencia semanal es: ", promedio_semanal);
    FIN ACCION
```

# CON UN MIENTRAS

# CON UN REPETIR

## DESAFIO #3
Preguntas:
1. ¿Qué diferencia hay entre una estructura manejada por contador y una Posttest si se quiere validar datos al menos una vez?

2. ¿Qué técnicas se pueden aplicar para asegurar que los datos ingresados sean correctos dentro de un ciclo?

**Escenario:** Un sistema de lotería permite ingresar hasta 5 números elegidos por el usuario, entre 1 y 45, sin repetir. Se debe validar cada número, almacenarlos, y luego mostrar los elegidos. 

## DESAFIO #4
Preguntas:
1. ¿Qué consecuencias puede traer una mala elección del tipo de ciclo repetitivo en un algoritmo?

2. ¿Por qué es importante definir correctamente la condición de salida de un ciclo pre-test?

**Escenario:** Una empresa de energía simula el consumo de electricidad de una casa durante los 30 días del mes. Cada día se ingresan los kWh consumidos. Se debe mostrar el total y el promedio mensual.

## DESAFIO #5
Preguntas:
1. Describa cómo un mal diseño de la condición de corte en un ciclo puede llevar a un bucle infinito.

2. ¿Qué estructuras de control usaría para analizar múltiples indicadores de rendimiento por semana? Justifique.

**Escenario:** Una empresa evalua 4 indicadores semanales de rendimiento de sus empleados. Los valores se ingresan en forma secuencia para luego calcular el promedio.

## DESAFIO #6
Preguntas Teoricas:
1. ¿Qué criterios se deben considerar para elegir una estructura repetitiva manejada por contador en vez de una pretest?
2. ¿Qué características debe tener un ciclo para poder procesar una cantidad indefinida de datos correctamente?

**Escenario:** Se ingresan los precios de 20 productos de una compra para calcular el total y aplicar un descuento por monto. Si el total supera los $20000 tiene un descuento del 5%, si supera los $35000 tiene un descuento del 10%, en otro caso no tiene descuento.









































---
# Estructuras de Control
**Diferencia entre PRE-TEST y POST-TEST en estructuras de control**:
## PRE-TEST (Mientras/While):
- La condicion se evalua **ANTES** de ejecutar el cuerpo del bucle.
- Si la condicion es falsa desde el inicio, el bucle no se ejecuta ni una vez.
```bash
   MIENTRAS condicion HACER
       instrucciones
   FIN MIENTRAS
```
## POST-TEST (Repetir/Do-While):
- La condicion se evalua DESPUES de ejecutar el cuerpo del bucle.
- El bucle se ejecuta al menos una vez, incluso si la condicion es falsa.
```bash
   REPETIR
       instrucciones
   HASTA condicion
```
### Cuándo usar cada uno:

Usar **Pre-Test**:
No sabes si necesitas ejecutar el bucle al menos una vez. La condicion puede ser falsa desde el inicio. Ejemplo: Procesar numeros hasta encontrar uno negativo,
```bash
    MIENTRAS numero >= 0 HACER
        LEER(numero)
    FIN MIENTRAS
``` 
Usar **Post-test**:
Sabes que necesitas ejecutar el bucle al menos una vez. La validacion debe ocurrir despues de la primera ejecucion. Ejemplo: Pedir una contrasena hasta que sea correcta,
```bash
   REPETIR
       LEER(contraseña)
   HASTA contraseña = "correcta"
```
La eleccion entre uno u otro depende de si necesitas garantizar al menos una ejecucion del bucle(post-test) o si quieres podes saltar el bucle completamente (pre-test).



---
# Pascal
file:///C:/Users/Usuario/Documents/Libros/Programacion/libro-completo-PASCAL.pdf

## Division euclidea: o division entera es una operacion matematica que se usa en arimetica y tiene aplicaciones importantes en la programacion, en Pascal se presenta de dos formas: 
- **DIV:** Devuelve el cociente de la division entera.
- **MOD:** Devuelve el resto de la division entera.

(**dividendo = (divisor x cociente) + resto**) el par (0, dividendo) siempre es una solucion.
Es muy util para calcular el maximo comun divisor (MCD).
Trabajar con Arimetica Modular
**Arimetica Modular**: Tambien conocida como arimetica del reloj o arimetica de los residuos es un sistema de arimetica para numeros enteros donde los numeros "dan la vuelta" al llegar a un valor modular.
Por ejemplo:
Dias de la semana (modulo 7)
Si hoy es lunes (1) y queremos saber que dia sera
dia := (1 + 10) MOD 7  --> Resultado: 4 (viernes)

**Algoritmo de hash** se refiere a una funcion matematica que convierte datos de cualquier tamano en una cadena de longitud fija.

* Las tres partes fundamentales de un algoritmo
Entrada
Proceso
Salida

# PRECISION
**Precision Numerica:** Es un concepto de dimenciones. Se refiere a cuantos digitos significativos puede manejar un algoritmo.
Como por ejemplo:
En PASCAL
Real // Este significa Presicion Estandar
Single // Este significa Presicion Simple
Double // Este significa Presicion Doble
Extended // Este significa Presicion Extendida
Tambien esta Precision en Calculos, Decisiones, Datos

**Suma Lenta:**
```bash 
ACCION SumaLenta ES
    AMBIENTE:
        a, b: Entero;
        resultado: Entero;
    PROCESO:
        resultado := 0;
        MIENTRAS b > 0 HACER
            resultado := resultado + 1;
            b := b - 1;
        FIN MIENTRAS;
        resultado := resultado + a;
        ESCRIBIR("La suma lenta de ", a, " y ", b, " es: ", resultado);
FIN ACCION
```
Lo que hace este algoritmo es:
Inicializacion de **resultado** en 0
A las variables a y b por obviedad se le asigna un valor por ejemplo a: 10 y b: 10.
Bucle MIENTRAS: El bucle se ejecuta mietras b sea mayor que 0. Se incrementa en cada iteracion
Se incrementa **resultado** en 1
se decrementa b en 1
Suma final: Despues de que el bucle termina, se suma a al **resultado**.

# DETERMINISMO
Significa que un algoritmo siempre producira el mismo resultado cuando se le dan las mismas entradas y se ejecuta en las mismas condiciones.

# FINITUD
La descripcion de un algoritmo debe ser finita

En el contexto y teoria de conjuntos, la expresion "F ⊂ E" significa que F es un subconjunto propio de E.
**Esto significa que:**
- Todos los elementos de F estan contenidos en E 
- F no es igual a E(E contiene al menos un elemento que no esta en F).
## Ejemplo:
```bash
ACCION EjemploSubconjunto ES
    AMBIENTE:
        // E = {1,2,3,4,5,6,7,8,9,10}
        // F = {2,4,6,8}
        conjunto_E: Arreglo[1..10] de Entero;
        conjunto_F: Arreglo[1..4] de Entero;
        elemento: Entero;
        pertenece: Booleano;
    
    PROCESO:
        // Inicializar conjunto E
        PARA i DESDE 1 HASTA 10 HACER
            conjunto_E[i] := i;
        FIN PARA;
        
        // Inicializar conjunto F (números pares)
        conjunto_F[1] := 2;
        conjunto_F[2] := 4;
        conjunto_F[3] := 6;
        conjunto_F[4] := 8;
        
        // Verificar si un elemento pertenece a F
        ESCRIBIR("Ingrese un número para verificar si pertenece a F: ");
        LEER(elemento);
        
        pertenece := FALSO;
        PARA i DESDE 1 HASTA 4 HACER
            SI conjunto_F[i] = elemento ENTONCES
                pertenece := VERDADERO;
            FIN SI;
        FIN PARA;
        
        SI pertenece ENTONCES
            ESCRIBIR("El elemento ", elemento, " pertenece a F");
        SINO
            ESCRIBIR("El elemento ", elemento, " no pertenece a F");
        FIN SI;
        
        // Verificar que F es subconjunto de E
        ESCRIBIR("Verificando que F es subconjunto de E...");
        PARA i DESDE 1 HASTA 4 HACER
            elemento := conjunto_F[i];
            pertenece := FALSO;
            PARA j DESDE 1 HASTA 10 HACER
                SI conjunto_E[j] = elemento ENTONCES
                    pertenece := VERDADERO;
                FIN SI;
            FIN PARA;
            SI NO pertenece ENTONCES
                ESCRIBIR("¡Error! F no es subconjunto de E");
                SALIR;
            FIN SI;
        FIN PARA;
        ESCRIBIR("F es subconjunto de E");
FIN ACCION
```
---
## EJEMPLO EN PASCAL

```bash
program EjemploSubconjunto;
var
  conjunto_E: array[1..10] of Integer;
  conjunto_F: array[1..4] of Integer;
  elemento: Integer;
  pertenece: Boolean;
  i, j: Integer;
begin
  // Inicializar conjunto E
  for i := 1 to 10 do
    conjunto_E[i] := i;
  
  // Inicializar conjunto F (números pares)
  conjunto_F[1] := 2;
  conjunto_F[2] := 4;
  conjunto_F[3] := 6;
  conjunto_F[4] := 8;
  
  // Verificar si un elemento pertenece a F
  Write('Ingrese un número para verificar si pertenece a F: ');
  ReadLn(elemento);
  
  pertenece := False;
  for i := 1 to 4 do
    if conjunto_F[i] = elemento then
      pertenece := True;
  
  if pertenece then
    WriteLn('El elemento ', elemento, ' pertenece a F')
  else
    WriteLn('El elemento ', elemento, ' no pertenece a F');
  
  // Verificar que F es subconjunto de E
  WriteLn('Verificando que F es subconjunto de E...');
  for i := 1 to 4 do
  begin
    elemento := conjunto_F[i];
    pertenece := False;
    for j := 1 to 10 do
      if conjunto_E[j] = elemento then
        pertenece := True;
    
    if not pertenece then
    begin
      WriteLn('¡Error! F no es subconjunto de E');
      Exit;
    end;
  end;
  WriteLn('F es subconjunto de E');
end.
```

---

# Automata finito o maquina de estados finitos

## Ejemplo:

```bash
ACCION EjemploTransicion ES
    
    AMBIENTE:
        //COMENTARIO: E = {'INICIO', 'PROCESO', 'FINAL'}
        
        estado_actual: Texto;
    
    PROCESO:
        estado_actual := 'INICIO';
        
        //COMENTARIO: Función de transición t

        SEGUN estado_actual HACER
            CASO 'INICIO':
                estado_actual := 'PROCESO';  //COMENTARIO: t('INICIO') = 'PROCESO'
            CASO 'PROCESO':
                estado_actual := 'FINAL';   //COMENTARIO: t('PROCESO') = 'FINAL'
            CASO 'FINAL':
                estado_actual := 'INICIO';   //COMENTARIO: t('FINAL') = 'INICIO'
        FIN SEGUN

FIN ACCION
```
# Cualidades deseables de un algoritmo:
## Generalidad y Eficiencia
**Generalidad**:
Es deseable que un algoritmo sirva para una clase de problemas lo mas amplia posible. Por ejemplo, la clase de problemas "resolver una ecuacion de segundo grado, es mas consistente que la de resolver ecuanciones de primer grado".
**Eficiencia**:
Se considera que un algoritmo es mas eficiente cuantos menos pasos emplea en llevar a cabo su cometido.

**Numero Pedrisco:**
Un numero pedrisco es un numero entero positivo que sigue una secuencia matematica. La secuencia se define por reglas:
1. Si el numero es par, se divide por 2.
2. Si el numero es impar, se multiplica por 3 y se suma 1.
```bash

ACCION SecuenciaPedrisco ES
    AMBIENTE:
        numero: Entero
        secuencia: Entero
    PROCESO:
        ESCRIBIR("Ingrese un número entero positivo: ")
        LEER(numero)
        
        ESCRIBIR("Secuencia de Pedrisco para ", numero, ":")
        ESCRIBIR(numero)
        
        MIENTRAS numero > 1 HACER
            SI numero MOD 2 = 0 ENTONCES
                // Si es par, dividir por 2
                numero := numero DIV 2
            SINO
                // Si es impar, multiplicar por 3 y sumar 1
                numero := (numero * 3) + 1
            FIN SI
            ESCRIBIR(numero)
        FIN MIENTRAS
FIN ACCION
```
me quede en la pagina 38.





































Link para los ejercicios, guia: **https://linktr.ee/aed.2025.c**. UTN
# Estructuras Ciclica
Repetidores


























---
![ImagenTablaDeTiposDeDatos](./Tabla_de_Tipos_de_Numeros_de_Pascal.png)

# Tarea De Tipos De Numeros De Pascal
## Dia π
Desafío 1: Fibonacci Básico
Implementa una función que devuelva el n-ésimo término de la secuencia de Fibonacci
Entrada: Un número entero n (0 <= n <= 40)
Salida: El n-ésimo término de la secuencia.
Ejemplo:
Entrada: 10
Salida: 55
Restricciones: Solución iterativa o recursiva SIN optimización.
Recuerden envíar su código usando las triples comillas invertidas

## Desafío 2: Fibonacci Optimizado
Optimiza el cálculo del n-ésimo término de Fibonacci utilizando memoización o programación dinámica.
Entrada: Un número entero n (0 <= n <= 10^6)
Salida: El n-ésimo término de Fibonacci módulo 10^9+7
Ejemplo:
**Entrada** 1000000
**Salida**: ??? (gran número)

Restricciones: La solución debe ejecutrase en O(log n) o mejor

# RESPUESTA:














































