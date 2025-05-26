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

---

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

# -**ESTRUCTURA MANEJADA POR CONTADOR**:
- Esta estructura es un **Ciclo Definido**, pues se conoce de antemano la cantidad de veces que se iterara.
- El **final de bucle** esta controlado por un contador que define la cantidad de veces a iterar.
- La **variable contador**, se va incrementando automaticamente de acuerdo al incremento indicado. Si en lugar de incremento, debe ser decremento se indica con el signo "--". Si el incremento o decremento es diferente a 1, debe indicarse. Por ejemplo: Para f:= 1 hasta 100, 2. **No hace falta inicializar** la variable contador.
Pseudocodigo:
```bash
    PARA contador := inicializacion HASTA fin; incremento HACER
      <acciones>
    FIN_PARA
```
![Diferencias](/Algoritmo/TreePseudocode/TAED_Todo/Img/ComparacionEntreBucles.png)
--- 

## Comparacion entre estructuras Repetitivas





HACER LAS PREGUNTAS LUEGO PARA TENER TODO APRENDIDO AL FINAL DEL PDF










Secuencias: Es un conjunto de datos relacionados entre si:
| A | L | G | O | R | I | T | M | O | ... | FDS |
  1   2   3   4   5   6   7   8   9   ...    n


- **Existencia del primer elemento de la secuencia**: Acceso posterior a los demas elementos
















**Estructuras de Control**:













































