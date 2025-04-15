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
## Ejercicio 12 - cargar un valor entre 100 y 1000, calcular si es mult de 3 y separar unidad, centena y decena
```bash
Accion numero ES
    Ambiente
        valorInicial, numero: N(3);
    Proceso
        valorInicial := 0;
        ESCRIBIR("Este algoritmo define si es multiplo de 3, y desglosa el num en Unidad, Decena, Centena");
        ESCRIBIR("Ingrese un valor entre 100 y 1000");
        LEER(num);
        Si numero >= 100 y numero < 1000 ENTONCES
            ESCRIBIR("Unidad: ", num MOD 10);
            valorInicial := num DIV 10;
            ESCRIBIR("Decena: ", valorInicial MOD 10);
            ESCRIBIR("Centena: ", valorInicial DIV 10);
            Si (num MOD 3 = valorIncial) ENTONCES;
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