# Algoritmos y Estructuras de datos Unidad I:
## Definicion de Algoritmos: 
  Un **algoritmo** es una secuencia finita de instrucciones, reglas o pasos que describen de modo preciso las operaciones que una computadora debe realizar para ejecutar una tarea determinada en un tiempo finito.

- ENTENDER EL PROBLEMA Y LA NECESIDAD: 
- INDIVIDUALIZAR LOS DATOS: **DEFINIR DATOS DE ENTRADA**.
- PLANTEAR LOS PROCESOS PARA LA ENTRADA A LOS DATOS DE SALIDA.

## Definicion de Proceso:
  Una unidad de actividad que se caracteriza por la ejecucion de una secuencia de instrucciones, un estado actual, y un conjunto de recursos de los sistemas asociados.

## Definicion de Accion:
  Una **accion** es un acontecimiento producido por un **actor** que tiene un **tiempo finito** (periodo), produce un **resultado definido y preciso** y produce un cambio de **estado**.

  Existen dos tipos de acciones Simples y Complejas:
  ### Simples:
  Son las que pueden ser realizadas directamente.
  


  ### Complejas:
  Son las que no se pueden realizar directamente sino a traves de una descomposicion en acciones simples(de menor complejidad).
![parcial_1](/Algoritmo/TreePseudocode/TAED_Todo/Img/EstructuradeAccionesSimplesyComplejas.png)



## 1.Caracteristicas de un algoritmo:
- Poseer un solo punto de entrada y un solo punto de salida.
- Todas las acciones deben ser accesibles, es decir, que deben pasar por un punto de entrada a la salida. 
- Todo algoritmo no debe ser infinito.

## 2.Teorema de la Programacion Estructurada:
- Todo algoritmo estructurado puede ser escrito utilizando solamente tres tipos de estructuras de control de secuencia
- **SECUENCIALES**
- **CONDICIONALES**
- **REPETITIVAS**

## TIPOS DE DATOS
- **NUMETICOS**:
  N();
  REALES/ENTEROS
- **ALFANUMERICOS**:
  AN();
- **LOGICOS**:
  Verdaderos o falsos (Booleano).

## Estructuras de Datos Simples:
- **CONSTANTES**: (=)
- **VARIABLES**: (:)
- **ASIGNACION**: (:=)
## Estructuras de Datos Complejos:
- **OPERADORES**: (Simbolos) nos permiten manipular datos y los numeros que estan en el operador se los denomina operando; * Por ejemplo: en esta expresion el simbolo x es el operador de *MULTIPLICACION*, y los numeros 3 y 2 se llaman operandos. **3 x 2**.
- **OPERADORES ARIMETICOS**: (+), (-), (*), (/), (**MOD**: Resto de la Division entera), (**DIV**: Cociente de la Division entera). 
- **OPERADORES RELACIONALES**: Permiten realizar comparaciones. (=),(<>),(>),(>=),(<),(<=).
- **OPERADORES LOGICOS**: Y , O.
---
## Estructura de Control:
- Señalar orden en que tienen que sucederse los pasos de un algoritmo.
- Estructura Secuencial es aquella en la que una accion sigue a otra en secuencia. Las tareas se suceden de tal modo que la salida de una es la entrada de la siguiente y asi sucesivamente hasta el fin del proceso.

- **ESCTRUCTURA CONDICIONAL**: (PARA QUE ENTRE AL CONDICIONAL AL MENOS UNA VEZ DEBE SER VERDADERO para que el conjunto de acciones pueda ejecutarse y si la condicion NO se cumple, NO se ejecutan dichas instrucciones y se sigue adelante).
- **CONDICIONAL ALTERNATIVO DOBLE**:
Implementa condicionales en los que hay dos acciones alternativas:
- Si se verifica una determinada condicion, ejecutar una serie de instrucciones. (Se mueve por bloques).
-Si no, esto es, Falso y la condicion se verifica con el SINO.
Ejemplo:
![parcial_1](/Algoritmo/TreePseudocode/TAED_Todo/Img/Condicional_Doble.png)
- **CONDICIONAL ALTERNATIVO MULTIPLE**:
Mas de dos elecciones posibles: DATO IMPORTANTE**ESTE PROBLEMA SE PODRIA RESOLVER POR ESTRUCTURAS SELECTIVAS SIMPLES O ALTERNATIVAS, ANIDADAS EN CASCADA**.
Si el numero de alternativas es grande puede plantear serios problemas de escritura y de legibilidad. Puede tomar este tipo de alternativo de 1 a n valores segun ocurra uno de esos valores, se realizara una de las n acciones; es decir, que el programa seguira solo un determinado camino entre varios.
Ejemplo:
![parcial_1](/Algoritmo/TreePseudocode/TAED_Todo/Img/Alternativas_Multiples.png)

----------------------------------------------------------------------------------------------

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


## Estructuras REPETITIVAS:
- Las estructuras que repiten una secuencia de instrucciones un numero determinado de veces se denominan **BUCLES**. Y cada repeticion del bucle se llama **ITERACION**.
Todo bucle tiene que llevar asociada una condicion, que es la que va a determinar cuando se repite el bucle y cuando deja de repetirse.

# -**ESTRUCTURA PRE-TEST**:
- Esta estructura repetitiva, es en la que el cuerpo del bucle se repite siempre que cumpla una determinada condicion.
- Es una estructura repetitiva del tipo **INDEFINIDA**, pues no se conoce la cantidad de veces que se debe repetir el conjunto de instrucciones del bucle.
- **El conjunto de acciones se ejecuta mientras la evaluacion de la condicion devuelva un resultado verdadero, el ciclo se puede ejecutar 0 o mas veces**.

Pseudocodigo:
``` bash
    MIENTRAS <cond> HACER
    <acciones>
    FIN_MIENTRAS
```
# -**ESTRUCTURA POST-TEST**:
- El contenido del bucle se ejecuta siempre al menos una vez, ya que la evaluacion de la condicion se encuentra al final. Esta estructura tambien es INDEFINIDA y no esta implementada en la mayoria de los lenguajes actuales, por lo que se reemplaza su uso con WHILE.

Pseudocodigo:
``` bash
    REPETIR
      <acciones>
    HASTA QUE <cond>
    FIN_REPETIR
```

# - **ESTRUCTURA MANEJADA POR CONTADOR**:
- Esta estructura es un **Ciclo Definido**, pues se conoce de antemano la cantidad de veces que se iterara.
- El **final de bucle** esta controlado por un contador que define la cantidad de veces a iterar.
- La **variable contador**, se va incrementando automaticamente de acuerdo al incremento indicado. Si en lugar de incremento, debe ser decremento se indica con el signo "--". Si el incremento o decremento es diferente a 1, debe indicarse. Por ejemplo: Para f:= 1 hasta 100, 2. **No hace falta inicializar** la variable contador.
Pseudocodigo:
```bash
    PARA contador := inicializacion HASTA fin; incremento HACER
      <acciones>
    FIN_PARA
```

--- 

## Comparacion entre estructuras Repetitivas
![Diferencias](/Algoritmo/TreePseudocode/TAED_Todo/Img/ComparacionEntreBucles.png)

---

# Subacciones:
La resolucion de problemas complejos se facilita considerablemente si se dividen en problemas mas pequenos; y la resolucion de estos subproblemas se realiza mediante **subalgoritmos** o **subacciones**.

![Diferencias](/Algoritmo/TreePseudocode/TAED_Todo/Img/Subacciones.png)

## Subacciones (FUNCIONES). Tambien se los puede llamar SUBALGORITMOS
- Son acciones que forman parte de una **Accion Principal**
- Son modulos que estan escritos para ejecutar alguna **tarea especifica**.
- Se definen en el **AMBIENTE** pues van a ser utilizadas e invocadas durante el PROCESO del algoritmo disenado.
- Se escriben solamente una vez, pero pueden ser referenciados en diferentes puntos del algoritmo, de modo que se pueden evitar la duplicacion innecesaria del codigo.

## Control de Ejecucion
El algoritmo principal se ejecuta en una primera instancia, y da la orden de inicio de ejecucion de los subalgoritmos. Esto puede suceder N veces.

#### Cuando realiza la solicitud, el algoritmo se detiene hasta que la subfuncion deja de realizar su tarea, luego continua; esto se conoce como control de ejecucion.

## - Elementos de las Subacciones
**Nombres**: Se definen siempre con un nombre, ese nombre debe ser unico, representativo del objetivo especifico del subaccion que indentifica y no se debe ser una palabra reservada.

**Paramentros**: En algunos casos las subacciones necesitaran pasar o recibir datos para ejecutarse y alli hacemos uso de parametros que pueden ser **variables o constantes** entre algoritmo y subaccion en ambos sentidos.

- Los parametros que aparecen en la definicion del subalgoritmo, se denominan **parametros formales o ficticios**.
- Los parametros que se encuentran en la llamada a la subaccion se denominan **parametros actuales o argumentos**.

## Los parametros actuales pueden ser constantes, variables, expresiones. En cambio, los parametros formales solo pueden ser variables.

# 📌 Las acciones, subacciones y Funciones son SUBALGORITMOS!!!

**FUNCIONES**: Una funcion es un subalgoritmo que recibe, como argumentos o parametros actuales, datos de tipo numerico o no numerico, y devuelve un unico resultado.
Existen dos tipos de funciones: **INTERNAS Y EXTERNAS**.
- FUNCIONES INTERNAS: Las funciones incorporadas al sistema son funciones internas o intrisecas predefinidas.
- FUNCIONES EXTERNAS: Las funciones definidas por el usuario se llaman funciones externas.

## DECLARACION DE FUNCIONES:
Pseudocodigo
```bash
  FUNCION nombrefun (lista de parametros): TIPO
  ..
  (Declaraciones locales si fuera necesario > Ambiente)
  ..
  (Acciones de la funcion)
  ..
  // MUY IMPORTANTE NO OLVIDAR LLAMAR A LA FUNCION ANTES DE FINALIZARLA

  nombrefun := <valor de la funcion>
  FIN_FUNCION
```
**nombrefun**: es el nombre de la funcion.
**lista de parametros**: es la lista de parametros formales. Esta lista NO puede ser vacia.
**Tipo**: es el tipo de resultado que devuelve la funcion

El algoritmo principal invoca la funcion con el nombre de esta ultima en una expresion seguida de una lista de argumentos que deben coincidir en cantidad, tipo y orden con los de la funcion que fue definida.
Para que las acciones descritas en una FUNCION sean ejecutadas, se necesita que este sea invocado desde un algoritmo principal o desde otros subalgoritmos a fin de proporcionarle los argumentos de entrada necesario para realizar estas acciones.

### EJEMPLO:
```bash
  FUNCION ES_PRIMO(A:entero):logico
    AMBIENTE
    PROCESO
    ES_PRIMO := V // Habilito la funcion como bandera
    PARA i:=2 HASTA (A-1) HACER
      SI A mod i =0 ENTONCES
        ES_PRIMO := F // ya no es primo
      FIN_SI
    FIN_PARA
  FIN_FUNCION
```

# PROCEDIMIENTO:

Un **procedimiento** tambien es una subaccion, disenado con un fin especifico, pero a diferencia de las funciones no devuelve ningun valor, solo ejecuta acciones.

Por Ejemplo:
- Desarrollar un procedimiento que muestre por pantalla la validacion del login de usuario.
```bash
  PROCEDIMIENTO Login(usuario, pass, valid: Alfanumerico)
    SI pass = valid ENTONCES
      Esc('Acceso autorizado a ', usuario);
    Sino
      Esc('Acceso autorizado a ', usuario);
    FinSi
  FIN_PROCEDIMIENTO
```

## Por que usar procedimientos?
La estrategia de usar procedimientos al disenar soluciones argorimicas.
- Utilizan procedimientos **facilitan el diseno top-down** de las soluciones.
- Se pueden **ejecutar mas de una vez** en un algoritmo, con solo realizar su definicion en el ambiente y llamarlos las veces que se requieran.
- Su uso **facilita la division de tareas** entre los desarrolladores de un equipo. Entonces si debes resolver un problema complejo pueden dividirse tareas y generar procedimiento para luego integrarlos en un unico algoritmo.

## Top-Down
Concepto: El enfoque en algoritmo y estructuras de datos es una tecnica de diseno y resolucion de problemas que consiste en dividir **un problema grande en subproblemas mas pequnos y manejables**.

La idea general clave es que empiezas desde el nivel mas alto de abstaccion (el problema general) y vas descomponiendolo en partes mas concretas y simples hasta que cada parte sea lo suficientemente facil de resolver directamente.

## Diseno de algoritmos:
  - Primero piensas en el algoritmo como un todo.
  - Luego defines lass funciones o procedimientos principales.
  - Despues, defines los subprocedimientos necesarios para que el algoritmo funcione.
  - Sigue refinando cada subprocedimiento hasta llegar a instrucciones basicas.


## Variables Locales:
La mayor parte de las subacciones tienen una lista de parametros. Los parametros de una subaccion tambien son variables locales.
Las variables locales comienzan su existencia cuando la subaccion es llamada por el algoritmo principal y desaparecen cuando esta subaccion termina su ejecucion, por esta razon la variables locales no tienen sus valores de una llamada a otra.







# Secuencias: 
Es un conjunto de datos relacionados entre si:
| A | L | G | O | R | I | T | M | O | ... | FDS |
  1   2   3   4   5   6   7   8   9   ...    n


- **Existencia del primer elemento de la secuencia**: Acceso posterior a los demas elemento permite **acceso posterior a los demas elementos** de la secuencia

- **Relacion de sucesion entre los elementos:** Esta relacion entre los objetos de la secuencia permite construir **el acceso a todos los elementos** de la misma hasta alcanzar el **final**.

- **Finitud**: **Cantidad de elementos** o bien por una **marca de fin.** Todas **las secuencias deben ser finitas** por lo que deben estar **acotadas por una condicion de fin** para evitar entrar en un **ciclo infinito**.

- **Existencia del ultimo elemento de la secuencia:(FDS)** debe estar definido con un indicador de fin de secuencia: el elemento final, permite detener la enumeracion de la secuencia.


---

Una de las principales caracteristicas de secuencias es que **su tamaño no es fijo**, sino que dentro de algoritmo que las crea su longitud puede variar. 

Si bien la condicion de finitud siempre se debe tener en cuenta, para su procesamiento se debe emplear un **esquema de asignacion de almacenamiento en memoria dinamico**.

### Clasificacion:""
Segun su contenido:
- De datos elementales
  1. Numero
  2. Caracter
- Registro

Segun su **procesamiento**:
- Definidas
  1. Utiliza estructuras Manejada por **contador**!
  - Ejemplo: "Repetir 5 veces".
```bash
  PARA i <- 1 HASTA 5 HACER
    // instrucciones
FINPARA

```
- **Indefinidas** (La cantidad de repeticiones no es conocida previamente).

  1. **Pura**: 
  *Se utiliza una estructura Post-Test. Son aquellas en las cuales el ultimo elemento es conocido antes de inciar el proceso.*
  (La condicion se evalua despues de ejecutar al menos una vez el cuerpo del bucle).
  Ejemplo: **REPETIR ... HASTA QUE ...**
  - Son algoritmos donde el ultimo valor es conocido antes de empezar. Es decir, sabemos que estamos buscando, pero no sabemos cuantas iteraciones vamos a necesitar.
```bash
  REPETIR
    LEER(numero)
  HASTA QUE numero = 0
```

  2. **Impuras**:
  *Se utiliza para estructuras Pre-Test. Son aquellas que cuentan con una marca de fin.*
 - Son algoritmos donde no sabemos cual es el ultimo valor de entrada, pero si conocemos una marca de fin. Es decir, seguimos hasta que aparezca una "señal" que nos diga que termino.
```bash 
LEER(numero)
MIENTRAS numero <> 0 HACER
  // procesar
  LEER(numero)
FINMIENTRAS
```
- **Aca 0 seria la marca de fin**

# Uso en el ambiente de la secuencia:
Definicion en el ambiente:
Para utilizarla en un algoritmo es necesario definir, la estructura de datos, y por otro lado la variable que permitira tratar cada elemento de la secuencia, pues solo se permite acceder de forma individual y secuencial.

1. sec: Secuencia de caracter;
2. v: caracter;

Acciones en el procedimiento:
La secuencialidad de estas estructuras de datos admite el uso de ciertas acciones para su procedimiento de forma tal de asegurar el acceso secuencial a sus elementos.

<h2>
- ARR(sec)
</h2>

Es el operador que permite iniciar el tratamiento de una secuencia ya existente.
**Solo requiere que se le indique qué secuencia se esta por trabajar**.


<h2>
- AVZ(sec, v)
</h2>

Es el operador que permite recuperar el contenido de cada elemento de la secuencia.
Requiere que se indique la secuencia a la cual se accedera, y la variable que permitira almacenar el contenido del elemento accedido.


<h2>
- CREAR(secNUEVA)
</h2>

Es el operador que permite inicializar una nueva secuencia, vacia.
Solo requiere que se indique que secuencia almacenara desde el incio los elementos.


<h2>
- ESC(sec, v)
</h2>

Es el operador que permite iniciar el tratamiento de una secuencia ya existente.
<!-- Tratar de saber bien esto -->
# Sub Secuencias
Concepto:
Conjunto de elementos consecutivos, que estan incluidos en la secuencia, considerados como un sub conjunto.

Por ejemplo:
---
### Palabra:
Sub conjunto de elementos consecutivos de una secuencia de caracteres que comienza con un caracter distinto de " " **(espacio en blanco)** y finaliza con otro caracter " " **(espacio en blanco)** o alguna marca especifica planteada en el problema.

![PALABRA (Sub Secuencia)](/Algoritmo/TreePseudocode/TAED_Todo/Img/SubSecuencia.png)
---
### Oracion:
Sub conjunto de elementos consecutivos de una secuencia de caracteres que comienza con un caracter distinto de " "(espacio en blanco) y finaliza con un caracter por ejemplo el ".", o alguna marca en especifico planteada por el problema.

![Oracion(Sub Secuencia)](/Algoritmo/TreePseudocode/TAED_Todo/Img/SubSecuencia_Oracion.png)
---
### DNI:
Sub conjunto de 8 elementos consecutivos de una secuencia de caracteres. El topo de caracter es digito numerico.

![DNI(Sub Secuencia)](/Algoritmo/TreePseudocode/TAED_Todo/Img/SubSecuencia_DNI.png)

CARACTERISTICAS DE SECUENCIAS:

- Existencia del primer elemento de la secuencia.
- Relacion de sucesion entre los elementos.
- Finitud.
- Existencia del ultimo elemento de la secuencia.

# RELACIONES DE SUB SECUENCIAS:
Existen relaciones de enlace o relaciones de inclusion o pertenencia, estas ultimas determinan una relacion de jerarquia entre las sub secuencias.

## Sub Secuencias Enlazadas:

Nombre de una persona que finaliza con un caracter "-" y a continuacion comienza una sub secuencia de 8 caracteres numericos que hacen referencias a un numero de DNI. Esta ultima sub secuencia es del tipo **Definida**, por lo que no requiere una marca de fin de sub secuencia.

![Enlazadas(Relacion de Sub Secuencia)](/Algoritmo/TreePseudocode/TAED_Todo/Img/SubSecuencia_enlazadas.png)

**La relacion de enlace existe porque se identifica, salvo al inicio y final de la secuencia, que el inicio de una subsecuecia indica el fin de la anterior, el fin de una sub secuencia enlazada indica el inicio de otra.**

## Sub Secuencia Jerarquicas:

En este caso la sub secuencia estan identificadas a traves de una relacion de pertenencia o inclusion, pueden ser utilizadas para definir jerarquias de sub secuencias.

Primer ejemplo: 

![Enlazadas(Relacion de Sub Secuencia)](/Algoritmo/TreePseudocode/TAED_Todo/Img/ejemplo1.png)

Segundo ejemplo:

![Enlazadas(Relacion de Sub Secuencia)](/Algoritmo/TreePseudocode/TAED_Todo/Img/ejemplo2.png)

Y en ese caso debemos procesarlas teniendo en cuenta esta relacion:

**Secuencia principal**
   - **Oracion** -> Subsecuencia
   - **Palabra** -> Subsecuencia

**La relacion de jerarquia existe porque se identifica una relacion de pertenencia o inclusion entre sub secuencias. El inicio y fin de una sub secuencia determina el incio fin de otras sub secuencias incluido en esta.**

---

# Campos (UNIDAD 3)
Concepto de Campo: es un conjunto de caracteres capaz de suministrar una determinada informacion referida a un concepto. Un campo es la entidad logica mas pequena, consiste en un conjunto de byte que conforman un dato.

![Campos)](/Algoritmo/TreePseudocode/TAED_Todo/Img/Campos-Registros.png)








































